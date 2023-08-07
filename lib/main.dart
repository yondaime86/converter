import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.orangeAccent,
      ),
      home: const MyHomePage(title: 'Конвертер'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Wrap(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.316, height: MediaQuery.of(context).size.width * 0.316,
                    child: ElevatedButton(
                      onPressed:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (
                              context) => const Length()),
                        );
                      },
                      child: Text(
                        'Длина',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(

                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.316, height: MediaQuery.of(context).size.width * 0.316,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Weight()),
                        );
                      },
                      child: Text(
                        'Масса',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(

                      ),
                    ),
                  ),
                  SizedBox(width: 5, height: MediaQuery.of(context).size.width * 0.33),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.316, height: MediaQuery.of(context).size.width * 0.316,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Temperature()),
                        );
                      },
                      child: Text(
                        'Температура',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(

                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.316, height: MediaQuery.of(context).size.width * 0.316,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AmountOfInformation()),
                        );
                      },
                      child: Text(
                        'Количество информации',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(

                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.316, height: MediaQuery.of(context).size.width * 0.316,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Square()),
                        );
                      },
                      child: Text(
                        'Площадь',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(

                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.316, height: MediaQuery.of(context).size.width * 0.316,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Currency()),
                        );
                      },
                      child: Text(
                        'Валюта',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(

                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Length extends StatefulWidget {
  const Length({ super.key });

  @override
  State<Length> createState() => _LengthState();
}

class _LengthState extends State<Length> {

  List<String> values = ['мм', 'см', 'дм', 'м', 'км'];
  var selectedValue;
  var selectedValue1;
  var text;
  var text2;

  @override
  initState() {
    super.initState();
    text = '';
    text2 = '';
    selectedValue = values.first;
    selectedValue1 = values.first;
  }

  void _Conversion() {
    var num;
    if(text != '') {
      num = double.parse(text);
      if (selectedValue == 'мм' && selectedValue1 == 'мм')
        this.text2 = text;
      if (selectedValue == 'мм' && selectedValue1 == 'см')
        this.text2 = (num / 10).toString();
      if (selectedValue == 'мм' && selectedValue1 == 'дм')
        this.text2 = (num / 100).toString();
      if (selectedValue == 'мм' && selectedValue1 == 'м')
        this.text2 = (num / 1000).toString();
      if (selectedValue == 'мм' && selectedValue1 == 'км')
        this.text2 = (num / 1000000).toString();
      if (selectedValue == 'см' && selectedValue1 == 'мм')
        this.text2 = (num * 10).toString();
      if (selectedValue == 'см' && selectedValue1 == 'см')
        this.text2 = text;
      if (selectedValue == 'см' && selectedValue1 == 'дс')
        this.text2 = (num / 10).toString();
      if (selectedValue == 'см' && selectedValue1 == 'м')
        this.text2 = (num / 100).toString();
      if (selectedValue == 'см' && selectedValue1 == 'км')
        this.text2 = (num / 1000).toString();
      if (selectedValue == 'дм' && selectedValue1 == 'мм')
        this.text2 = (num * 100).toString();
      if (selectedValue == 'дм' && selectedValue1 == 'см')
        this.text2 = (num * 10).toString();
      if (selectedValue == 'дм' && selectedValue1 == 'дм')
        this.text2 = text;
      if (selectedValue == 'дм' && selectedValue1 == 'м')
        this.text2 = (num / 10).toString();
      if (selectedValue == 'дм' && selectedValue1 == 'км')
        this.text2 = (num / 10000).toString();
      if (selectedValue == 'м' && selectedValue1 == 'мм')
        this.text2 = (num * 1000).toString();
      if (selectedValue == 'м' && selectedValue1 == 'см')
        this.text2 = (num * 100).toString();
      if (selectedValue == 'м' && selectedValue1 == 'дм')
        this.text2 = (num * 10).toString();
      if (selectedValue == 'м' && selectedValue1 == 'м')
        this.text2 = text;
      if (selectedValue == 'м' && selectedValue1 == 'км')
        this.text2 = (num / 1000).toString();
      if (selectedValue == 'км' && selectedValue1 == 'мм')
        this.text2 = (num * 1000000).toString();
      if (selectedValue == 'км' && selectedValue1 == 'см')
        this.text2 = (num * 100000).toString();
      if (selectedValue == 'км' && selectedValue1 == 'дм')
        this.text2 = (num * 10000).toString();
      if (selectedValue == 'км' && selectedValue1 == 'м')
        this.text2 = (num * 1000).toString();
      if (selectedValue == 'км' && selectedValue1 == 'км')
        this.text2 = text;
    }
  }

  void _Number(num) {
    var z = '0';
    if (num == '-') {
      if (text.substring(0, 1) != '-')
        this.text = '-' + text;
      else if (text.substring(0, 1) == '-')
        this.text = text.substring(1, text.length);
    }
    if (num == '.') {
      if (text != '' && text.length < 9) {
        List<String> x = text.split('');
        for (var i = 0; i < x.length; i++) {
          if (x[i] == '.')
            z = '1';
        }
        if (z == '0')
          this.text += '.';
      }
    }
    if (num != '.' && num != '-' && text.length < 10)
      this.text = text + num;
  }

  void _Change() {
    var x = selectedValue1;
    selectedValue1 = selectedValue;
    selectedValue = x;
  }

  void _Delete() {
    if (text != '')
      this.text = text.substring(0, text.length - 1);
  }

  void _Clear() {
    this.text = '';
    this.text2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Длина'),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('1'))},
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('2'))},
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('3'))},
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Clear())},
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('4'))},
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('5'))},
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('6'))},
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Delete())},
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('7'))},
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('8'))},
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('9'))},
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Change())},
                      child: Icon(
                        Icons.unfold_more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('-'))},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('0'))},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('.'))},
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Conversion())},
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Weight extends StatefulWidget {
  const Weight({ super.key });

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {

  List<String> values = ['г', 'кг', 'т'];
  var selectedValue;
  var selectedValue1;
  var text;
  var text2;

  @override
  initState() {
    super.initState();
    text = '';
    text2 = '';
    selectedValue = values.first;
    selectedValue1 = values.first;
  }

  void _Conversion() {
    var num;
    if(text != '') {
      num = double.parse(text);
      if (selectedValue == 'г' && selectedValue1 == 'г')
        this.text2 = text;
      if (selectedValue == 'г' && selectedValue1 == 'кг')
        this.text2 = (num / 1000).toString();
      if (selectedValue == 'г' && selectedValue1 == 'т')
        this.text2 = (num / 1000000).toString();
      if (selectedValue == 'кг' && selectedValue1 == 'г')
        this.text2 = (num * 1000).toString();
      if (selectedValue == 'кг' && selectedValue1 == 'кг')
        this.text2 = text;
      if (selectedValue == 'кг' && selectedValue1 == 'т')
        this.text2 = (num / 1000).toString();
      if (selectedValue == 'т' && selectedValue1 == 'г')
        this.text2 = (num * 1000000).toString();
      if (selectedValue == 'т' && selectedValue1 == 'кг')
        this.text2 = (num * 1000).toString();
      if (selectedValue == 'т' && selectedValue1 == 'т')
        this.text2 = text;
    }
  }

  void _Number(num) {
    var z = '0';
    if (num == '-') {
      if (text.substring(0, 1) != '-')
        this.text = '-' + text;
      else if (text.substring(0, 1) == '-')
        this.text = text.substring(1, text.length);
    }
    if (num == '.') {
      if (text != '' && text.length < 9) {
        List<String> x = text.split('');
        for (var i = 0; i < x.length; i++) {
          if (x[i] == '.')
            z = '1';
        }
        if (z == '0')
          this.text += '.';
      }
    }
    if (num != '.' && num != '-' && text.length < 10)
      this.text = text + num;
  }

  void _Change() {
    var x = selectedValue1;
    selectedValue1 = selectedValue;
    selectedValue = x;
  }

  void _Delete() {
    if (text != '')
      this.text = text.substring(0, text.length - 1);
  }

  void _Clear() {
    this.text = '';
    this.text2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Масса'),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('1'))},
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('2'))},
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('3'))},
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Clear())},
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('4'))},
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('5'))},
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('6'))},
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Delete())},
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('7'))},
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('8'))},
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('9'))},
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Change())},
                      child: Icon(
                        Icons.unfold_more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('-'))},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('0'))},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('.'))},
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Conversion())},
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Temperature extends StatefulWidget {
  const Temperature({ super.key });

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {

  List<String> values = ['°C', '°F', 'K'];
  var selectedValue;
  var selectedValue1;
  var text;
  var text2;

  @override
  initState() {
    super.initState();
    text = '';
    text2 = '';
    selectedValue = values.first;
    selectedValue1 = values.first;
  }

  void _Conversion() {
    var num;
    if(text != '') {
      num = double.parse(text);
      if (selectedValue == 'C' && selectedValue1 == 'C')
        this.text2 = text;
      if (selectedValue == 'C' && selectedValue1 == 'F')
        this.text2 = ((num * 1.8) + 32).toString();
      if (selectedValue == 'C' && selectedValue1 == 'K')
        this.text2 = (num + 273.15).toString();
      if (selectedValue == 'F' && selectedValue1 == 'C')
        this.text2 = ((num - 32) / 1.8).toString();
      if (selectedValue == 'F' && selectedValue1 == 'F')
        this.text2 = text;
      if (selectedValue == 'F' && selectedValue1 == 'K')
        this.text2 = ((num + 459) / 1.8).toString();
      if (selectedValue == 'K' && selectedValue1 == 'C')
        this.text2 = (num - 273.15).toString();
      if (selectedValue == 'K' && selectedValue1 == 'F')
        this.text2 = ((num * 1.8) - 459).toString();
      if (selectedValue == 'K' && selectedValue1 == 'K')
        this.text2 = text;
    }
  }

  void _Number(num) {
    var z = '0';
    if (num == '-') {
      if (text.substring(0, 1) != '-')
        this.text = '-' + text;
      else if (text.substring(0, 1) == '-')
        this.text = text.substring(1, text.length);
    }
    if (num == '.') {
      if (text != '' && text.length < 9) {
        List<String> x = text.split('');
        for (var i = 0; i < x.length; i++) {
          if (x[i] == '.')
            z = '1';
        }
        if (z == '0')
          this.text += '.';
      }
    }
    if (num != '.' && num != '-' && text.length < 10)
      this.text = text + num;
  }

  void _Change() {
    var x = selectedValue1;
    selectedValue1 = selectedValue;
    selectedValue = x;
  }

  void _Delete() {
    if (text != '')
      this.text = text.substring(0, text.length - 1);
  }

  void _Clear() {
    this.text = '';
    this.text2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Температура'),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('1'))},
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('2'))},
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('3'))},
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Clear())},
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('4'))},
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('5'))},
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('6'))},
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Delete())},
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('7'))},
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('8'))},
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('9'))},
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Change())},
                      child: Icon(
                        Icons.unfold_more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('-'))},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('0'))},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('.'))},
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Conversion())},
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AmountOfInformation extends StatefulWidget {
  const AmountOfInformation({ super.key });

  @override
  State<AmountOfInformation> createState() => _AmountOfInformationState();
}

class _AmountOfInformationState extends State<AmountOfInformation> {

  List<String> values = ['Бит', 'Байт', 'Мбайт', 'Гбайт'];
  var selectedValue;
  var selectedValue1;
  var text;
  var text2;

  @override
  initState() {
    super.initState();
    text = '';
    text2 = '';
    selectedValue = values.first;
    selectedValue1 = values.first;
  }

  void _Conversion() {
    var num;
    if(text != '') {
      num = double.parse(text);
      if (selectedValue == 'Бит' && selectedValue1 == 'Бит')
        this.text2 = text;
      if (selectedValue == 'Бит' && selectedValue1 == 'Байт')
        this.text2 = (num / 8).toString();
      if (selectedValue == 'Бит' && selectedValue1 == 'Мбайт')
        this.text2 = (num / 8388608).toString();
      if (selectedValue == 'Бит' && selectedValue1 == 'Гбайт')
        this.text2 = (num / 8589934592).toString();
      if (selectedValue == 'Байт' && selectedValue1 == 'Бит')
        this.text2 = (num * 8).toString();
      if (selectedValue == 'Байт' && selectedValue1 == 'Байт')
        this.text2 = text;
      if (selectedValue == 'Байт' && selectedValue1 == 'Мбайт')
        this.text2 = (num / 1048576).toString();
      if (selectedValue == 'Байт' && selectedValue1 == 'Гбайт')
        this.text2 = (num / 1073741824).toString();
      if (selectedValue == 'Мбайт' && selectedValue1 == 'Бит')
        this.text2 = (num * 8388608).toString();
      if (selectedValue == 'Мбайт' && selectedValue1 == 'Байт')
        this.text2 = (num * 1048576).toString();
      if (selectedValue == 'Мбайт' && selectedValue1 == 'Мбайт')
        this.text2 = text;
      if (selectedValue == 'Мбайт' && selectedValue1 == 'Гбайт')
        this.text2 = (num / 1024).toString();
      if (selectedValue == 'Гбайт' && selectedValue1 == 'Бит')
        this.text2 = (num * 8589934592).toString();
      if (selectedValue == 'Гбайт' && selectedValue1 == 'Байт')
        this.text2 = (num * 1073741824).toString();
      if (selectedValue == 'Гбайт' && selectedValue1 == 'Мбайт')
        this.text2 = (num * 1024).toString();
      if (selectedValue == 'Гбайт' && selectedValue1 == 'Гбайт')
        this.text2 = text;
    }
  }

  void _Number(num) {
    var z = '0';
    if (num == '-') {
      if (text.substring(0, 1) != '-')
        this.text = '-' + text;
      else if (text.substring(0, 1) == '-')
        this.text = text.substring(1, text.length);
    }
    if (num == '.') {
      if (text != '' && text.length < 9) {
        List<String> x = text.split('');
        for (var i = 0; i < x.length; i++) {
          if (x[i] == '.')
            z = '1';
        }
        if (z == '0')
          this.text += '.';
      }
    }
    if (num != '.' && num != '-' && text.length < 10)
      this.text = text + num;
  }

  void _Change() {
    var x = selectedValue1;
    selectedValue1 = selectedValue;
    selectedValue = x;
  }

  void _Delete() {
    if (text != '')
      this.text = text.substring(0, text.length - 1);
  }

  void _Clear() {
    this.text = '';
    this.text2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Количество информации'),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('1'))},
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('2'))},
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('3'))},
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Clear())},
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('4'))},
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('5'))},
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('6'))},
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Delete())},
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('7'))},
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('8'))},
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('9'))},
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Change())},
                      child: Icon(
                        Icons.unfold_more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('-'))},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('0'))},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('.'))},
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Conversion())},
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Square extends StatefulWidget {
  const Square({ super.key });

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {

  List<String> values = ['кв.км', 'кв.м', 'кв.см', 'га'];
  var selectedValue;
  var selectedValue1;
  var text;
  var text2;

  @override
  initState() {
    super.initState();
    text = '';
    text2 = '';
    selectedValue = values.first;
    selectedValue1 = values.first;
  }

  void _Conversion() {
    var num;
    if(text != '') {
      num = double.parse(text);
      if (selectedValue == 'кв.км' && selectedValue1 == 'кв.км')
        this.text2 = text;
      if (selectedValue == 'кв.км' && selectedValue1 == 'кв.м')
        this.text2 = (num * 1000000).toString();
      if (selectedValue == 'кв.км' && selectedValue1 == 'кв.см')
        this.text2 = (num * 10000000000).toString();
      if (selectedValue == 'кв.км' && selectedValue1 == 'га')
        this.text2 = (num * 100).toString();
      if (selectedValue == 'кв.м' && selectedValue1 == 'кв.км')
        this.text2 = (num / 1000000).toString();
      if (selectedValue == 'кв.м' && selectedValue1 == 'кв.м')
        this.text2 = text;
      if (selectedValue == 'кв.м' && selectedValue1 == 'кв.см')
        this.text2 = (num * 10000).toString();
      if (selectedValue == 'кв.м' && selectedValue1 == 'га')
        this.text2 = (num / 10000).toString();
      if (selectedValue == 'кв.см' && selectedValue1 == 'кв.км')
        this.text2 = (num / 10000000000).toString();
      if (selectedValue == 'кв.см' && selectedValue1 == 'кв.м')
        this.text2 = (num / 10000).toString();
      if (selectedValue == 'кв.см' && selectedValue1 == 'кв.см')
        this.text2 = text;
      if (selectedValue == 'кв.см' && selectedValue1 == 'га')
        this.text2 = (num / 100000000).toString();
      if (selectedValue == 'га' && selectedValue1 == 'кв.км')
        this.text2 = (num / 100).toString();
      if (selectedValue == 'га' && selectedValue1 == 'кв.м')
        this.text2 = (num * 10000).toString();
      if (selectedValue == 'га' && selectedValue1 == 'кв.см')
        this.text2 = (num * 100000000).toString();
      if (selectedValue == 'га' && selectedValue1 == 'га')
        this.text2 = text;
    }
  }

  void _Number(num) {
    var z = '0';
    if (num == '-') {
      if (text.substring(0, 1) != '-')
        this.text = '-' + text;
      else if (text.substring(0, 1) == '-')
        this.text = text.substring(1, text.length);
    }
    if (num == '.') {
      if (text != '' && text.length < 9) {
        List<String> x = text.split('');
        for (var i = 0; i < x.length; i++) {
          if (x[i] == '.')
            z = '1';
        }
        if (z == '0')
          this.text += '.';
      }
    }
    if (num != '.' && num != '-' && text.length < 10)
      this.text = text + num;
  }

  void _Change() {
    var x = selectedValue1;
    selectedValue1 = selectedValue;
    selectedValue = x;
  }

  void _Delete() {
    if (text != '')
      this.text = text.substring(0, text.length - 1);
  }

  void _Clear() {
    this.text = '';
    this.text2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Площадь'),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('1'))},
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('2'))},
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('3'))},
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Clear())},
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('4'))},
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('5'))},
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('6'))},
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Delete())},
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('7'))},
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('8'))},
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('9'))},
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Change())},
                      child: Icon(
                        Icons.unfold_more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('-'))},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('0'))},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('.'))},
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Conversion())},
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Currency extends StatefulWidget {
  const Currency({ super.key });

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {

  List<String> values = ['Рубль', 'Доллар', 'Евро', 'Тенге'];
  var selectedValue;
  var selectedValue1;
  var text;
  var text2;

  @override
  initState() {
    super.initState();
    text = '';
    text2 = '';
    selectedValue = values.first;
    selectedValue1 = values.first;
  }

  void _Conversion() {
    var num;
    if(text != '') {
      num = double.parse(text);
      if (selectedValue == 'Рубль' && selectedValue1 == 'Рубль')
        this.text2 = text;
      if (selectedValue == 'Рубль' && selectedValue1 == 'Доллар')
        this.text2 = (num / 70).toString();
      if (selectedValue == 'Рубль' && selectedValue1 == 'Евро')
        this.text2 = (num / 75).toString();
      if (selectedValue == 'Рубль' && selectedValue1 == 'Тенге')
        this.text2 = (num * 6.5).toString();
      if (selectedValue == 'Доллар' && selectedValue1 == 'Рубль')
        this.text2 = (num * 70).toString();
      if (selectedValue == 'Доллар' && selectedValue1 == 'Доллар')
        this.text2 = text;
      if (selectedValue == 'Доллар' && selectedValue1 == 'Евро')
        this.text2 = (num * 0.9).toString();
      if (selectedValue == 'Доллар' && selectedValue1 == 'Тенге')
        this.text2 = (num * 461.3).toString();
      if (selectedValue == 'Евро' && selectedValue1 == 'Рубль')
        this.text2 = (num * 75).toString();
      if (selectedValue == 'Евро' && selectedValue1 == 'Доллар')
        this.text2 = (num / 0.9).toString();
      if (selectedValue == 'Евро' && selectedValue1 == 'Евро')
        this.text2 = text;
      if (selectedValue == 'Евро' && selectedValue1 == 'Тенге')
        this.text2 = (num * 501.6).toString();
      if (selectedValue == 'Тенге' && selectedValue1 == 'Рубль')
        this.text2 = (num / 6.5).toString();
      if (selectedValue == 'Тенге' && selectedValue1 == 'Доллар')
        this.text2 = (num / 461.3).toString();
      if (selectedValue == 'Тенге' && selectedValue1 == 'Евро')
        this.text2 = (num / 501.6).toString();
      if (selectedValue == 'Тенге' && selectedValue1 == 'Тенге')
        this.text2 = text;
    }
  }

  void _Number(num) {
    var z = '0';
    if (num == '-') {
      if (text.substring(0, 1) != '-')
        this.text = '-' + text;
      else if (text.substring(0, 1) == '-')
        this.text = text.substring(1, text.length);
    }
    if (num == '.') {
      if (text != '' && text.length !< 9) {
        List<String> x = text.split('');
        for (var i = 0; i < x.length; i++) {
          if (x[i] == '.')
            z = '1';
        }
        if (z == '0')
          this.text += '.';
      }
    }
    if (num != '.' && num != '-' && text.length !< 11)
      this.text = text + num;
  }

  void _Change() {
    var x = selectedValue1;
    selectedValue1 = selectedValue;
    selectedValue = x;
  }

  void _Delete() {
    if (text != '')
      this.text = text.substring(0, text.length - 1);
  }

  void _Clear() {
    this.text = '';
    this.text2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Валюта'),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text2,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  DropdownButton(
                    value: selectedValue1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    items: values.map((value) {
                      return DropdownMenuItem(
                        child: new Text(
                          value,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('1'))},
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('2'))},
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('3'))},
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Clear())},
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('4'))},
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('5'))},
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('6'))},
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Delete())},
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('7'))},
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('8'))},
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('9'))},
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Change())},
                      child: Icon(
                        Icons.unfold_more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child:ElevatedButton(
                      onPressed: () => {setState(() => _Number('-'))},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('0'))},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Number('.'))},
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.225, height: MediaQuery.of(context).size.width * 0.225,
                    child: ElevatedButton(
                      onPressed: () => {setState(() => _Conversion())},
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}