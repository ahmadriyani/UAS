import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset(
        "assets/lottie/loading.json",
        height: 200,
      ),
    );
  }
}
