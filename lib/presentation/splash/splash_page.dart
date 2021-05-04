import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../routes/router.gr.dart' as rte;

class SplashPage extends StatefulWidget {
  const SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double> _growanimation = ProxyAnimation(), _position = ProxyAnimation();

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    _growanimation = Tween<double>(begin: 0, end: 200).animate(CurvedAnimation(
      parent: _controller!,
      curve: const Interval(0.0, 0.8, curve: Curves.decelerate),
    ));
    _position = Tween<double>(begin: MediaQuery.of(context).size.height / 2.2, end: 100)
        .animate(CurvedAnimation(
      parent: _controller!,
      curve: const Interval(0.3, 1.0, curve: Curves.easeInOut),
    ));
    await _controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) async {
            await Future.delayed(const Duration(seconds: 3));
            await Navigator.of(context).pushReplacementNamed(const rte.HomePageRoute().path);
            // await ExtendedNavigator.of(context)?.replace(const rte.HomePageRoute().path);
          },
          unauthenticated: (_) async {
            await Future.delayed(const Duration(seconds: 3));
            await Navigator.of(context).pushReplacementNamed(const rte.SignInPageRoute().path);
            // await ExtendedNavigator.of(context)?.replace(const rte.SignInPageRoute().path);
          },
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: _position.value),
            SizedBox(
              width: double.infinity,
              child: Hero(
                tag: 'leaf',
                child: Image.asset(
                  'assets/images/leaf.png',
                  width: _growanimation.value,
                  height: _growanimation.value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
