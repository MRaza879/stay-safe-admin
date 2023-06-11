import 'package:flutter/material.dart';
import 'package:saty_safe_admin/elements/header.dart';

import '../../../../configurations/color_constants.dart';
import '../../../../elements/custom_textfield.dart';
import '../../../../elements/sizes.dart';
import 'widget/send_recieve_msg.dart';

class ChatScreenBody extends StatefulWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

  @override
  State<ChatScreenBody> createState() => _ChatScreenBodyState();
}

class _ChatScreenBodyState extends State<ChatScreenBody> {
  bool showSendIcon = false;
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    reverse: true,
                    child: Column(
                      children: const [
                        SenderRecieverMessage(msg: 'Hello', isSentByMe: true),
                        SenderRecieverMessage(msg: 'Hello', isSentByMe: false),
                        SenderRecieverMessage(msg: 'Hello', isSentByMe: true),
                        SenderRecieverMessage(msg: 'Hello', isSentByMe: false),
                        SenderRecieverMessage(msg: 'Hello', isSentByMe: true),
                        SenderRecieverMessage(msg: 'Hello', isSentByMe: false),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Focus(
                          onFocusChange: (value) {
                            setState(() {
                              showSendIcon = value;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomTextField(
                                    inputTextColor: Colors.black87.withOpacity(0.5),
                                    controller: messageController,
                                    hintText: 'Send a message',
                                  ),
                                ),
                                if (!showSendIcon)
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.image,
                                      color: ColorConstants.kgreyColor,
                                      size: 34,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      kw10,
                      showSendIcon
                          ? ElevatedButton(
                              onPressed: () {
                                if (messageController.text.isEmpty) {
                                  return;
                                }
                                messageController.clear();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstants.kPrimaryColor,
                                  minimumSize: const Size(58, 58),
                                  alignment: Alignment.center,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  )),
                              child: const Center(
                                child: Icon(
                                  Icons.send_rounded,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
