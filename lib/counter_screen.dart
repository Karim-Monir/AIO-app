import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;
  // 1. Constructor
  // 2. init state
  // 3. build

  // this is to initiate the state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: ()
                {
                  setState(()
                  {
                    counter--;
                    print(counter);
                  });

                },
                child: Text(
                  'MINUS',
                  ),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Text(
                  '$counter',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                setState(()
                {
                  counter++;
                  print(counter);
                });
              },
              child: Text(
                'PLUS',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
