part of '../pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
        mainAxisAlignment: MainAxisAlignment.center,  // Untuk menempatkan teks di tengah vertikal
        crossAxisAlignment: CrossAxisAlignment.center,  // Untuk menempatkan teks di tengah horizontal
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
          ),
          SizedBox(height: 4), // Memberikan sedikit jarak antara login dan subtitle
          Text(
            'Sign in to continue',
            style: subtitleTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
        ],
      ),
    );
  }

  Widget OptionText(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('-------------',style: subtitleTextStyle,),
            SizedBox(width: 10,),
            Text(' Masuk Menggunakan ',style: subtitleTextStyle.copyWith(fontWeight: semiBold),),
            Text('-------------',style: subtitleTextStyle,),
          ],
        ),
      ),
    );
  }

  Widget Option() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10,right: 10),
      child: Row(
        children: [
          Container(
            width: 180,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/facebook.png',
                    width: 30,
                  ),
                  SizedBox(width: 7,),
                  Text('Facebook',style: primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 17),)
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: 190,
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/google.png',
                      width: 30,
                    ),
                    SizedBox(width: 7,),
                    Text('Google',style: primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 17),)
                  ],
                ),
              ),
            ),
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
            Navigator.pushReplacementNamed(context, '/main-page');
          },
          child: Text(
            'Sign in',
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
              'Don\'t have an account ?',
              style: subtitleTextStyle,
            ),
            SizedBox(width: 7,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/sign-up');
              },
              child: Text(
                'Sign up',
                style: primaryTextStyle,
              ),
            )
          ],
        ),
      ),
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
            emailInput(),
            passwordInput(),
            buttonSubmit(context),
            OptionText(),
            Option(),
            Spacer(
            ),
            footer(context),
          ],
        ),
      ),
    );
  }
}
