import 'package:flutter/material.dart';
import 'package:task_cavz/utils/app_colors.dart';
import 'package:task_cavz/utils/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(backgroundImage:AssetImage(AppConstant.profile),radius: 10 ,),
        title: const Text("Hello Onky"),
        actions: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My wallet"),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.wallet,color: AppColors.buttonColor,),
                    Text("1000")
                  ],
                ),
              )
            ],
          ),
          Icon(Icons.menu,color: AppColors.buttonColor,)
        ],
      ),
      body: SafeArea(child: Center(
        child: Column(

          children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height*.35,
              width: MediaQuery.sizeOf(context).width*.8,
              child: GridView.builder(itemCount: AppConstant.gridViewList.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                return  SizedBox(
                  width: 20,
                  height: 20,
                  child:  Card(

                    child: Image(image: AssetImage(AppConstant.gridViewList[index]),),
                  ),
                );
              },),
            ),
            SizedBox(height: 10,),
            SizedBox(width: MediaQuery.sizeOf(context).width*.9,
            child: Image(image: AssetImage(AppConstant.carImageBanner),),)
          ],
        ),
      )),
    );
  }
}
