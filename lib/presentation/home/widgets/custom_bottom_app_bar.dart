import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indr_agri/application/auth/auth_bloc.dart';
import '../../routes/router.gr.dart' as rte;

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
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
                onPressed: () async =>
                    Navigator.of(context).pushNamed(const rte.AboutUsRoute().path),
                tooltip: 'About Us',
              ),
              IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white.withOpacity(0.85),
                ),
                iconSize: 33,
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context, listen: false)
                      .add(const AuthEvent.signedOut());
                  Navigator.of(context).pushReplacementNamed(const rte.SignInPageRoute().path);
                },
                tooltip: 'Log out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
