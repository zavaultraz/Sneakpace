part of '../pages.dart';

class MainPages extends StatelessWidget {
  const MainPages({super.key});

  Widget floatButton() {
    return FloatingActionButton(
      backgroundColor: primaryColor,
      onPressed: () {},
      child: Image.asset(
        'assets/icon_cart.png',
        width: 30,
      ),
    );
  }

  Widget customButtonNav(){
    return BottomNavigationBar(
      backgroundColor: backgroundColor4,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/icon_home.png',width: 26,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icon_chat.png',width: 26,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icon_wishlist.png',width: 26,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icon_profile.png',width: 26,),
          label: '',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text(
          'Main Page',
          style: primaryTextStyle,
        ),
      ),

    );
  }
}
