// // import 'package:flutter/material.dart';
// // import 'package:food_delivery_app/components/my_button.dart';
// // import 'package:food_delivery_app/components/my_textField.dart';

// // import 'home_Page.dart';

// // class LoginScreen extends StatefulWidget {
// //   final void Function()? onTap;

// //   const LoginScreen({super.key, this.onTap});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   void login() {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => HomePage(),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Theme.of(context).colorScheme.surface,
// //       body: Center(
// //         child: SingleChildScrollView(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               // Icon for login
// //               Icon(
// //                 Icons.lock_open_rounded,
// //                 size: 100,
// //                 color: Theme.of(context).colorScheme.inversePrimary,
// //               ),
// //               const SizedBox(height: 25),

// //               // App title
// //               Text(
// //                 "Food Delivery App",
// //                 style: TextStyle(
// //                   fontSize: 20,
// //                   fontWeight: FontWeight.bold,
// //                   color: Theme.of(context).colorScheme.inversePrimary,
// //                 ),
// //               ),
// //               const SizedBox(height: 25),

// //               // Email TextField
// //               MyTextfield(
// //                 controller: emailController,
// //                 hintText: "Email",
// //                 obscureText: false,
// //               ),
// //               const SizedBox(height: 15),

// //               // Password TextField
// //               MyTextfield(
// //                 controller: passwordController,
// //                 hintText: "Password",
// //                 obscureText: true,
// //               ),
// //               const SizedBox(height: 25),

// //               // Sign-In Button
// //               MyButton(
// //                 text: "Sign In",
// //                 onPressed: () {
// //                   // Add login validation logic here
// //                   debugPrint("Email: ${emailController.text}");
// //                   debugPrint("Password: ${passwordController.text}");
// //                 },
// //               ),
// //               const SizedBox(height: 25),

// //               // Navigation to Register Page
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     "Don't have an account?",
// //                     style: TextStyle(
// //                       color: Theme.of(context).colorScheme.inversePrimary,
// //                       fontSize: 16,
// //                     ),
// //                   ),
// //                   const SizedBox(width: 10),
// //                   GestureDetector(
// //                     onTap: widget.onTap,
// //                     child: Text(
// //                       "Register now",
// //                       style: TextStyle(
// //                         color: Theme.of(context).colorScheme.inversePrimary,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 16,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/components/my_button.dart';
// import 'package:food_delivery_app/components/my_textField.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key, this.onTap}) : super(key: key);

//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Icon for login
//               Icon(
//                 Icons.lock_open_rounded,
//                 size: 100,
//                 color: Theme.of(context).colorScheme.inversePrimary,
//               ),
//               const SizedBox(height: 25),

//               // App title
//               Text(
//                 "Food Delivery App",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Theme.of(context).colorScheme.inversePrimary,
//                 ),
//               ),
//               const SizedBox(height: 25),

//               // Email TextField
//               MyTextfield(
//                 controller: TextEditingController(), // Placeholder controller
//                 hintText: "Email",
//                 obscureText: false,
//               ),
//               const SizedBox(height: 15),

//               // Password TextField
//               MyTextfield(
//                 controller: TextEditingController(), // Placeholder controller
//                 hintText: "Password",
//                 obscureText: true,
//               ),
//               const SizedBox(height: 25),

//               // Sign-In Button
//               MyButton(
//                 text: "Sign In",
//                 onPressed: () {
//                   // Placeholder function
//                 },
//               ),
//               const SizedBox(height: 25),

//               // Navigation to Register Page
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Don't have an account?",
//                     style: TextStyle(
//                       color: Theme.of(context).colorScheme.inversePrimary,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   GestureDetector(
//                     onTap: onTap,
//                     child: Text(
//                       "Register now",
//                       style: TextStyle(
//                         color: Theme.of(context).colorScheme.inversePrimary,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////
library;

import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textField.dart';
import 'home_page.dart'; // Import the HomePage file

class LoginScreen extends StatelessWidget {
  final void Function()? onTap;

  const LoginScreen({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon for login
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),

              // App title
              Text(
                "Food Delivery App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              // Email TextField
              MyTextfield(
                controller: TextEditingController(),
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 15),

              // Password TextField
              MyTextfield(
                controller: TextEditingController(),
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),

              // Sign-In Button
              // InkWell(
              //   onTap: () {
              //     Get.to(() => HomePage(
              //           onTap: () {},
              //         ));
              //   },
              //child:
              MyButton(
                text: "Sign In",
                onTap: () {
                  print('I am pressing Sign In button');
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
              ),
              //  ),
              const SizedBox(height: 25),

              // Navigation to Register Page
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
