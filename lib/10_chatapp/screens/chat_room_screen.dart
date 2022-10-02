import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../components/chat_icon_button.dart';
import '../components/other_chat.dart';
import '../components/my_chat.dart';
import '../components/time_line.dart';


class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      backgroundColor: Color(0xFFb2c7da),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "홍길동",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          Icon(
            FontAwesomeIcons.search,
            size: 20,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            FontAwesomeIcons.bars,
            size: 20,
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TimeLine(time: "2021년 1월 1일 금요일"),
                    OtherChat(
                        name: "홍길동", text: "새해 복 많이 받으세요", time: "오전 10:10"),
                    MyChat(text: "선생님도 많이 받으세요", time: "오후 2:15"),
                    //이후 만들 채팅 입력 UI를 이용해 새글이 추가되면 화면에 나열해줌
                    ...List.generate(chats.length, (index) => chats[index]),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                ChatIconButton(
                  icon: Icon(FontAwesomeIcons.plusSquare),
                ),
                Expanded(
                  child: Container(
                    child: TextField(
                      controller: _textEditingController,
                      maxLines: 1,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                      onSubmitted: _handleSubmitted,
                    ),
                  ),
                ),
                ChatIconButton(
                  icon: Icon(FontAwesomeIcons.smile),
                ),
                ChatIconButton(
                  icon: Icon(FontAwesomeIcons.cog),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _handleSubmitted(text) {
    _textEditingController.clear();

    setState(() {
      chats.add(
        MyChat(
          text: text,
          time: DateFormat("a K:m")
              .format(new DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
