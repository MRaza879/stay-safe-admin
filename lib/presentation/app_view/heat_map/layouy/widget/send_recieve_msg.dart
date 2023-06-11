import 'package:flutter/material.dart';

import '../../../../../configurations/color_constants.dart';
import '../../../../../configurations/res.dart';
import '../../../../../elements/custom_text.dart';
import '../../../../../elements/sizes.dart';

class SenderRecieverMessage extends StatelessWidget {
  final bool isSentByMe;
  final String msg;

  const SenderRecieverMessage(
      {super.key, required this.msg, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return isSentByMe
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: ColorConstants.kPrimaryColor.withOpacity(1),
                      borderRadius: BorderRadius.circular(10)),
                  child: CustomText(
                    text: msg,
                    softwrap: true,
                    color: Colors.white,
                  ),
                ),
              ),
              kw10,
              CircleAvatar(
                radius: 15,
                backgroundColor: Theme.of(context).splashColor.withOpacity(1),
                backgroundImage: const AssetImage(Res.kPlaceHolder),
              ),
              kw10,
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              kw10,
              CircleAvatar(
                radius: 15,
                backgroundColor: Theme.of(context).splashColor.withOpacity(1),
                backgroundImage: const AssetImage(Res.kPlaceHolder),
              ),
              kw10,
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: ColorConstants.kBackgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    msg,
                    maxLines: 10,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          );
  }
}
