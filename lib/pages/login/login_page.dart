import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Page')),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LoginTop(),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        Card(
                          child: TextFormField(
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: 'Username',
                                labelText: 'Username'),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Card(
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: 'Password',
                                labelText: 'Password'),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(onPressed: () {}, child: Text('Login'))
                      ],
                    ),
                  ]),
            ),
          ),
        ));
  }
}

class LoginTop extends StatelessWidget {
  const LoginTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          child: Icon(
            Icons.person_outline_rounded,
            size: 36,
          ),
          maxRadius: 30,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'Acente Gezinomi',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
