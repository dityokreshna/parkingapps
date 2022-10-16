// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:parkingapps/main.dart';
import 'package:parkingapps/viewmodels/viewmodels_validation.dart';

void main() {
  testWidgets('Regex Checking', (WidgetTester tester) async {
    await MyValidation().registerValidation(
        "Sarah123",
        "sarah123567812",
        "Aqd dw wq fwfqwfwq Sarah Melia",
        "0897122314",
        "sarah@gmail.com",
        "Jl. Madura, bablas angine",
        "2021-21-10",
        "sarah123");

    // // Build our app and trigger a frame.
    // await tester.pumpWidget(const MyApp());

    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
