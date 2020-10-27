import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../routes/router.gr.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => ExtendedNavigator.of(context).replace(Routes.signInPage),
          orElse: () {},
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    tooltip: 'Go Back',
                    onPressed: () => ExtendedNavigator.of(context).pop(),
                  ),
                  const Text(
                    'About Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontFamily: 'DancingScript'),
                  ),
                  const Opacity(
                    opacity: 0.0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/leaf.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'We automate processes so that you can sit back and keep a track of your farm, from anywhere!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoLight',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
