import '../dependencies.dart';

class SkeletalCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color color;
  final Widget cardChild;
  final Function onPressed;
  // ignore: non_constant_identifier_names
  SkeletalCard({this.onPressed, @required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
