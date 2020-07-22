// initialise your constants here.
import 'package:bmicalculator/dependencies.dart';

final kLabelTextStyle = GoogleFonts.montserrat(
  fontSize: 25,
  color: Color(0xff8d8e98),
);
final kBottomButtonTextStyle = GoogleFonts.montserrat(
  fontSize: 30,
  // //option A
  // color: Color(0xff111328), //option A
  // fontWeight: FontWeight.w500, //option A

  //option B
  // color: Colors.white,  //option B
  // fontWeight: FontWeight.w500,
  
  //option C
  color: Color(0xff111328), //option C
  
);

final kNumTextStyle = GoogleFonts.montserrat(
  fontSize: 50,
  fontWeight: FontWeight.w800,
);

const kBottomButtonHeight = 90.0;
const kActiveColor = Color(0xff1d1e33);
const kInactiveColor = Color(0xff111328);
const kBottomButtonColor = Color(0xffeb1555);
const kBottomButtonTextColor = kInactiveColor;

const kSliderThumb = kBottomButtonColor;
const kSliderOverlay = Color(0x15eb1555);
const kSliderActive = Colors.white;
const kSliderInactive = Color(0xff8d8e98);

const kFloatingButtonBG = Color(0xff4c4f5e);

const maxHeight = 220;
const minHeight = 120;

// Results Styling
final kTitleStyle = GoogleFonts.montserrat(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

final kResultTextStyle = GoogleFonts.montserrat(
  color: Color(0xff24d876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

final kBMITextStyle = GoogleFonts.montserrat(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);

final kPostBMIMessageTextStyle = GoogleFonts.montserrat(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  
);