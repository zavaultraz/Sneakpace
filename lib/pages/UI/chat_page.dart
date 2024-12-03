part of '../pages.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget Header() {
    return AppBar(
      backgroundColor: backgroundColor2,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(fontWeight: semiBold),
      ),
      automaticallyImplyLeading: false,
    );
  }

  Widget Message() {
    return Container(
      padding: EdgeInsets.only(left : 15, top: 15),
      child: Column(
        children: [
          ChatCard(),
          ChatCard(),
        ],
      ),
    );
  }
  Widget noMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 300), // Menambahkan padding di atas dan bawah
      child: Center(
        child: Text(
          'Mulai Lakukan Pembicaraan',
          style: primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 25),
        ),
      ),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Header(),
         Message(),
        ],
      ),
    );
  }
}
