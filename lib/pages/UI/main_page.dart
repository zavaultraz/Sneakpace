part of '../pages.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}


class _MainPagesState extends State<MainPages> {
  int currentIndex = 0;

  Widget body(){
    switch(currentIndex){
      case 0:return HomePage();
      case 1:return ChatPage();
      case 2:return WishlistPage();
      case 3:return HomePage();
      case 4 : return ProfilePage();
      default : return HomePage();

    }
  }

  Widget floatButton() {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      backgroundColor: primaryColor,
      onPressed: () {
      },
      child: Image.asset(
        'assets/icon_cart.png',
        width: 30,
      ),
    );
  }

  Widget customButtonNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      clipBehavior: Clip.antiAlias,
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: backgroundColor4,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.grey, // Warna ikon saat dipilih
          unselectedItemColor: Colors.grey, // Warna ikon saat tidak dipilih
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, // Label lebih tebal saat dipilih
            fontSize: 12, // Ukuran font label lebih kecil agar sesuai
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.normal, // Label biasa saat tidak dipilih
            fontSize: 12, // Ukuran font label lebih kecil agar sesuai
          ),
          iconSize: 24, // Ukuran ikon yang lebih pas (lebih kecil dari sebelumnya)
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24, // Ukuran ikon lebih kecil agar tidak overflow
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_chat.png',
                width: 24, // Ukuran ikon lebih kecil agar tidak overflow
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_wishlist.png',
                width: 24, // Ukuran ikon lebih kecil agar tidak overflow
              ),
              label: 'Wish',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 24, // Ukuran ikon lebih kecil agar tidak overflow
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
