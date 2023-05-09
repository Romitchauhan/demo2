import 'package:demo2/res/color.dart';
import 'package:demo2/utils/routes/routes.dart';
import 'package:demo2/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class PerfumeDetail extends StatefulWidget {
  final ScrollController _scrollController = ScrollController();

  PerfumeDetail({Key? key}) : super(key: key);

  @override
  State<PerfumeDetail> createState() => _PerfumeDetailState();
}

class _PerfumeDetailState extends State<PerfumeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      appBar: AppBar(

        title: Text(
          "PerfumeDetail",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColor.bgcolor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: widget._scrollController,
        child: Container(
        //  height: double.maxFinite,
          child: Column(
            children: [
              Container(
                child: Image.network(
                  'https://img.freepik.com/free-photo/front-view-fragrance-white-red-designed-transparent-light-desk_140725-11631.jpg?w=1060&t=st=1683537900~exp=1683538500~hmac=1046df6390eb6eda63c09d42690b83c40e7f149293aed7e4fc5e977b2b42fb19',
                ),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.all(0.8),
              ),
              Center(
                heightFactor: 1,
                widthFactor: 5,
                child: Container(
                  height: 60,
                  width: 180,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: const Text(
                    'Product Name:\nLightRed',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              const Divider(
                thickness: 5,
                color: Colors.lightBlue,
              ),
              Container(
                height:60,
                width: 180,
                child: const Text(
                  'Product ID:\n1',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
              const Divider(
                thickness: 5,
                color: Colors.lightBlue,
              ),
              Container(
                height: 60,
                width: 120,
                child: const Text(
                  'Price:\n \$100',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
              const Divider(
                thickness: 5,
                color: Colors.lightBlue,
              ),
              Container(height: 60,
                width: 120,
                child: const Text(
                  'Count :\n 5',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
              const Divider(
                thickness: 5,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
