

import 'package:counter_app_defualt_getx/counter/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      init: CounterController(),
      builder: (controller) =>  SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent.shade200,
          centerTitle: true,
          title: Text("Counter Game",style: TextStyle(
            color: Colors.white,fontSize: 22,letterSpacing: 2,
          ),),
          leading: Center(
              child: Icon(Icons.videogame_asset,color: Colors.white,)
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5),
                Image.asset('assets/images/math_1.png',height: 300,width: 300,fit: BoxFit.fill,),
                SizedBox(height: 5),
                Text("${controller.i}",style: TextStyle(color: Colors.black,fontSize: 50,),),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    controller.clear();
                  },
                  child: Container(
                    height: 5.h,width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Clear",style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                  controller.plus();
                  },
                  child: Container(
                    height: 5.h,width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("+ 1",style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    controller.minus();
                  },
                  child: Container(
                    height: 5.h,width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("- 1",style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    controller.two();
                  },
                  child: Container(
                    height: 5.h,width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("2 X",style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                        controller.four();
                  },
                  child: Container(
                    height: 5.h,width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("4 X",style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}