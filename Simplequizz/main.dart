import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/questions.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:simplequizz(),
    );
  }
}

class simplequizz extends StatefulWidget {
  const simplequizz({super.key});

  @override
  State<simplequizz> createState() => _simplequizzState();
}

class _simplequizzState extends State<simplequizz> {
  var marks=0;
  var n=0;
  var showSnackBar;
  List questions_list=[
  questions("Google is the founder of flutter?",true),
  questions("Flutter is a programming language.",false),
  questions("Flutter apps can only be developed for Android devices.",false),
  questions("Flutter uses the Dart programming language.",true),
  questions("Flutter widgets are immutable.",true),
 ];
  @override
  void checkanswer(bool choice, BuildContext cn){
    if(choice==questions_list[n].ans){
      final snackbar=SnackBar(content: Text("Answer is correct"),
      duration:Duration(milliseconds:400),
      backgroundColor: Colors.greenAccent,
      );
      // Scaffold.of(cn).shwSnackBar.(snackbar);
      print("correct answer");
     // setState(() {
        marks=marks+1;
         if(n<questions_list.length-1){
          n=n+1;
         }
    //  });

      
      
       // Scaffold.of(cn).showSnackBar.(snackbar);
    }else{
      print("wrong answer");
      setState(() {
        if(n<questions_list.length-1){
          n=n+1;
        }
      });
      final snackbar=SnackBar(content: Text("Answer is wrong"),
      duration:Duration(milliseconds:400),
      backgroundColor: Colors.redAccent,
      );
      }
      }
      void reset(){
        setState(() {
          n=0;
          marks=0;
        });
      }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.pinkAccent,
      actions: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 1200),
          child: Text("Simplequizz",style: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),),
        ),
      )
     ]),
    body:Builder(
      builder:(cn)=>Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50.0,left: 100),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(onPressed: (){}, child: Text("Total Marks:$marks/5")),
                 Padding(
                   padding: const EdgeInsets.only(left:10.0),
                   child: OutlinedButton(onPressed: (){
                    reset();
                   }, child: Text("Reset")),
                 ),
                ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:60,top: 20),
            child: Material(
              elevation: 3,
              shadowColor: Colors.blueGrey,
               borderRadius: BorderRadius.circular(15),
              child: Container(
                height:150 ,
                width: 800,
                decoration: BoxDecoration(
                 color: Colors.white, 
                 borderRadius: BorderRadius.circular(15)),
                 child:Column(
                   children: [
                     Center(
                       child: Padding(
                         padding: const EdgeInsets.only(top:30.0,left: 20),
                         child: Text(questions_list[n].que,style: GoogleFonts.deliusSwashCaps(
                                   fontSize: 40,
                                   fontWeight: FontWeight.w500,
                                   color: Colors.black,
                                 ),),
                       ),
                     ),
                   ],
                 ),
                ),
                ),
          ),
            //color: Colors.grey,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:500.0,top: 30),
                  child: ElevatedButton(
                  onPressed: ()=>checkanswer(true, cn),
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),),
                  child:Text("True",style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),), ),
                ),
            Padding(
              padding: const EdgeInsets.only(left:250.0,top:30),
              child: ElevatedButton(
                  onPressed: ()=>checkanswer(false, cn),
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),),
                  child:Text("False",style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),), ),
            ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: ElevatedButton(onPressed: (){
                showpoppup();
              }, child: Text("Completed",style: TextStyle(
                fontSize: 20,
                ),)),
            )
        ],
      ),
    ),
    );
  }
  showpoppup(){
  print("hiii");
  return showDialog(context: context, builder: (context){
return AlertDialog(actions: [
  Text("you are completed a quizz"),
  ElevatedButton(onPressed: (){}, child: Text("You Scored:$marks"))
],);
  }
  );
}
}


  
}



