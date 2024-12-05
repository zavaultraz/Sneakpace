part of '../pages.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override


  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      elevation: 0,
      title: Text(
        'Favorite List',
        style: primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
      ),
    );
  }

  Widget build(BuildContext context) {
    Widget Content(){
      return Expanded(child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          WishlistCard(),
          WishlistCard(),
          WishlistCard(),
        ],
      ),
      );
    }

    Widget EmptyList() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You don\'t have dream stuff',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: medium, color: Colors.white),
            ),
            Text(
              'Let\'s find your favorite',
              style: secondaryTextStyle.copyWith(fontWeight: semiBold),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed((context), '/main');
              },
              child: Text('Find Now',style: primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 18),),
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  side: BorderSide(
                    color: primaryColor,
                  )),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [header(), Content()],
    );
  }
}
