import 'package:bmicalculator/dependencies.dart';

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
  int weight = 69;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kSliderActive,
                        inactiveTrackColor: kSliderInactive,
                        thumbColor: kSliderThumb,
                        overlayColor: kSliderOverlay,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayShape: RoundSliderThumbShape(
                          enabledThumbRadius: 30,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: minHeight.toDouble(),
                        max: maxHeight.toDouble(),
                        onChanged: (double newHeight) {
                          setState(() {
                            height = newHeight.round();
                          });
                        },
                      ),
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
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'W E I G H T',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kNumTextStyle,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'kg',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          // Weight Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundBtn(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundBtn(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // AGE
                  Expanded(
                    child: SkeletalCard(
                      color: kActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'A G E',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: kNumTextStyle,
                              ),
                            ],
                          ),
                          // Weight Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundBtn(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundBtn(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Calculate
            BottomButton(
              buttonText: 'C A L C U L A T E  B M I',
              onTap: () {
                // For unnamed routes.
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ResultPage(),
                //   ),
                // );

                // For Map defined name routes
                Navigator.pushNamed(
                  context,
                  '/result',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Color(0xff1d1e33)
