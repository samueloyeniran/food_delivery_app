// import 'package:flutter/material.dart';

// class MyCurrentLocation extends StatelessWidget {
//   const MyCurrentLocation({super.key});

//   void openLocationSearchBox(BuildContext context) {
//     showAboutDialog(
//       context: context,
//       builder: (context){
//        return AlertDialog(
//         title: Text("Your Location..."),
//        )
//       }
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(25),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Deliver Now",
//             style: TextStyle(
//               color: Theme.of(context).colorScheme.inversePrimary,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               openLocationSearchBox(context);
//             },
//             child: Row(
//               children: [
//                 Text("No1 AJANLEKOKO STR"),
//                 Icon(Icons.keyboard_arrow_down_rounded)
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

/////////////////////////////////////////////////////
library;


import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Your Location"),
          content: const TextField(
            decoration: InputDecoration(
              hintText: "Search Address...",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              openLocationSearchBox(context); // Open the dialog on tap
            },
            child: Row(
              children: [
                const Text("No1 AJANLEKOKO STR"),
                SizedBox(
                  width: 10,
                ),
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
