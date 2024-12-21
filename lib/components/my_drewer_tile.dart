// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyDrewerTile extends StatelessWidget {
  final String text;
  final Icon icon;
  final void Function()? onTap;

  const MyDrewerTile({
    super.key,
    required this.icon,
    required this.text,
    this.onTap, required IconData iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 30),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        
        onTap: onTap,
      ),
    );
  }
}
