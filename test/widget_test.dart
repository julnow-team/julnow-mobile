import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:julnow_mobile/app.dart';

void main() {
  testWidgets('Home screen shows the app name', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: JulNowApp()));
    await tester.pumpAndSettle();

    expect(find.text('JulNow'), findsOneWidget);
  });
}