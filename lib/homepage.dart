import 'package:cateloge_app/models/cateloge_model.dart';
import 'package:cateloge_app/widgets/drawer.dart';
import 'package:cateloge_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        title: Text("Cataloge",textScaleFactor: 1.5,style: TextStyle(
          color: Colors.black87,
        
          letterSpacing: .8,
          fontWeight: FontWeight.w500,
          
        ),),
        ),
        // body: Center(
        //   child: Container(
        //     child: Text("Welome"),
        //   ),
          
        // ),
        //builder is used for rendering effecient so that page looks it is not completely reloaded
        body: ListView.builder(
          itemCount: CatelogeModel.items.length,
          itemBuilder:((context, index) {
            // return ItemWIdget();
            return context.widget;
          }),
        ),
    );
  }
}