// server.js
import express from "express";
import dotenv from "dotenv";
import OpenAI from "openai";

dotenv.config(); // Load .env file

const app = express();
const PORT = 5000;

// ✅ Middleware to parse JSON
app.use(express.json());

// ✅ Initialize OpenAI with API Key
const openai = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY,
});

// ✅ Health check route
app.get("/", (req, res) => {
  res.send("🚀 EduGuide backend is running!");
});

// ✅ Roadmap generation route
app.post("/roadmap", async (req, res) => {
  try {
    const { goal } = req.body;

    if (!goal) {
      return res.status(400).json({ error: "Goal is required" });
    }

    // Customize prompt if it's a stream
    let userPrompt;
    const streams = ["MPC", "BIPC", "CEC", "MEC"];

    if (streams.includes(goal.toUpperCase())) {
      userPrompt = `Give a detailed step-by-step roadmap for a student who chooses the ${goal} stream in Intermediate (11th & 12th). 
      Explain subjects, key topics, higher education paths, and possible career options.`;
    } else {
      userPrompt = `Create a step-by-step learning roadmap for becoming a ${goal}.`;
    }

    const completion = await openai.chat.completions.create({
      model: "gpt-4o-mini",
      messages: [
        { role: "system", content: "You are an AI career and education guide." },
        { role: "user", content: userPrompt },
      ],
    });

    res.json({ roadmap: completion.choices[0].message.content });
  } catch (err) {
    console.error("❌ Error generating roadmap:", err);
    res.status(500).json({ error: "Something went wrong" });
  }
});

// ✅ Bind to all IPs so Flutter can connect
app.listen(PORT, "0.0.0.0", () => {
  console.log(`🚀 Server running on http://0.0.0.0:${PORT}`);
});
