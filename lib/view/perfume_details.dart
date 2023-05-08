import 'package:demo2/res/color.dart';
import 'package:demo2/utils/routes/routes.dart';
import 'package:demo2/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class PerfumeDetail extends StatefulWidget {
  const PerfumeDetail({Key? key}) : super(key: key);

  @override
  State<PerfumeDetail> createState() => _PerfumeDetailState();
}

class _PerfumeDetailState extends State<PerfumeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PerfumeDetail",style: TextStyle(color: AppColor.bgcolor),),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
        height: double.maxFinite,
        //color: Colors.blue,
        child: Column(
          children: [
            Container(
              child: Image.network('https://img.freepik.com/free-photo/front-view-fragrance-white-red-designed-transparent-light-desk_140725-11631.jpg?w=1060&t=st=1683537900~exp=1683538500~hmac=1046df6390eb6eda63c09d42690b83c40e7f149293aed7e4fc5e977b2b42fb19',

              ),


              // color: Colors.black,
             // height: 350,
              padding: EdgeInsets.only(top: 10,bottom: 10),
              margin: EdgeInsets.all(0.8),

            ),

            Container(
              
                child:Text('Product Name: '
                   'LightRed',style: TextStyle(fontSize: 24) ,),
              ),
            Divider(thickness: 5, color: AppColor.darkTextColor,),
            Container(
                child:Text('Product ID:1',style: TextStyle(fontSize: 24)),
              ),
            Divider(thickness: 5, color: AppColor.darkTextColor,),

            Container(
                child:Text('Price: \$100',style: TextStyle(fontSize: 24)),
              ),
            Divider(thickness: 5, color: AppColor.darkTextColor,),

            Container(
                child:Text('Count : 5',style: TextStyle(fontSize: 24)),
              ),

          ],
        ),
      )
    );
  }
}
