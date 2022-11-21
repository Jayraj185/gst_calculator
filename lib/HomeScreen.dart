import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVis = false;
  TextEditingController Amount = TextEditingController();
  int ans=0;
  double answer=0;
  bool check = true;
  bool check1 = true;
  bool check2 = true;
  bool check3 = true;
  bool check4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GST Calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 5)
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.calculate,size: 100,),
                ),
              ),
              SizedBox(height: 50,),
              TextField(
                controller: Amount,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.currency_rupee),
                  label: Text("Original Price"),
                ),
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              String amount = Amount.text;
                              setState(() {
                                check = !check;
                                isVis = !isVis;
                                ans = int.parse(amount);
                                answer = ((ans*103)/100);
                              });
                            },
                            child: Text("3%",style: TextStyle(fontSize: 16),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: (check == false) ? Colors.blue.shade600 : Colors.deepOrange,
                              minimumSize: Size(70,70),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              String amount = Amount.text;
                              setState(() {
                                check1 = !check1;
                                isVis = !isVis;
                                ans = int.parse(amount);
                                answer = ((ans*105)/100);
                              });
                            },
                            child: Text("5%",style: TextStyle(fontSize: 16),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: (check1 == false) ? Colors.blue.shade600 : Colors.deepOrange,
                              minimumSize: Size(70,70),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              String amount = Amount.text;
                              setState(() {
                                check2 = !check2;
                                isVis = !isVis;
                                ans = int.parse(amount);
                                answer = ((ans*112)/100);
                              });
                            },
                            child: Text("12%",style: TextStyle(fontSize: 16),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: (check2 == false) ? Colors.blue.shade600 : Colors.deepOrange,
                              minimumSize: Size(70,70),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              String amount = Amount.text;
                              setState(() {
                                check3 = !check3;
                                isVis = !isVis;
                                ans = int.parse(amount);
                                answer = ((ans*118)/100);
                              });
                            },
                            child: Text("18%",style: TextStyle(fontSize: 16),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: (check3 == false) ? Colors.blue.shade600 : Colors.deepOrange,
                              minimumSize: Size(70,70),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              String amount = Amount.text;
                              setState(() {
                                check4 = !check4;
                                isVis = !isVis;
                                ans = int.parse(amount);
                                answer = ((ans*128)/100);
                              });
                            },
                            child: Text("28%",style: TextStyle(fontSize:17),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: (check4 == false) ? Colors.blue.shade600 : Colors.deepOrange,
                              minimumSize: Size(70,70),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(height: 50,),
              Visibility(
                visible: isVis,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white,width: 2),
                      boxShadow: [
                        BoxShadow(color: Colors.black45,blurRadius: 6)
                      ],
                      borderRadius: BorderRadius.circular(30)
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text("   Final Price : $answer",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
