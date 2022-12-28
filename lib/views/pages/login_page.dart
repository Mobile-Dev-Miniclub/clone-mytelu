part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // adding to footer page
  // button
  Widget footer() {
    final ButtonStyle style = ElevatedButton.styleFrom();
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 2.0,
        right: 2.0,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: style,
          onPressed: () {
            Navigator.pushNamed(
              context,
              DetailPage.routeName,
              arguments: ScreenArguments(
                'Extract Arguments Screen',
                'This message is extracted in the build method.',
              ),
            );
          },
          child: const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login Page'),
          footer(),
        ],
      ),
    );
  }
}
