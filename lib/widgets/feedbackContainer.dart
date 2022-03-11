import 'package:flutter/material.dart';

class FeedbackWidget {
  static Widget feedbackContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Text(
              "if you enjoyed your app experience, then give us ratings",
              style: TextStyle(color: Colors.white),
            ),
            MaterialButton(
              color: Colors.yellow,
              onPressed: () {},
              child: Text("Leave a review"),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 120,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
