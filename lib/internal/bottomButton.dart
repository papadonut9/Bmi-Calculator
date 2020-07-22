import '../dependencies.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  BottomButton({@required this.onTap, @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomButtonColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 7),
        width: double.infinity,
        height: kBottomButtonHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}