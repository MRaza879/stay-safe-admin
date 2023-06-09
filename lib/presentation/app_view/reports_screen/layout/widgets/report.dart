import 'package:flutter/material.dart';
class Report extends StatelessWidget {
  const Report({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children:  [
          SizedBox(child: Center(child: Text('1'),),width: 70,),
          SizedBox(child: Center(child: Text('Muhammad Raza'),),width: 180),
          SizedBox(child: Center(child: Text('Kohat'),),width: 180),
          SizedBox(child: Center(child: Text('01-01-2023'),),width: 180),
          SizedBox(child: Center(child: Text('03159605879'),),width: 180),
          Spacer(flex: 1),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text('View'),
              ),
              height: 30,
              width: 50,
            ),
          )

        ],
      ),
    );
  }
}