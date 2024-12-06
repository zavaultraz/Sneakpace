part of '../pages.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {

    Widget ButtonUpdate(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text('Update',style: primaryTextStyle.copyWith(fontSize: 18,color: Colors.white,fontWeight: semiBold,),textAlign: TextAlign.center,),
        ),
      );
    }

    Widget EmailInput(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 14),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(color: backgroundColor4,borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'kairi@gmail.com',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(Icons.mail_outline_rounded,color: Colors.white,size: 28,),
            ),
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
      );
    }

    Widget UsernameInput(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(color: backgroundColor4,borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'El Users',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(Icons.info_outline,color: Colors.white,size: 28,),
            ),
            style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
                color: Colors.white
            ),
          ),
        ),
      );
    }

    Widget nameInput(){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(color: backgroundColor4,borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Kairi Risol',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(Icons.person,color: Colors.white,size: 28,),
            ),
            style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
                color: Colors.white
            ),
          ),
        ),
      );
    }

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
            Text('El Users',style:primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 30),),
            nameInput(),
            UsernameInput(),
            EmailInput(),
            ButtonUpdate(),
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
