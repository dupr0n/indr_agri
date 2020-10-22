// import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/platform_interface.dart';
// import 'package:webview_flutter/webview_flutter.dart';

import '../../application/auth/auth_bloc.dart';
import '../routes/router.gr.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) => ExtendedNavigator.of(context).replace(Routes.signInPage),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.green,
              child: Text(
                'Successfully came to home page!',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(height: 50),
            RaisedButton(
              onPressed: _launchUrl,
              child: Text(
                "Click here to launch URL",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
        // body: const WebView(
        //   initialUrl: "https://github.com/flutter/flutter/issues/730",
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.bloc<AuthBloc>().add(const AuthEvent.signedOut()),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(),
          child: ClipRRect(
            child: SizedBox(height: 50),
          ),
        ),
      ),
      // child: const WebView(
      //   initialUrl: "https://node-red-uvkpd-2020-08-26.eu-gb.mybluemix.net/ui/",
      //   initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
      // ),
    );
  }
}

_launchUrl() async {
  const url = "https://node-red-uvkpd-2020-08-26.eu-gb.mybluemix.net/ui/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
