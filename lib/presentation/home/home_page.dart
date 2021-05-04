import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../routes/router.gr.dart' as rte;

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    final firstEndPoint = Offset(size.width * 0.5, size.height - 30);
    final firstControlPoint = Offset(size.width * 0.25, size.height - 60);
    path.quadraticBezierTo(
        firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    final secondEndPoint = Offset(size.width, size.height - 60);
    final secondControlPoint = Offset(size.width * 0.75, size.height - 10);
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) async =>
                  Navigator.of(context).pushReplacementNamed(const rte.SignInPageRoute().path),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        // body: WebView(
        //   initialUrl: "https://node-red-zjjxy-2021-02-25.eu-gb.mybluemix.net/ui/",
        //   onWebViewCreated: (_) async {
        //     await _showLeaf(context);
        //   },
        //   javascriptMode: JavascriptMode.unrestricted,
        //   initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
        //   gestureNavigationEnabled: true,
        // ),
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
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
              SizedBox(
                height: 300,
                child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Theme.of(context).primaryColor, Colors.green])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/indr_agri.jpg",
                            width: 200,
                            height: 120,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "AgrIndoor",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DancingScript',
                                fontWeight: FontWeight.bold,
                              ),
                              textScaleFactor: 4,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey[100],
                  type: MaterialType.card,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
                  child: TextField(
                    controller: _controller,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0)),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE0E0E0)),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      filled: true,
                      prefixIcon: const InkWell(
                        child: Icon(Icons.search, color: Colors.grey),
                      ),
                      suffixIcon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "to be implemented...",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 200),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 12),
              //   margin: const EdgeInsets.only(bottom: 6),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       Text(fetchingStories ? "Fetching stories..." : ""),
              //       if (fetchingStories)
              //         Container(
              //           width: 18,
              //           margin: const EdgeInsets.only(left: 12),
              //           height: 18,
              //           alignment: const Alignment(0, 0),
              //           child: const CircularProgressIndicator(strokeWidth: 2),
              //         )
              //       else
              //         Container()
              //     ],
              //   ),
              // )
            ]),
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
