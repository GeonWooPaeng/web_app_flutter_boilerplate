import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final url = Uri.parse("서버에 올라가 있는 url");

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //앱 실행할 준비가 완료될 때까지 기다린다.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(url); //webview할 url

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'webview_boilerplate',
        home: Scaffold(body: WebViewWidget(controller: controller)));
  }
}
