import '../dependencies.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String string;

  IconContent({@required this.icon, @required this.string});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 100,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$string',
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
