part of '../pages.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {

    Widget Content(){
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 85,
                child: Image.asset('assets/org.png',),
              ),
            ),
            Text('El Users',style:primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 30),)
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor3,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new) ,
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        automaticallyImplyLeading: false,
      );
    }
    return Scaffold(
      appBar: header(),
      backgroundColor: backgroundColor3,
      body: Content(),
    );
  }
}
