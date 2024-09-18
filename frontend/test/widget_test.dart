import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/main.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Test if MyApp loads correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(MyApp());

    // Verifikasi apakah GetMaterialApp terload dengan benar
    expect(find.byType(GetMaterialApp), findsOneWidget);

    // Verifikasi apakah ada title 'ChatApp'
    final GetMaterialApp app = tester.widget(find.byType(GetMaterialApp));
    expect(app.title, 'ChatApp');

    // Verifikasi apakah initialRoute di-set ke '/'
    expect(app.initialRoute, '/');

    // Verifikasi apakah themeMode di-set ke system
    expect(app.themeMode, ThemeMode.system);
  });
}
