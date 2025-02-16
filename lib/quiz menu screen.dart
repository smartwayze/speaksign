import 'package:flutter/material.dart';
import 'package:speaksigns/quizscreen(with%20solutions).dart';

class quizselectionscreen extends StatelessWidget {
  const quizselectionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // Increased height
          child: AppBar(
            backgroundColor: Colors.purple, // Purple AppBar
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30), // Bottom radius
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Colors.white), // White back icon
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 10), // Added space before title
              child: Text(
                'Select A Quiz',
                style: TextStyle(color: Colors.white), // White title text
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Spacer(),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz1()));
                        },
                        child: Text(
                          'Quiz 1',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz2()));
                        },
                        child: Text(
                          'Quiz 2',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz3()));
                        },
                        child: Text(
                          'Quiz 3',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz4()));
                        },
                        child: Text(
                          'Quiz 4',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz5()));
                        },
                        child: Text(
                          'Quiz 5',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz6()));
                        },
                        child: Text(
                          'Quiz 6',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer()
              ],
            ),
            Spacer()
          ],
        ));
  }
}
