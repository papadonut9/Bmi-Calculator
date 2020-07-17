import 'package:bmicalculator/dependencies.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: SafeArea(
        child: MainLayout(),
      ),
    );
  }
}
