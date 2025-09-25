import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム画面'),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ここはホーム画面です．', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // '/screenA' という名前のルートに遷移する
                Navigator.pushNamed(context, '/screenA');
              },
              child: const Text('画面Aへ'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // '/screenB' という名前のルートに遷移する
                Navigator.pushNamed(context, '/screenB');
              },
              child: const Text('画面Bへ'),
            ),
          ],
        ),
      ),
    );
  }
}
