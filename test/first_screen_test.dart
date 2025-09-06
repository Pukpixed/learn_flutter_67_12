import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:learn_flutter_67_12/first_screen.dart';

void main() {
  testWidgets('Splash screen shows image, spinner, and navigates', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: FirstScreen()));

    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(SpinKitSpinningLines), findsOneWidget);

    await tester.pump(const Duration(seconds: 3));

    expect(find.text('This is the Second Screen'), findsOneWidget);
    expect(find.byType(SecondScreen), findsOneWidget);
  });
}
