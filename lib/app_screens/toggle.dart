import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Toggle extends StatefulWidget {
  final bool selectunselect;
  const Toggle(this.selectunselect);
  @override
  State<StatefulWidget> createState()
  {
    return _Toggle(selectunselect);
}
}
class _Toggle extends
State<Toggle> with
    SingleTickerProviderStateMixin
    {
      bool selectunselect;
      _Toggle(this.selectunselect);
      void toggleSwitch(bool value)
      {
        if(selectunselect==false){
          setState(() {
            selectunselect=true;
          });
             } else {
      setState(() {
      selectunselect = false;
      });
      }
      }

  bool isChecked = false;
  Duration _duration = Duration(milliseconds: 370);
  Animation<Alignment> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this,
        duration: _duration
    );

    _animation = AlignmentTween(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight
    ).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.bounceOut,
          reverseCurve: Curves.bounceIn
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {

        return Container(
          width: 110,
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
          decoration: BoxDecoration(
              color: isChecked ? Colors.green : Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                    color: isChecked ? Colors.green : Colors.red,
                    blurRadius: 12,
                    offset: Offset(0, 8)
                )
              ]
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: _animation.value,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_animationController.isCompleted) {
                        _animationController.reverse();
                      } else {
                        _animationController.forward();
                      }

                      isChecked = !isChecked;
                    });
                  },



                    child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),

              )],
          ),
        );
      },
    );
  }
}

