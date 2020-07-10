import 'package:bmicalculator/dependencies.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Color(0xff04040c),
      //   accentColor: Colors.purple,
      //   backgroundColor: Color(0xff04040c),
        
      // ),
      home: MainLayout(),
    );
  }
}
