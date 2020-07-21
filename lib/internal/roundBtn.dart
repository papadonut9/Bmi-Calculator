import 'package:bmicalculator/dependencies.dart';

class RoundBtn extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundBtn({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 0,
      disabledElevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: kFloatingButtonBG,
    );
  }
}
