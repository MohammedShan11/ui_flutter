import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _containerColor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:Get.size.width,
        height: Get.size.height,
        decoration: BoxDecoration(color: Color(0xff0b2157)),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back,color: Colors.white,),
                          Text("Bed",style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                        ],
                      ),
                      Text("Room",style: TextStyle(fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                      Text("4 Lights",style: TextStyle(color:Color(0xffed850e),
                          fontWeight: FontWeight.bold ),),
                    ],
                  ),
                ),
                Image.asset('assets/images/light.png',width: 190,height: 200,)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color:_containerColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color:_containerColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color:_containerColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  children: [

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
