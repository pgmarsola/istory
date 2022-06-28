import 'package:flutter/material.dart';
import 'package:istory/utils/colors.dart';
import 'package:istory/utils/responsive.dart';

class Load extends StatefulWidget {
  final double? value;

  Load(this.value);

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(responsive(context) * 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/locaos.png',
            scale: responsive(context) * 0.2,
          ),
          SizedBox(
            height: responsive(context) * 2,
          ),
          ClipRRect(
            borderRadius:
                BorderRadius.all(Radius.circular(responsive(context) * 4)),
            child: LinearProgressIndicator(
                backgroundColor: transparent,
                color: white,
                value: widget.value,
                minHeight: 8,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.black)),
          )
        ],
      ),
    );
  }
}
