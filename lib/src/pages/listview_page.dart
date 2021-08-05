import 'package:flutter/material.dart';

import 'dart:async';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _numbersList = [];
  int _lastItem = 0;
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    _add10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_add10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
        ),
        body: Stack(
          children: [_createList(), _createLoading()],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: getPage1,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _numbersList.length,
          itemBuilder: (BuildContext context, int index) {
            final imageNumber = _numbersList[index];
            return FadeInImage(
              image: NetworkImage(
                  'https://picsum.photos/500/300/?image=$imageNumber'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            );
          }),
    );
  }

  Future<Null> getPage1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _numbersList.clear();
      _lastItem++;
      _add10();
    });
    return Future.delayed(duration);
  }

  void _add10() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numbersList.add(_lastItem);
    }

    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    final duration = Duration(seconds: 2);
    setState(() {});
    return new Timer(duration, httpResponse);
  }

  void httpResponse() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    _add10();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
