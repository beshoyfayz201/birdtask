
import 'package:flutter/material.dart';

class PostIndecatorsRibbon extends StatelessWidget {
  const PostIndecatorsRibbon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
       padding:  EdgeInsets.symmetric(vertical: 12.0),
       child:  Row(
         children: [
           PostIndecator(
             icon: Icons.thumb_up_alt_outlined,
             txt: "15 Likes",
           ),
           PostIndecator(
             icon: Icons.mode_comment_outlined,
             txt: "24 Replies",
           ),
           PostIndecator(
             icon: Icons.remove_red_eye_outlined,
             txt: "24",
           )
         ],
       ),
     );
  }
}

class PostIndecator extends StatelessWidget {
  final String txt;
  final IconData icon;

  const PostIndecator({super.key, required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Text(
            txt,
            style: TextStyle(color: Colors.green.shade400),
          ),
          const SizedBox(width: 10),
          Icon(
            icon,
            color: Colors.green.shade400,
          )
        ],
      ),
    );
  }
}
