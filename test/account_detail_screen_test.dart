import 'package:ch13_fintech_app/presentation/account_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('account detail screen should have a container',
      (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: AccountDetailScreen(),
    ));

    //Act
    // Finder container = find.byWidget(Container);
  });
}
