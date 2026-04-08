import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:eduguide/main.dart';

void main() {
  testWidgets('Navigation flow test: Home → Stream Choice', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Verify HomePage text is present
    expect(find.text("🎓 Welcome to EduGuide"), findsOneWidget);
    expect(find.text("Your personalized career navigator after 10th standard."), findsOneWidget);

    // Tap the "Start Now" button
    await tester.tap(find.text("Start Now"));
    await tester.pumpAndSettle();

    // Verify StreamChoicePage text is shown
    expect(find.text("Which stream of subjects captures your interest for Intermediate education?"), findsOneWidget);

    // Verify options are displayed
    expect(find.textContaining("MPC"), findsOneWidget);
    expect(find.textContaining("BiPC"), findsOneWidget);
    expect(find.textContaining("MEC"), findsOneWidget);
    expect(find.textContaining("CEC"), findsOneWidget);
  });
}
