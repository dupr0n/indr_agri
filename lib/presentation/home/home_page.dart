import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/auth_bloc.dart';
import '../routes/router.gr.dart';

class HomePage extends StatelessWidget {
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
        body: Container(
          color: Colors.green,
          child: Text(
            'Successfully came to home page!',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
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
    );
  }
}
