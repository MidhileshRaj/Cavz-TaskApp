import 'package:flutter/material.dart';
import 'package:task_cavz/utils/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(backgroundImage:AssetImage(AppConstant.profile),radius: 20 ,),
      ),
      body: SafeArea(child: Center(
        child: Column(

          children: [


            const Padding(
              padding: EdgeInsets.only(top: 20.0,bottom: 20),
              child: Image(image: AssetImage(AppConstant.appbarimg)),
            ),
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
            SizedBox(width: MediaQuery.sizeOf(context).width*.9,
            child: Image(image: AssetImage(AppConstant.carImageBanner),),)
          ],
        ),
      )),
    );
  }
}
