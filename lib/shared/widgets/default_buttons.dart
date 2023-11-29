import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NEW THREAD",
              style: TextStyle(
                  color: Color.fromRGBO(60, 60, 60, 1),
                  fontWeight: FontWeight.w700),
            ),
          ],
        ));
  }
}
