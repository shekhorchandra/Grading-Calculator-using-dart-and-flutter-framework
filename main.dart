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

 /*
  Old EWU grading system
  A+ = 4.00;
  A = 4.00;
  A- = 3.70;
  B+ = 3.30;
  B = 3.00;
  B- = 2.70;
  C+ = 2.30;
  C = 2.00;
  C- = 1.70;
  D+ = 1.30;
  D = 1.00;
  F = 0.00;
  */
  var fstsemgpa = TextEditingController();
  var fstsemcr = TextEditingController();
  var secsemgpa = TextEditingController();
  var secsemcr = TextEditingController();
  var thrsemgpa = TextEditingController();
  var thrsemcr = TextEditingController();
  var forsemgpa = TextEditingController();
  var forsemcr = TextEditingController();
  var fifsemgpa = TextEditingController();
  var fifsemcr = TextEditingController();
  var sixsemgpa = TextEditingController();
  var sixsemcr = TextEditingController();
  var sevsemgpa = TextEditingController();
  var sevsemcr = TextEditingController();
  var eghsemgpa = TextEditingController();
  var eghsemcr = TextEditingController();
  var ninsemgpa = TextEditingController();
  var ninsemcr = TextEditingController();
  var tensemgpa = TextEditingController();
  var tensemcr = TextEditingController();
  var elesemgpa = TextEditingController();
  var elesemcr = TextEditingController();
  var twlsemgpa = TextEditingController();
  var twlsemcr = TextEditingController();
  var thasemgpa = TextEditingController();
  var thasemcr = TextEditingController();

  var result = "";
  var bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("CGPA Calculator"), // create text title
        ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Text("Check your GPA:", style: TextStyle(
                      fontSize: 34, fontWeight: FontWeight.w700),),

              //1st semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: fstsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: fstsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.text,
                  ),
              //2nd semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: secsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: secsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              //3rd semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: thrsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: thrsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              //4th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: forsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: forsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credirs: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.text,
                  ),
              //5th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: fifsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: fifsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              //6th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: sixsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: sixsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 7th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: sevsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: sevsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 8th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: eghsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: eghsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 9th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: ninsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: ninsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 10th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: tensemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: tensemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 11th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: elesemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: elesemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 12th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: twlsemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: twlsemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // 13th semester
                  SizedBox(height: 11,),
                  TextField(
                    controller: thasemgpa,
                    decoration: InputDecoration(
                      label: Text("Enter your semester gpa: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: thasemcr,
                    decoration: InputDecoration(
                      label: Text("Enter your semester credits: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){
              
                    var fsg = fstsemgpa.text.toString();
                    var ssg = secsemgpa.text.toString();
                    var tsg = thrsemgpa.text.toString();
                    var fosg = forsemgpa.text.toString();
                    var fisg = fifsemgpa.text.toString();
                    var sisg = sixsemgpa.text.toString();
                    var sesg = sevsemgpa.text.toString();
                    var esg = eghsemgpa.text.toString();
                    var nsg = ninsemgpa.text.toString();
                    var tesg = tensemgpa.text.toString();
                    var elsg = elesemgpa.text.toString();
                    var twsg = twlsemgpa.text.toString();
                    var thsg = thasemgpa.text.toString();
                    var fsr = fstsemcr.text.toString();
                    var ssr = secsemcr.text.toString();
                    var tsr = thrsemcr.text.toString();
                    var fosr = forsemcr.text.toString();
                    var fisr = fifsemcr.text.toString();
                    var sisr = sixsemcr.text.toString();
                    var sesr = sevsemcr.text.toString();
                    var esr = eghsemcr.text.toString();
                    var nsr = ninsemcr.text.toString();
                    var tesr = tensemcr.text.toString();
                    var elsr = elesemcr.text.toString();
                    var twsr = twlsemcr.text.toString();
                    var thsr = thasemcr.text.toString();
              
                    if(fsg!= '' && ssg!= '' && tsg!= '' && fosg!= '' && fisg!= '' && sisg!= '' && sesg!= '' && esg!= "" && nsg!=""
                        && tesg!="" && elsg!=""&& twsg!= "" && thsg!= '' && fsr!= '' && ssr!= '' && tsr!= '' && fosr!= '' && fisr!= ''
                        && sisr!= "" && sesr!="" && tsg!="" && esr!=""&& nsr!= "" && tesr!= "" && elsr!="" && tsg!="" && twsr!=""&& thsr!= "")
                    {
                      var ffsg = double.parse(fsg);
                      var fssg = double.parse(ssg);
                      var ftsg = double.parse(tsg);
                      var ffosg = double.parse(fosg);
                      var ffisg = double.parse(fisg);
                      var fsisg = double.parse(sisg);
                      var fsesg = double.parse(sesg);
                      var fesg= double.parse(esg);
                      var fnsg = double.parse(nsg);
                      var ftesg = double.parse(tesg);
                      var felsg = double.parse(elsg);
                      var ftwsg = double.parse(twsg);
                      var fthsg = double.parse(thsg);
                      var ffsr = double.parse(fsr);
                      var fssr = double.parse(ssr);
                      var ftsr = double.parse(tsr);
                      var ffosr = double.parse(fosr);
                      var ffisr = double.parse(fisr);
                      var fsisr = double.parse(sisr);
                      var fsesr = double.parse(sesr);
                      var fesr = double.parse(esr);
                      var fnsr = double.parse(nsr);
                      var ftesr = double.parse(tesr);
                      var felsr = double.parse(elsr);
                      var ftwsr = double.parse(twsr);
                      var fthsr = double.parse(thsr);

                      //calculation
                      var gpacr = ((ffsg * ffsr) + ( fssg * fssr) + (ftsg * ftsr) + (ffosg * ffosr) + (ffisg * ffisr) + (fsisg * fsisr) +
                          (fsesg * fsesr) + (fesg * fesr) + (fnsg * fnsr) + (ftesg * ftesr)
                          + (felsg * felsr) + (ftwsg * ftwsr) + (fthsg * fthsr));
                      var totcr = (ffsr + fssr + ftsr + ffosr + ffisr + fsisr + fsesr + fesr + fnsr + ftesr + felsr + ftwsr + fthsr);
                      var cgpa = (gpacr / totcr);

                      var msg = '';


                      if (cgpa >= 3) {
                        msg = "You have got first class";
                        bgColor = Colors.green;
                      }
                      else if (cgpa < 3 && cgpa>=2) {
                        msg = "You have got second class ";
                        bgColor = Colors.blue;
                      }
                      else if(cgpa < 2 && cgpa>=1 ) {
                        msg = "You have got third class ";
                        bgColor = Colors.yellow;
                      }
                      else{
                        msg = "You are fail in ";
                        bgColor = Colors.red;
                      }
                      setState(() {
                        result = "$msg \nTotal Credit: $totcr,\nTotal Gpacr: ${gpacr.toStringAsFixed(2)}, \n CGPA: ${cgpa.toStringAsFixed(2)}";
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
        ),
      )
    );
  }
}

