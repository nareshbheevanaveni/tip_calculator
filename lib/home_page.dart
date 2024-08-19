import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  TextEditingController  billController = TextEditingController();

  int perCount = 1;
  int tipPercent = 0;
  num totalBillAmt = 0.0;
  num totalTipAmt = 0.0;
  num totalAmt = 0.0;
  num perPersonAmt = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: Colors.grey.shade400,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // part 1
              Expanded(flex: 3, child: getTitlePart1()),
              // part 2
              Expanded(
                  flex: 6,
                  child: getBoardPart2()),
              Expanded(
                  flex: 3,
                  child:  getPart3() ),
              Expanded(
                  flex: 4,
                  child: getPart4()),
              Expanded(
                  flex: 2,
                  child: getPart5()),
            ],
          ),
        ),
      ),
    );
  }

   // part 1
   Widget getTitlePart1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/hat.jpg",
          width: 60,
          height: 60,
        ),
        SizedBox(
          width: 11,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Mr  ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
              TextSpan(
                  text: 'TIP',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.black))
            ])),
            Text(
              'Calculator',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            )
          ],
        )
      ],
    );
  }

   // Part 2
   Widget getBoardPart2(){
    return Card(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white10,
        ),
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Total p/person',
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "\$",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    TextSpan(
                        text: '${perPersonAmt ==0.0? '000' : perPersonAmt.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w900,
                            color: Colors.black))
                  ])),
              Divider(thickness: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Total bill', style: TextStyle(fontSize: 20),),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\$",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF03C9BD))),
                            TextSpan(
                                text: '${totalBillAmt == 0.0? '000' : totalBillAmt.toStringAsFixed(2)}',
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF03C9BD))),
                          ]))
                    ],
                  ),
                  Column(
                    children: [
                      Text('Total tip', style: TextStyle(fontSize: 20),),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\$",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF03C9BD))),
                            TextSpan(
                                text: "${totalTipAmt == 0.0 ? "000" : totalTipAmt.toStringAsFixed(2)}",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF03C9BD))),
                          ]))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
   }

   // part3
   Widget getPart3(){
  return  Row(

     children: [
       Expanded(
         child: RichText(
             text: TextSpan(children: [
               TextSpan(
                   text: "Enter\n",
                   style: TextStyle(
                       fontSize: 21,
                       fontWeight: FontWeight.w700,
                       color: Colors.black)),
               TextSpan(
                   text: 'your bill',
                   style: TextStyle(
                     fontSize: 20,color: Colors.black
                   ))
             ])), ),
       SizedBox(width: 3,),
       Expanded(
           flex: 3,
           child: TextField(
             keyboardType: TextInputType.number,
             controller: billController ,
             decoration: InputDecoration(
                 fillColor: Colors.white,
                 filled: true,
                 prefixText: "\$",
                 border: OutlineInputBorder(
                     borderSide: BorderSide(
                         style: BorderStyle.none,
                         color: Colors.white,
                         width: 1
                     )
                 )


             ),
           ))

     ],
   );
 }

   // part 4
    Widget getPart4(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Choose\n",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                TextSpan(
                    text: 'your tip',
                    style: TextStyle(
                      fontSize: 20,color: Colors.black
                    ))
              ])),
        ),
        SizedBox(width: 11,),
        Expanded(
          flex: 3,
          child: Column(

            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Row(
                    children: [
                      Expanded(child:    InkWell(
                        onTap: (){
                          tipPercent = 10;
                          updateTheResult();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF03C9BD),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text('10%', style: TextStyle(fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),),
                        ),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child:    InkWell(
                        onTap: (){
                          tipPercent = 15;
                          updateTheResult();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF03C9BD),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text('15%', style: TextStyle(fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),),
                        ),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child:    InkWell(
                        onTap: (){
                          tipPercent = 20;
                          updateTheResult();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF03C9BD),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text('20%', style: TextStyle(fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),),
                        ),
                      )),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF03C9BD),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Custom tip', style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        )

      ],
    );
    }

    // part 5
    Widget getPart5(){
    return Row(
      children: [
        RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Split\n",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              TextSpan(
                  text: 'the total',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ))
            ])),
        SizedBox(width: 10,),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Row(
              children: [
                Expanded(flex: 1,child: InkWell(
                  onTap: (){
                    if(perCount>1){
                      perCount--;
                      updateTheResult();

                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF03C9BD),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                    ),
                    child: Center(child: Text('-', style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),),),
                  ),
                )),
                Expanded(flex: 2, child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Center(child: Text('$perCount', style: TextStyle(fontSize: 21,
                      fontWeight: FontWeight.w900, backgroundColor: Colors.white,
                      color: Colors.black),),),
                )),
                Expanded(flex:1, child: InkWell(
                  onTap: (){
                    perCount++;
                    updateTheResult();

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
                      color: Color(0xFF03C9BD),

                    ),
                    child: Center(child: Text('+', style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),),),
                  ),
                )),
              ],
            ),
          ),

        )
      ],
    );
    }
    void updateTheResult(){
  if(billController.text!=''){
    totalBillAmt = double.parse(billController.text.toString());
    totalTipAmt = totalBillAmt*(tipPercent/100);
    totalAmt = totalBillAmt + totalTipAmt;
    perPersonAmt = totalAmt/perCount;


    setState(() {

    });
  } else{
    perCount = 1;
  }
    }
}
