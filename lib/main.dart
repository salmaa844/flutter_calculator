import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculator',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input = "";  // Store input

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "CLEAR") {
        input = "";
      } else {
        input += buttonText;
      }
    });
    print(input); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
            alignment: Alignment.centerRight,
            child: Text(
              input,
              style: const TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("7"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text("7",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("8"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "8",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("9"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "9",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("/"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "/",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Repeat for the rest of the rows
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("4"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "4",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("5"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("6"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "6",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("*"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "*",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("1"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("2"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("3"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("-"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("."),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              ".",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("0"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("CLEAR"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "CLEAR",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("+"),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
              Row(
                children: [Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () => buttonPressed("="),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "=",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
