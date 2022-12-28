part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // adding form text field
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // adding to content page
// form or textfield
  Widget contentEmail() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        controller: usernameController,
        decoration: InputDecoration(
          labelText: 'Masukan username anda',
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          hintText: 'username',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

  Widget contentPassword() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
        top: 15,
      ),
      child: TextField(
        obscureText: _obscureText,
        controller: passwordController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelText: 'Masukan password anda',
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          hintText: 'Password',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
          suffix: InkWell(
            onTap: _toggle,
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              size: 15.0,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }

  Widget headerForm() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: const Text(
        'Masuk',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget footerForm() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: const Text(
          'Lupa Password?',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // adding header
  Widget header() {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          right: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'My Tel-U Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Satu Aplikasi untuk kebutuhanmu di\nJl. Telekomunikasi No.. 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // adding content
  Widget content() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerForm(),
              contentEmail(),
              contentPassword(),
              footerForm(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }

  // adding to footer page
  // button
  Widget footer() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      elevation: 10,
      shape: StadiumBorder(),
    );
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
            'Masuk',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
