import 'package:demo2/model/perfume_data.dart';
import 'package:demo2/repository/home_repository.dart';
import 'package:demo2/res/color.dart';
import 'package:demo2/res/componets/search_bar.dart';
import 'package:demo2/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();



  @override
  Widget build(BuildContext context) {
   // _scrollController!.attach(Scrollable.of(context)!.position);
    final SearchBar searchBar = SearchBar();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightTextColor,
        elevation: 0,
        title: Text(
          'Perfume App',
          style: TextStyle(color: Colors.black),
        ),

      ),

      body: Column(
          children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
      controller: _searchController,
        decoration: const InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.black),
        ),
        style: TextStyle(color: Colors.black),

      ),

    ),
            // add your widgets here
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                radius: Radius.circular(10),
                thickness: 15,
                thumbVisibility: true,
                child: ListView.builder(
                  itemCount: PerfumeData().perfumes.length,
                  itemBuilder: (BuildContext context, int index) {
                    final perfume = PerfumeData().perfumes[index];
                    return GestureDetector(
                      onTap: () {
                        // navigate to detail screen
                        Navigator.pushNamed(context,
                            RoutesName.detail,
                        arguments: perfume);

                      },
                      child: Scrollbar(
                        controller: _scrollController,
                        radius: Radius.circular(10),
                        thickness: 15,
                        thumbVisibility: true,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0x70092CFF),
                              width: 1.0,
                            ),
                            color: AppColor.bgcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),

                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Product ID:'+perfume.name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  'Amount : ' + perfume.price.toString() + '\$',
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Date  : ' + perfume.date,
                                style: TextStyle(fontSize: 16),
                              ),

                              const SizedBox(height: 5),
                              Text(
                                'Status : ' + perfume.status,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'No. of Products : ' +
                                    perfume.numberOfProducts.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                              //SizedBox(height: 5),
                              Divider( thickness: 1,color: Colors.lightGreenAccent,),
                              //  SizedBox(height: 5),
                              Container(
                                height: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: perfume.images.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 5,left: 5,top: 10),
                                      child: Image.network(
                                        perfume.images[i],
                                        fit: BoxFit.cover,
                                      ),

                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ),
          ],
        ),
      );

  }
}
