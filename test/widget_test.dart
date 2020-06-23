// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
//    await tester.pumpWidget(MyApp());
//
//    // Verify that our counter starts at 0.
//    expect(find.text('0'), findsOneWidget);
//    expect(find.text('1'), findsNothing);
//
//    // Tap the '+' icon and trigger a frame.
//    await tester.tap(find.byIcon(Icons.add));
//    await tester.pump();
//
//    // Verify that our counter has incremented.
//    expect(find.text('0'), findsNothing);
//    expect(find.text('1'), findsOneWidget);
    var myWidget = MyWidget.create2(3);
    print(myWidget.t);
    myWidget.myFun("1", a: "2");
    myWidget.myFun2("2222222", "2");

    var list2 = <int>[2,3];
    var bool = list2 is List;
    print(bool);
//    List<String> list = list2;
//    list.add("");

  });
}

class MyWidget {
  int num;
  static int x = 20;
  int y = 20;
  double z = 10;
  int t = 100 * x;
  int g;

  MyWidget.create(int x)
      : num = 10000,
        assert(x > 2) {
    this.num = x;
  }

  MyWidget.create2(this.num) : y = MyWidget2().num2 {
    z = sqrt(x);
  }

  MyWidget.create3() : this.create2(2);

  int myFun(String z, {String a, String b = "3"}) {
    print(z + a.toString() + b.toString());
  }

  int myFun2(String z, [String a, String b = "3"]) {
    print(z + null.toString() + null.toString());
//    MyWidget2 widget2;
//    print(widget2.toString());
  }
}

class MyWidget2 {
  int num2 = 10;
}

class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(title: Text("text"));
        },
        itemCount: 20);
  }
}
