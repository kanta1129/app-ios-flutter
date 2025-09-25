import 'package:flutter/material.dart';
import './screen/home_screen.dart';
import './screen/screen_a.dart';
import './screen/screen_b.dart';

// アプリケーションを起動する main 関数
void main() {
  runApp(const MyApp());
}

// アプリケーションのルート（最上位）ウィジェット
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3画面遷移アプリ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // 最初に表示する画面のルート名を指定
      initialRoute: '/',
      // ルート（画面遷移の対応表）を定義
      routes: {
        '/': (context) => const HomeScreen(), // '/' はホーム画面
        '/screenA': (context) => const ScreenA(), // '/screenA' は画面A
        '/screenB': (context) => const ScreenB(), // '/screenB' は画面B
      },
    );
  }
}
