import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    setState(() {});
    teamAPoints++;
  }

  void addOnePoint2() {
    setState(() {});
    teamBPoints++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 251, 151, 2),
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                      ),
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                      ),
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 189, 189, 189),
                    thickness: 2,
                    indent: 60,
                    endIndent: 40,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                      ),
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(130, 50),
                      ),
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(210, 50),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
