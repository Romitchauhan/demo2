import 'package:demo2/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:demo2/model/perfume_data.dart';
import 'package:demo2/res/color.dart';
import 'package:demo2/utils/routes/routes_name.dart';
import 'package:demo2/res/componets/search_bar.dart';

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final SearchBar searchBar = SearchBar();

    return SafeArea(
        child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints)
    {
      final bool isLandscape = constraints.maxWidth > constraints.maxHeight;

      return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: AppColor.bgcolor,
          elevation: 0,
          title: Text(
            'Perfume App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(decoration: BoxDecoration(
      image: DecorationImage(
      image: NetworkImage('https://img.freepik.com/free-photo/bottle-perfumes-pink-wall-with-flowers_169016-5739.jpg?w=740&t=st=1683617742~exp=1683618342~hmac=0a123e1fab2807384c68752bfb88a86b94840628325fc0b7599a24b6b74ace6d'),
      fit: BoxFit.cover,
      ),),
      child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  controller: _searchController,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black,),
                  ),
                  style: TextStyle(color: Colors.black,),
                ),
              ),
              Expanded(
                child: Scrollbar(
                  controller: _scrollController,
                  radius: Radius.circular(10),
                  thickness: 12,
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: PerfumeData().perfumes.length,
                    itemBuilder: (BuildContext context, int index) {
                      final perfume = PerfumeData().perfumes[index];
                      return GestureDetector(
                        onTap: () {
                          // navigate to detail screen
                          Navigator.pushNamed(
                            context,
                            RoutesName.detail,
                            arguments: perfume,
                          );
                        },
                        child: Scrollbar(
                          controller: _scrollController,
                          radius: Radius.circular(10),
                          thickness: 15,
                          thumbVisibility: true,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: isLandscape ? 30 : 20,
                              vertical: 10,
                            ),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.lightBlueAccent,
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
                                        'Product ID:' + perfume.name,
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
                                Divider(
                                  thickness: 1, color: Colors.lightBlueAccent,),
                                //  SizedBox(height: 5),
                                Container(
                                  height: 100,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: perfume.images.length,
                                    itemBuilder: (BuildContext context, int i) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                            right: 5, left: 5, top: 10),
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
        ),

      );
    }
        )
    );
        }
}
