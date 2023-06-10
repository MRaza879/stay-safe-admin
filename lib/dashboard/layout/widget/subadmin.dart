import 'package:flutter/material.dart';
class SubAdmin extends StatelessWidget {
  String? username;
  String? email;
  int? serial;
  SubAdmin({
    this.serial,this.username,this.email
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
      ),

      child: Row(
        children:  [
          SizedBox(child: Center(child: Text(serial.toString()!,style: TextStyle(color: Colors.red),),),width: 70,),
          SizedBox(child: Center(child: Text(username!,style: TextStyle(color: Colors.red),),),width: 180),
          SizedBox(child: Center(child: Text(email!,style: TextStyle(color: Colors.red),),),width: 180),
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
                  child: Text('Block'),
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
