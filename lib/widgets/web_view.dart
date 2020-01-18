
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatelessWidget {
  final String title;
  final String url;

  const WebViewWidget({Key key, this.title, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        automaticallyImplyLeading: false,
//        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//        leading: IconButton(
//            icon: Image.asset(
//              'images/ic_common_header_back.png',
//              width: 24,
//              height: 24,
//            ),
//            onPressed: () {
//              Navigator.pop(context);
//            }),
//
//        title: Text(title,
//            maxLines: 1,
//            overflow: TextOverflow.ellipsis,
//            style: const TextStyle(
//                wordSpacing: 1,
//                letterSpacing: 1,
//                fontSize: 16,
//                color: Colors.black)),
//      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (NavigationRequest request) {
          if (request.url.startsWith('https://')||request.url.startsWith('http://')) {
            return NavigationDecision.navigate;
          }
          return NavigationDecision.prevent;
        },
      ),),
    );
  }
}
