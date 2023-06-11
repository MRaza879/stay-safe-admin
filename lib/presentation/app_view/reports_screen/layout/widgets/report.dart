import 'package:flutter/material.dart';

import '../../../../../elements/small_button.dart';
class Report extends StatelessWidget {
  int? serialNumber;
  String? name;
  String? location;
  String? date;
  String? contact;
  Report({
    super.key,
    this.contact,
    this.name,
    this.date,this.location,
    this.serialNumber
  });

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.symmetric(vertical: 7),
    //   height: 50,
    //   decoration: BoxDecoration(
    //       color: Colors.green.withOpacity(0.5),
    //       borderRadius: BorderRadius.circular(20),
    //   ),
    //   child: Row(
    //     children:  [
    //       SizedBox(child: Center(child: Text('1',style: TextStyle(color: Colors.red)),),width: 70,),
    //       SizedBox(child: Center(child: Text('Muhammad Raza',style: TextStyle(color: Colors.red)),),width: 180),
    //       SizedBox(child: Center(child: Text('Kohat',style: TextStyle(color: Colors.red)),),width: 180),
    //       SizedBox(child: Center(child: Text('01-01-2023',style: TextStyle(color: Colors.red)),),width: 180),
    //       SizedBox(child: Center(child: Text('03159605879',style: TextStyle(color: Colors.red)),),width: 180),
    //       Spacer(flex: 1),
    //
    //       Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 20),
    //         child: InkWell(
    //           onTap: (){},
    //           child: Container(
    //             decoration: BoxDecoration(
    //               color: Colors.red,
    //               borderRadius: BorderRadius.circular(15),
    //             ),
    //             child: Center(
    //               child: Text('View'),
    //             ),
    //             height: 40,
    //             width: 50,
    //           ),
    //         ),
    //       )
    //
    //     ],
    //   ),
    // );








    return Card(
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 7),
      color: Theme.of(context).splashColor.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            SizedBox(child: Center(child: Text(serialNumber.toString(),style: TextStyle(color: Colors.red)),),width: 70,),
                  SizedBox(child: Center(child: Text(name!,style: TextStyle(color: Colors.red)),),width: 180),
                  SizedBox(child: Center(child: Text(location!,style: TextStyle(color: Colors.red)),),width: 180),
                  SizedBox(child: Center(child: Text(date!,style: TextStyle(color: Colors.red)),),width: 180),
                  SizedBox(child: Center(child: Text(contact!,style: TextStyle(color: Colors.red)),),width: 180),
                  Spacer(flex: 1),
            SmallButton(text: 'View',height: 40,width: 70,)
          ],
        ),
        ),
    );
  }
}