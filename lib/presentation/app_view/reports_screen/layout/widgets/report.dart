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
          color: Colors.green.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children:  [
          SizedBox(child: Center(child: Text('1',style: TextStyle(color: Colors.red)),),width: 70,),
          SizedBox(child: Center(child: Text('Muhammad Raza',style: TextStyle(color: Colors.red)),),width: 180),
          SizedBox(child: Center(child: Text('Kohat',style: TextStyle(color: Colors.red)),),width: 180),
          SizedBox(child: Center(child: Text('01-01-2023',style: TextStyle(color: Colors.red)),),width: 180),
          SizedBox(child: Center(child: Text('03159605879',style: TextStyle(color: Colors.red)),),width: 180),
          Spacer(flex: 1),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text('View'),
                ),
                height: 40,
                width: 50,
              ),
            ),
          )

        ],
      ),
    );
  }
}