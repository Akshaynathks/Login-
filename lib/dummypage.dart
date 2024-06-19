import 'package:flutter/material.dart';

class EachUsers extends StatelessWidget {
  final String name;
  final String profilepic;

   const EachUsers({super.key, required this.name, required this.profilepic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(profilepic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const SafeArea(
        child: Center(
        ),
      ),
    );
  }
}
