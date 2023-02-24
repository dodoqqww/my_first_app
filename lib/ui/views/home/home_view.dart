import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('AppBar Demo'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.bluetooth),
                tooltip: 'Show Snackbar',
                onPressed: () => viewModel.showBottomSheet()),
            IconButton(
                icon: const Icon(Icons.dashboard),
                tooltip: 'SendData',
                onPressed: () => viewModel.sendData())
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: CustomPaint(
            painter: OpenPainter(),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 7;

    var paint2 = Paint()
      ..color = Color.fromARGB(255, 34, 35, 136)
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 7;

//left
    for (double i = 0; i < 315; i = i + 7) {
      if (i % 2 == 0) {
        canvas.drawPoints(
            PointMode.points, [Offset(50, 150 + (i + 7))], paint1);
      } else {
        canvas.drawPoints(
            PointMode.points, [Offset(50, 150 + (i + 7))], paint2);
      }
    }

//right
    for (double i = 0; i < 315; i = i + 7) {
      if (i % 2 == 0) {
        canvas.drawPoints(
            PointMode.points, [Offset(300, 150 + (i + 7))], paint1);
      } else {
        canvas.drawPoints(
            PointMode.points, [Offset(300, 150 + (i + 7))], paint2);
      }
    }

    //draw points on canvas
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
