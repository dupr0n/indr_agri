import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../routes/router.gr.dart' as rte;

class AboutUs extends StatelessWidget {
  const AboutUs();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) async =>
              Navigator.of(context).pushReplacementNamed(const rte.SignInPageRoute().path),
          orElse: () {},
        );
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pop(),
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.home),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 25),
              const SizedBox(
                height: 100,
                child: Text(
                  'About Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50, fontFamily: 'DancingScript'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Hero(
                  tag: 'leaf',
                  child: Image.asset(
                    'assets/images/leaf.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "\n\nWelcome to AgrIndoor!\n\nYour one-stop destination to keep a track of everything related to your farm!\n\nWe automate processes so that you can sit back and keep track of your farm from anywhere... \n\nHere's a guide to what you can access through the app:\n\nA view of the cloud where all sensor data related to the farm is stored. \n\n\nYour farm's status with regard to the parameters being sensed.\n\nSit back and allow us to monitor your farm while you're away!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'RobotoLight',
                    // fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
