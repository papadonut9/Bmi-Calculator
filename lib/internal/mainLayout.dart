
import '../dependencies.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

enum Gender {
  male,
  female,
}

class _MainLayoutState extends State<MainLayout> {
  Gender genderSelected;
  int height = 135;
  String strHeight;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'B M I    C A L C U L A T O R',
          style: kLabelTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            // Gender selection
            child: Row(
              children: <Widget>[
                // male button
                Expanded(
                  child: SkeletalCard(
                    onPressed: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                    // ternary operators used. see: https://rb.gy/17mbqa
                    color: genderSelected == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      string: 'M A L E',
                    ),
                  ),
                ),
                // female button
                Expanded(
                  child: SkeletalCard(
                    onPressed: () {
                      setState(() {
                        genderSelected = Gender.female;
                      });
                    },
                    // ternary operators used. see: https://rb.gy/17mbqa
                    color: genderSelected == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      string: 'F E M A L E',
                    ),
                  ),
                ),
              ],
            ),
          ),
          // height selection
          Expanded(
            child: SkeletalCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'H E I G H T',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumTextStyle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: minHeight.toDouble(),
                    max: maxHeight.toDouble(),
                    // divisions: 1750,
                    activeColor: Color(0xffeb1555),
                    inactiveColor: Color(0xff8d8e98),
                    onChanged: (double newHeight){
                      setState(() {
                        height = newHeight.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            // Age and weight selection
            child: Row(
              children: <Widget>[
                // weight
                Expanded(
                  child: SkeletalCard(
                    color: kActiveColor,
                  ),
                ),
                // age
                Expanded(
                  child: SkeletalCard(
                    color: kActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottombuttonColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomButtonHeight,
          ),
        ],
      ),
    );
  }
}
// Color(0xff1d1e33)
