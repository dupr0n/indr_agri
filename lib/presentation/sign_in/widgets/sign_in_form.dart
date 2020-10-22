import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../routes/router.gr.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> with TickerProviderStateMixin {
  static const animationTime = 3;
  static const transitionTime = 1;
  AnimationController _startController, _transitionController;
  Animation<double> _leaf;
  Animation<double> _title, _email, _password, _signIn, _register, _google;
  List<double> td = [0.2, 0.35, 0.5, 0.65, 0.75, 0.85, 1.0];

  Animation<double> fadeInterval(double start, double end) =>
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _startController,
        curve: Interval(start, end),
      ));
  Animation<double> fade(double start, double end) =>
      Tween<double>(begin: start, end: end).animate(_transitionController);

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    _startController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: animationTime),
    )..addListener(() {
        setState(() {});
      });
    _transitionController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: transitionTime),
    )..addListener(() {
        setState(() {});
      });
    _title = fadeInterval(td[0], td[1]);
    _email = fadeInterval(td[1], td[2]);
    _password = fadeInterval(td[2], td[3]);
    _signIn = fadeInterval(td[3], td[4]);
    _register = fadeInterval(td[4], td[5]);
    _google = fadeInterval(td[5], td[6]);
    _startController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _leaf == null ? 1.0 : _leaf.value,
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          final signInbloc = context.bloc<SignInFormBloc>();
          return Form(
            autovalidateMode:
                state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                const SizedBox(height: 15),
                Opacity(
                  opacity: _title.value,
                  child: const Text(
                    'Authentication',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontFamily: 'DancingScript'),
                  ),
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/images/leaf.png',
                  height: 200,
                ),
                const SizedBox(height: 35),
                Opacity(
                  opacity: _email.value,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    autocorrect: false,
                    onChanged: (value) => signInbloc.add(SignInFormEvent.emailChanged(value)),
                    //#         Using [context.bloc<SignInFormBloc>().state] instead of state, as state contains previous value
                    validator: (_) => signInbloc.state.emailAddress.value.fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Opacity(
                  opacity: _password.value,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) => signInbloc.add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => signInbloc.state.password.value.fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Opacity(
                        opacity: _signIn.value,
                        child: FlatButton(
                          onPressed: () => signInbloc
                              .add(const SignInFormEvent.signInWithEmailAndPasswordPressed()),
                          child: const Text('SIGN IN'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Opacity(
                        opacity: _register.value,
                        child: FlatButton(
                          onPressed: () => signInbloc
                              .add(const SignInFormEvent.registerWithEmailAndPasswordPressed()),
                          child: const Text('REGISTER'),
                        ),
                      ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: _google.value,
                  child: RaisedButton(
                    onPressed: () =>
                        signInbloc.add(const SignInFormEvent.signInWithGooglePressed()),
                    color: Colors.lightBlue,
                    child: const Text(
                      'SIGN IN WITH GOOGLE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                if (state.isSubmitting) ...[const LinearProgressIndicator()]
              ],
            ),
          );
        },
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server Error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPassword: (_) => 'Invalid email and/or password',
                  ),
                ).show(context);
              },
              (_) async {
                _leaf = Tween<double>(begin: 1.0, end: 0.0).animate(_transitionController);
                _transitionController.forward();
                await Future.delayed(const Duration(milliseconds: 1000 * transitionTime + 250));
                ExtendedNavigator.of(context).replace(Routes.homePage);
                context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _startController.dispose();
    _transitionController.dispose();
    super.dispose();
  }
}
