import 'package:bmicalculator/dependencies.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'B M I  C A L C U L A T O R',
              style: kLabelTextStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SkeletalCard(
                color: kActiveColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'N O R M A L',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '22.7',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Well, your weight is way proper for your age and height. \n Keep it on!!',
                      textAlign: TextAlign.center,
                      style: kPostBMIMessageTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonText: 'R E C A L C U L A T E  B M I',
            )
          ],
        ),
      ),
    );
  }
}
