import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_flutter/common/sizedbox.dart';
import 'package:ui_flutter/common/textstyles.dart';

import '../common/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List colors=[redcolor,greencolor,bluecolor,violetcolor,pinkcolor,goldcolor];
  List mood=['Birthday','Party','Relax','Fun'];
  List moodColor=[redlinear,violetlinear,bluelinear,greenlinear];
 Color bulbColor=whitecolor;
 dynamic _initialSliderVal=0;

 Colors? onColorTap(Color color){
   setState(() {
     bulbColor=color;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        elevation: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb_outline_sharp),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: ''),
        ],
      ),
      body: Container(
        width:Get.size.width,
        height: Get.size.height,
        decoration: BoxDecoration(color: darkblue),
        child: Stack(
          children: [
            Column(
            children: [
              Row(
                children: [
                  sbh30,
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_back,color:whitecolor,size: 20,),
                            sbw5,
                            Text("Bed",style: text1,),
                            sbh10,
                          ],
                        ),
                        Text("Room",style: text1),
                        sbh15,
                        Text("4 Lights",style:text2),
                      ],
                    ),
                  ),
                  sbw75,
                  Container(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 122,
                            left: 80,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: bulbColor,
                                )
                            ),
                          ),
                          Image.asset('assets/images/light.png',
                            width: 190,
                            height: 200,
                            color: whitecolor,)
                        ],
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 125,
                          height: 40,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(Icons.tips_and_updates_outlined),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Main Light',style: text3,),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 125,
                          height: 40,
                          decoration: BoxDecoration(
                            color:vdarkblue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.dark_mode,color: whitecolor,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Desk Lights',style: text4,),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 125,
                          height: 40,
                          decoration: BoxDecoration(
                            color:whitecolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.hotel_sharp),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Bed Light',style: text3,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              sbh30,
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
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sbh20,
                          Text("Intensity",style: text5,),
                      sbh7,
                      Row(
                        children: [
                      Icon(Icons.lightbulb_outlined,color: greycolor,size: 32,),
                          Expanded(
                            child: Slider(
                              activeColor: goldcolor,
                              thumbColor: whitecolor,
                              min: 0,
                              max: 100,
                              value: _initialSliderVal,
                              onChanged: (value) {
                                setState(() {
                                  _initialSliderVal=value;
                                });
                              },
                            ),
                          ),
                          Icon(Icons.lightbulb_outline,
                          size: 32,
                          color: (_initialSliderVal==0)?greycolor:Colors.yellow.withAlpha(_initialSliderVal.toInt()),),
                      ],
                    ),
                        sbh10,
                        Text('Colors',style: text5,),
                        sbh7,
                        Container(
                          width: double.infinity,
                          height: 70,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: InkWell(
                                    onTap: (){
                                      onColorTap(colors[index]);
                                    },
                                    child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colors[index],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        sbh10,
                        Text('Scenes',style: text5,),
                        sbh15,
                        Container(
                          width: double.infinity,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 2/1,
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ) ,itemCount: 4
                              , itemBuilder: (context, index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 12.0,bottom: 12.0),
                                  child: Container(
                                    width: 140,
                                    height: 50,
                                    decoration: BoxDecoration(gradient:moodColor[index],
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.lightbulb_outline,color: whitecolor,),
                                          sbw5,
                                          Text(mood[index],style: moodText,),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                          },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
            Positioned(
              right: 25,
              top: 277,
              child: Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: greycolor,offset: Offset(2,7),blurRadius: 10)],
                    borderRadius:BorderRadius.circular(100) ,
                    color: whitecolor
                ),
                child: Icon(Icons.power_settings_new,color: redcolor,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
