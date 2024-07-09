import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pb/cubit/counter_cubit.dart';
import 'package:pb/cubit/counter_state.dart';

void main() {
  runApp(PointsCounter(initialState: CounterAState()));
}

class PointsCounter extends StatelessWidget {
  final CounterState initialState;

  const PointsCounter({super.key, required this.initialState});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(initialState),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
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
                      '$teamApoints',
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .increment('A', 1);
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
                        BlocProvider.of<CounterCubit>(context)
                            .increment('A', 2);
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
                        BlocProvider.of<CounterCubit>(context)
                            .increment('A', 3);
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
                      '$teamBpoints',
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .increment('B', 1);
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
                        BlocProvider.of<CounterCubit>(context)
                            .increment('B', 2);
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
                        BlocProvider.of<CounterCubit>(context)
                            .increment('B', 2);
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
              onPressed: () {},
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
      );
    }, listener: (context, state) {
      if (state is CounterAState) {
        teamApoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
      } else {
        teamBpoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
      }
    });
  }
}
