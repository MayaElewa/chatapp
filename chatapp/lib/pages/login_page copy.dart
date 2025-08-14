import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:chatapp/widgets/text_field.dart';
import 'package:chatapp/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff314F6A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            Image.asset("assets/images/scholar.png"),

            //image place
            const SizedBox(
              height: 72,
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 270.0,
              ),
              child: Text(
                'Login Here',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            //  const TextField(
            //    decoration: InputDecoration(
            //      labelText: 'Username',
            //      border: OutlineInputBorder(
            //        borderSide: BorderSide(
            //          color: Color.fromARGB(255, 222, 220, 228)
            //        )
            //      ),
            //    ),
            //  ),
            const SizedBox(height: 16.0),
            /////////////////////
            const SizedBox(height: 16.0),
            //  ElevatedButton(
            //    onPressed: () {
            //      // Handle login logic here
            //    },
            // child: const Text('Login'),
            //  ),

            const Spacer(
              flex: 1,
            ),

            TextFieldcustom(
              hintText: 'username',
              obscureText: true,
              onchanged: (String value) {
                // Handle text change
                print('Text changed: $value');
              },
            ),
            const SizedBox(height: 5),
            //  const Spacer(flex: 1,),

            TextFieldcustom(
              hintText: 'Enter your text',
              obscureText: true,
              onchanged: (String value) {
                // Handle text change
                print('Text changed: $value');
              },
            ),
            const SizedBox(height: 10),
            CustumButton(
              title: 'Login',
            ),

            const SizedBox(height: 400),

            /// const Spacer(flex: 29,),
            Row(
              children: [
                const Center(
                  child: Padding(
                    //padding: EdgeInsets.all(8.0),
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 022.0,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'RegisterPage');
                  },
                  child: const Text(
                    " REGISTER",
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 63, 219),
                      fontWeight: FontWeight.bold,
                      fontSize: 022.0,
                    ),
                  ),
                ),
                // Spacer(flex: 1,),
                // SizedBox(height: 20.0)
              ],
            ),
            const SizedBox(height: 10),
          ],
          //const Text('Login'),
        ),
        //   Text('Please log in'),
      ),
    );
  }
}
