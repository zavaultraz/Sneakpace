part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget MenuContent(String title) {
      return Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Text(
              title,
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      );
    }

    Widget Content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/image_profile.png'),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kairi Risol',
                          style: primaryTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 24),
                        ),
                        Text(
                          'kairi@gmail.com',
                          style: subtitleTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(onTap: (){},child: Icon(Icons.exit_to_app_rounded,color: Colors.red,size: 35,))
                ],
              ),
              SizedBox(height: 12,),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              SizedBox(height: 10,),
              Text('Account',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold)),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: MenuContent('Edit Profile'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Your Profile'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Payement Method'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('History Purchase'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Setting'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                    fontSize: 22, fontWeight: semiBold),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Privacy & Policy'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Term of service'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Rate App'),
              ),
              GestureDetector(
                onTap: () {},
                child: MenuContent('Help Center'),
              ),
            ],
          ),
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Profile',
          style: primaryTextStyle.copyWith(fontSize: 27, fontWeight: semiBold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      );
    }

    return ListView(
      children: [
        header(),
        Content(),
      ],
    );
  }
}
