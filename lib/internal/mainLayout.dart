import '../dependencies.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SkeletalCard(color: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: SkeletalCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SkeletalCard(
            color: Color(0xff1d1e33),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SkeletalCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: SkeletalCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffeb1555),
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            height: 90,
          ),
        ],
      ),
    );
  }
}

class SkeletalCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color color;
  // ignore: non_constant_identifier_names
  SkeletalCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
// Color(0xff1d1e33)
