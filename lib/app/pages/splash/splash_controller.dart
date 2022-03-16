import 'package:akt_test/app/pages/splash/splash_view.dart';
import 'package:akt_test/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final bool testing;
  const SplashPage({Key? key, this.testing = false}) : super(key: key);

  @override
  SplashController createState() => SplashController();
}

class SplashController extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    initAnimation(_animationController, _animation);
  }

  void initAnimation(AnimationController controller, Animation<double> animation) {
    animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        controller.stop();
        if (!widget.testing) {
          navigateTo(context, '/home');
        }
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SplashView(context, controller: this);
  }

  /// getters
  Animation<double> get animation => _animation;
}
