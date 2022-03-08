import 'package:flutter/material.dart';

const double _kTextAndIconTabHeight = 53.0;
const double _kMarginBottom = 3.0;

class IconTab extends StatefulWidget {
  final String? text;
  final String? icon;
  final Color? color;

  @override
  IconTabState createState() {
    return IconTabState();
  }

  const IconTab({Key? key, this.text, this.icon, this.color})
      : assert(text != null || icon != null || color != null),
        super(key: key);
}

class IconTabState extends State<IconTab> {

  Widget _buildLabelText() {
    return Text(
      widget.text!!,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: TextStyle(color: widget.color),
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    double height = _kTextAndIconTabHeight;
    Widget label = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image(
            image: AssetImage(widget.icon!!),
            height: 30.0,
            width: 30.0,
          ),
          margin: const EdgeInsets.only(bottom: _kMarginBottom),
        ),
        _buildLabelText()
      ],
    );
    return SizedBox(
      height: height,
      child: Center(
        child: label,
        widthFactor: 1.0,
      ),
    );
  }
}
