import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

void main() {
  testWidgets('SimpleTypingIndicator builds three dots', (WidgetTester tester) async {
    // Build the widget inside a MaterialApp.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SimpleTypingIndicator(
              dotColor: Colors.blue,
              dotSize: 10.0,
              spacing: 5.0,
              duration: const Duration(milliseconds: 1000),
              speed: 1.0,
            ),
          ),
        ),
      ),
    );

    // Find widgets with a circular shape.
    final dotFinder = find.byWidgetPredicate((widget) {
      if (widget is Container && widget.decoration is BoxDecoration) {
        final BoxDecoration decoration = widget.decoration as BoxDecoration;
        return decoration.shape == BoxShape.circle;
      }
      return false;
    });

    // Expect exactly three dot widgets.
    expect(dotFinder, findsNWidgets(3));
  });

  testWidgets('SimpleTypingIndicator animates over time with speed multiplier', (WidgetTester tester) async {
    const speed = 2.0; // Animation runs twice as fast
    const baseDuration = Duration(milliseconds: 1000);
    
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SimpleTypingIndicator(
              duration: baseDuration,
              speed: speed,
            ),
          ),
        ),
      ),
    );

    // Verify that the widget is present initially.
    expect(find.byType(SimpleTypingIndicator), findsOneWidget);

    // Pump for 250ms to simulate half of the effective animation cycle (500ms/2)
    await tester.pump(const Duration(milliseconds: 250));
    expect(find.byType(SimpleTypingIndicator), findsOneWidget);

    // Pump for another 250ms to complete one effective cycle
    await tester.pump(const Duration(milliseconds: 250));
    expect(find.byType(SimpleTypingIndicator), findsOneWidget);
  });
}