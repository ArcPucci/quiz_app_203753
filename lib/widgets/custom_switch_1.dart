import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch1 extends StatefulWidget {
  const CustomSwitch1({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  final bool initialValue;
  final ValueChanged<bool> onChanged;

  @override
  State<CustomSwitch1> createState() => _CustomSwitch1State();
}

class _CustomSwitch1State extends State<CustomSwitch1> {
  late bool _isOn;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialValue;
  }

  void _toggle() {
    setState(() {
      _isOn = !_isOn;
      widget.onChanged(_isOn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: SizedBox(
        width: 62.r,
        height: 28.r,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Image.asset('assets/png/rect1.png', fit: BoxFit.fill),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: _isOn ? 3.r : 30.r,
              child: Padding(
                padding: EdgeInsets.only(top: 1.r),
                child: SizedBox(
                  width: 29.r,
                  height: 21.r,
                  child: Image.asset(
                    _isOn ? 'assets/png/on.png' : 'assets/png/off.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
