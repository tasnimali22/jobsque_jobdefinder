

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<Search> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search App'),
        ),
        body: Column(
            children: [
              TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 20),
              _searchText.isNotEmpty
                  ? Text('You are searching for: $_searchText')

                  : Text('Start typing to search'),
            ],
            ),
        );
    }
}