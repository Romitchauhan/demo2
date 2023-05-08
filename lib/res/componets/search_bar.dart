import 'package:demo2/res/color.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  List<String> _perfumeProducts = ['product 1', 'product 2', 'product 3', 'product 4'];

  List<String> _searchResult = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    String query = _searchController.text;
    List<String> results = [];
    if (query.isNotEmpty) {
      _perfumeProducts.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          results.add(item);
        }
      });
    } else {
      results = List.from(_perfumeProducts);
    }
    setState(() {
      _searchResult = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white),
        ),
              centerTitle: true,
        backgroundColor: AppColor.bgcolor,
      ),
      body: _searchResult.length > 0 || _searchController.text.isNotEmpty
          ? ListView.builder(
        itemCount: _searchResult.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_searchResult[index]),
          );
        },
      )
          : Center(
        child: Text('Search for perfume products'),
      ),
    );
  }
}
