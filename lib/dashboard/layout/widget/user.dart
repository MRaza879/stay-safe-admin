import 'package:flutter/material.dart';
class User extends StatelessWidget {
  String? name;
  String? email;
  String? contact;
  int? serial;
   User({
     this.serial,this.name,this.contact,this.email
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
          SizedBox(child: Center(child: Text(serial.toString()!),),width: 70,),
          SizedBox(child: Center(child: Text(name!),),width: 180),
          SizedBox(child: Center(child: Text(email!),),width: 180),
          SizedBox(child: Center(child: Text(contact!),),width: 180),
          Spacer(flex: 1),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){},
                ),
              ),
              height: 40,
              width: 50,
            ),
          )

        ],
      ),
    );
  }
}
