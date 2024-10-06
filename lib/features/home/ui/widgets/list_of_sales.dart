import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

class ListOfSales extends StatefulWidget {
  const ListOfSales({super.key});

  @override
  _ListOfSalesState createState() => _ListOfSalesState();
}

class _ListOfSalesState extends State<ListOfSales> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  final double _scrollDuration = 2.0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: _scrollDuration.toInt()), (Timer timer) {
      if (_scrollController.position.pixels < _scrollController.position.maxScrollExtent) {
        _scrollController.animateTo(
          _scrollController.position.pixels + 200,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _scrollController.jumpTo(0); // Jump back to the start
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        itemBuilder: (context,index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          child: Image.asset(
            'assets/images/sales1.png',
            fit: BoxFit.cover,
          ),
        ),
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: 4,

      ),
    );
  }
}
