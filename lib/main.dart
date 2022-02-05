import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AnimatedIcon',
    home: AnimateIcon(),
  ));
}

class AnimateIcon extends StatefulWidget {
  @override
  _AnimateIconState createState() => _AnimateIconState();
}

class _AnimateIconState extends State<AnimateIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController animatecctrl;
  bool isAnimate = false;
  bool isState1 = true;
  bool isState2 = false;
  @override
  void initState() {
    // TODO: implement initState
    animatecctrl = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
        debugLabel: 'Sajjad');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  size: 150,
                  progress: animatecctrl,
                  color: Colors.red,
                ),
                onTap: () {
                  setState(() {
                    isAnimate = !isAnimate;
                    if (isAnimate) {
                      animatecctrl.forward();
                    } else {
                      animatecctrl.reverse();
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
