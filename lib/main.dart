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
      debugShowCheckedModeBanner: false, //remove debug tag
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var mark = TextEditingController();
  var result = "";
  var bgColor = Colors.amber;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("EWU Old Grading Calculator"), // create text title
        ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Check your Grade", style: TextStyle(
                    fontSize: 34, fontWeight: FontWeight.w700),),

                SizedBox(height: 21,),

                TextField(
                  controller: mark,
                  decoration: InputDecoration(
                    label: Text("Enter your Mark (0-100)"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),


                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){

                  var markt = mark.text.toString();


                  if(mark!= ''){
                    //bmi calculation

                    var iMark = int.parse(markt);
                    var msg = '';

                    if (iMark>100 || iMark<=0){
                    msg = "Enter your real mark (0-100)";
                    bgColor = Colors.lime;
                  }

                    else if(iMark>=97 && iMark<=100){
                      msg = "You have gotten A+ and your point 4.00!!";
                          bgColor = Colors.green;
                    }
                    else if(iMark>=90 && iMark<=97)
                      {
                        msg = "You have gotten A and your point 4.00!!";
                        bgColor = Colors.lightGreen;
                      }
                    else if(iMark>=87 && iMark<=90)
                    {
                      msg = "You have gotten A- and your point 3.70!!";
                      bgColor = Colors.blue;
                    }
                    else if(iMark>=83 && iMark<=87 )
                    {
                      msg = "You have gotten B+ and your point 3.30!!";
                      bgColor = Colors.blueGrey;
                    }
                    else if(iMark>=80 && iMark<=83)
                    {
                      msg = "You have gotten B and your point 3.00!!";
                      bgColor = Colors.lightBlue;
                    }
                    else if(iMark>=77 && iMark<=80)
                    {
                      msg = "You have gotten B- and your point 2.70!!";
                      bgColor = Colors.yellow;
                    }
                    else if(iMark>=73 && iMark<= 77)
                    {
                      msg = "You have gotten C+ and your point 2.30!!";
                      bgColor = Colors.deepPurple;
                    }
                    else if(iMark>=70 && iMark<=73)
                    {
                      msg = "You have gotten C and your point 2.00!!";
                      bgColor = Colors.purple;
                    }
                    else if(iMark>=67 && iMark<=70)
                    {
                      msg = "You have gotten C- and your point 1.70!!";
                      bgColor = Colors.pink;
                    }
                    else if(iMark>=63 && iMark<=67)
                    {
                      msg = "You have gotten D+ and your point 1.30!!";
                      bgColor = Colors.red;
                    }

                    else if(iMark>=60 && iMark<=63)
                    {
                      msg = "You have gotten D and your point 1.00!!";
                      bgColor = Colors.red;
                    }

                    else{
                      msg = "You are Fail!!";
                      bgColor = Colors.red;
                    }
                    setState(() {
                      result = "$msg ";
                    });

                  }
                  else{
                    setState(() {
                      result = "please fill all the required blanks!!";
                    });

                  }

                }, child: Text("Calculate")),

                Text(result, style: TextStyle(
                fontSize: 18,),)

              ],
            ),
          ),
        ),
      )
    );
  }
}

