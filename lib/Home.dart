import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
var Results;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor:Colors.black ,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          "Romanian Numeral Converter",
          style: TextStyle(
            color: Colors.white,

          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Roman Numerals Converter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 50
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "ENTER THE NUMBER",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                        width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                              bottomLeft:Radius.circular(20) ,
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Results : ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.5,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5)
                            ),
                            child: Text(
                              "${Results}"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
