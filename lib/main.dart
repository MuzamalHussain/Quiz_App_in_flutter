import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}





class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Icon> _Score=[];
  String result= 'Next';
  String ResultProbably= '';
  bool container_1=true;
  bool container_2=false;
  int _QuestionIndex= 0;
  int score=0;
  Color Option_1 = Colors.white;
  Color Option_2 = Colors.white;
  Color Option_3 = Colors.white;
  Color Option_4 = Colors.white;


  List Question=[
    {
      "question":"Pakistan Tehreek-e-insaf party chairman name ",
      'answer': ['Imran Khan', 'Nawaz Shreef' , 'Asif Zirdari', 'Maryam'],
      'correct': 'Imran Khan'
    }, 
    {
      "question":"Pakistan Won the World Cup in",
      'answer': ['1987', '1992' , '1997', '2008'],
      'correct': '1992'
    }, 
    {
      "question":"which country won most world cup",
      'answer': ['Pakistan', 'Australia' , 'India', 'New zealand'],
      'correct': 'Australia'
    }, 
    {
      "question":"Water are present on the Earth",
      'answer': ['51%', '61%' , '71%', '81%'],
      'correct': '71%'
    }, 
    {
      "question":"What is flutter developer name",
      'answer': ['Google', 'Microsoft' , 'Samsung', 'being'],
      'correct': 'Google'
    },
    {
      "question":"Current version of flutter",
      'answer': ['(1.x)', '(2.x)' , '(3.x)', '(4.x)'],
      'correct': '(3.x)'
    },
  ];


  _RestartQuiz(){
    _QuestionIndex=0;
    score=0;
    result='Next';
    _Score.clear();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Visibility(

                child: Container(

                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(

                    gradient: const LinearGradient(
                      colors: [Colors.grey, Colors.blueAccent],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [-1, 1],
                      // tileMode: TileMode.repeated,
                    ),
                  ),

                ),
              ),
              Center(
                child: Visibility(
                  visible: container_1,
                  child: Container(
                      height: 650,
                      width: 390,
                      // color: Colors.red,
                    child: Column(
                      children: [
                        Expanded(child: Center(child: Text('Mind Set Quiz', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))),
                        Expanded(
                          flex: 3,
                            child: Visibility(
                              // visible: container_1,
                              child: Container(
                                width: double.infinity,
                                // color: Colors.green,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  // color: Colors.deepPurpleAccent.withOpacity(0.5),
                                  shadowColor: Colors.black,
                                  elevation: 20,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child:Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text('Question No ${_QuestionIndex + 1} :',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                            ),
                                          )
                                      ),
                                      Expanded(
                                        flex: 2,
                                          child:Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 10,top: 0,bottom: 10),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text('${Question[_QuestionIndex]['question']}. ?',style: TextStyle(fontSize: 20),),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Expanded(
                          flex: 6,
                            child: Container(
                              // width: 350,
                              // color: Colors.yellow,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 70,
                                    // color: Colors.red,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: Option_1,
                                              border: Border.all(width: 2,color: Colors.black),
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: TextButton(
                                            child: Text(''),
                                            onPressed: (){
                                              setState(() {
                                                Option_1=Colors.blue;
                                                Option_2=Colors.white;
                                                Option_3=Colors.white;
                                                Option_4=Colors.white;
                                                if(Question[_QuestionIndex]['answer'][0]==Question[_QuestionIndex]['correct']){
                                                  score++;
                                                  _Score.add(Icon(Icons.check));
                                                }
                                                else{
                                                  _Score.add(Icon(Icons.close));
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          width: 330,
                                          height: 70,
                                          // color: Colors.grey,
                                          child: Text('${Question[_QuestionIndex]['answer'][0]}',style: TextStyle(fontSize: 25),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 70,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: Option_2,
                                              border: Border.all(width: 2,color: Colors.black),
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: TextButton(
                                            child: Text(''),
                                            onPressed: (){
                                              setState(() {
                                                Option_1 =Colors.white;
                                                Option_2=Colors.blue;
                                                Option_3=Colors.white;
                                                Option_4=Colors.white;
                                                if(Question[_QuestionIndex]['answer'][1]==Question[_QuestionIndex]['correct']){
                                                  score++;
                                                  _Score.add(Icon(Icons.check));
                                                }
                                                else{
                                                  _Score.add(Icon(Icons.close));
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          width: 330,
                                          height: 70,
                                          // color: Colors.grey,
                                          child: Text('${Question[_QuestionIndex]['answer'][1]}',style: TextStyle(fontSize: 25),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 70,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: Option_3,
                                              border: Border.all(width: 2,color: Colors.black),
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: TextButton(
                                            child: Text(''),
                                            onPressed: (){
                                              setState(() {
                                                Option_1=Colors.white;
                                                Option_2=Colors.white;
                                                Option_3=Colors.blue;
                                                Option_4=Colors.white;
                                                if(Question[_QuestionIndex]['answer'][2]==Question[_QuestionIndex]['correct']){
                                                  score++;
                                                  _Score.add(Icon(Icons.check));
                                                }
                                                else{
                                                  _Score.add(Icon(Icons.close));
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          width: 330,
                                          height: 70,
                                          // color: Colors.grey,
                                          child: Text('${Question[_QuestionIndex]['answer'][2]}',style: TextStyle(fontSize: 25),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 70,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: Option_4,
                                              border: Border.all(width: 2,color: Colors.black),
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: TextButton(
                                            child: Text(''),
                                            onPressed: (){
                                              setState(() {
                                                Option_1=Colors.white;
                                                Option_2=Colors.white;
                                                Option_3=Colors.white;
                                                Option_4=Colors.blue;
                                                if(Question[_QuestionIndex]['answer'][3]==Question[_QuestionIndex]['correct']){
                                                  score++;
                                                  _Score.add(Icon(Icons.check));
                                                }
                                                else{
                                                  _Score.add(Icon(Icons.close));
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          width: 330,
                                          height: 70,
                                          // color: Colors.grey,
                                          child: Text('${Question[_QuestionIndex]['answer'][3]}',style: TextStyle(fontSize: 25),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Expanded(
                          flex: 2,
                            child: Container(
                              // color: Colors.orange,
                              child: Row(

                                children: [
                                  Expanded(
                                      flex:2,
                                      child: Text('')),
                                  Expanded(
                                      child: Container(
                                        height: 60,
                                        child: TextButton(
                                          onPressed: (){
                                            setState(() {
                                              Option_1=Colors.white;
                                              Option_2=Colors.white;
                                              Option_3=Colors.white;
                                              Option_4=Colors.white;
                                              if(_QuestionIndex == Question.length - 2){
                                                result= 'Result';
                                              }
                                              if(_QuestionIndex < Question.length - 1){
                                                _QuestionIndex++;
                                              }
                                              else{
                                               container_1=false;
                                               container_2=true;
                                              }
                                              if(score > Question.length-score){
                                                ResultProbably='You Win';
                                              } else if(score < Question.length-score){
                                                ResultProbably='You Lose';
                                              }else if(score == Question.length-score){
                                                ResultProbably='Pass (nice try)';
                                              }
                                            });
                                          },
                                          child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('$result',style: TextStyle(fontSize: 30,color: Colors.white),),
                                                  Icon(Icons.arrow_circle_right,color: Colors.white,)
                                                ],
                                              )
                                          ),
                                        ),
                                        // color: Colors.red,
                                      )
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),

              ),
              Visibility(
                visible: container_2,
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 300,
                      // color: Colors.red,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        shadowColor: Colors.black,
                        elevation: 20,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                                child: Container(
                                  // color: Colors.red,
                                  child: Center(child: Text("$ResultProbably",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
                                )
                            ),
                            Expanded(
                                flex: 2,
                                child:Container(

                                  // color: Colors.green,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                       Text("Score $score / ${Question.length}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                      Row(
                                        children: _Score,
                                      )
                                    ],
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 2,
                                child: TextButton(
                                  onPressed: (){
                                    setState(() {
                                      container_1=true;
                                      container_2=false;
                                      _RestartQuiz();
                                    });

                                  },
                                  child: Text('Restart Quiz',style: TextStyle(fontSize: 20),),
                                )
                            ),
                          ],
                        ),
                      )

                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}









// .................................Question Widget........................