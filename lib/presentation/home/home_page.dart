import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
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
        resizeToAvoidBottomInset: true,
        body: WebView(
          initialUrl: "https://node-red-uvkpd-2020-08-26.eu-gb.mybluemix.net/ui/",
          onWebViewCreated: (_) async {
            await _showLeaf(context);
          },
          javascriptMode: JavascriptMode.unrestricted,
          initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
          gestureNavigationEnabled: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () => _showLeaf(context),
          child: Image.asset(
            'assets/images/leaf.png',
            excludeFromSemantics: true,
            height: 40,
            width: 40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFF4A782E),
          shape: const CircularNotchedRectangle(),
          child: ClipRRect(
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.white.withOpacity(0.85),
                    ),
                    iconSize: 33,
                    onPressed: () => ExtendedNavigator.of(context).pushAboutUs(),
                    tooltip: 'About Us',
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.white.withOpacity(0.85),
                    ),
                    iconSize: 33,
                    onPressed: () => context.bloc<AuthBloc>().add(const AuthEvent.signedOut()),
                    tooltip: 'Log out',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showLeaf(BuildContext ctx) async {
  await showDialog(
    barrierColor: const Color(0xFF2E2E2E),
    barrierDismissible: true,
    context: ctx,
    builder: (ctx) => Column(
      children: [
        const SizedBox(height: 100),
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/leaf.png',
            width: 200,
            height: 200,
          ),
        ),
      ],
    ),
  );
}
