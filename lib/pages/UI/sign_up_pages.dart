part of '../pages.dart';

class SignUpPages extends StatelessWidget {
  const SignUpPages({super.key});

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icon_name.png',
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your name',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget userNameInput() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icon_username.png',
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Username',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icon_email.png',
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your email addres',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icon_password.png',
                        width: 25,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your password',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, // Untuk menempatkan teks di tengah vertikal
        crossAxisAlignment: CrossAxisAlignment
            .center, // Untuk menempatkan teks di tengah horizontal
        children: [
          Text(
            'Sign Up',
            style:
                primaryTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
          ),
          SizedBox(
              height: 4), // Memberikan sedikit jarak antara login dan subtitle
          Text(
            'Register your account',
            style:
                subtitleTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
        ],
      ),
    );
  }

  Widget buttonSubmit(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/main');
          },
          child: Text(
            'Sign Up',
            style:
                primaryTextStyle.copyWith(fontSize: 19, fontWeight: semiBold),
          ),
        ),
      ),
    );
  }

  Widget footer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: subtitleTextStyle,
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/sign-in');
              },
              child: Text(
                'Sign in',
                style: primaryTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }



  Widget Option() {
    return Column(  // Gunakan Column agar kedua opsi ditampilkan secara vertikal
      children: [
        // Container untuk Facebook
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColor4, // Sesuaikan dengan warna latar belakang
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/facebook.png', // Ganti dengan path ikon Facebook
                  width: 25,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Facebook',
                  style: primaryTextStyle, // Gaya teks untuk Facebook
                ),
              ),
            ],
          ),
        ),

        // Memberikan jarak antar container
        SizedBox(height: 16),

        // Container untuk Google
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColor4, // Sesuaikan dengan warna latar belakang
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/google.png', // Ganti dengan path ikon Google
                  width: 25,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Google',
                  style: primaryTextStyle, // Gaya teks untuk Google
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            header(),
            nameInput(),
            userNameInput(),
            emailInput(),
            passwordInput(),
            buttonSubmit(context),
            SizedBox(height: 14,),
            Option(),
            Spacer(),
            footer(context),
          ],
        ),
      ),
    );
  }
}
