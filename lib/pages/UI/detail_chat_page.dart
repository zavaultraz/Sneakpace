part of '../pages.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {


    Widget productpreview() {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backgroundColor5,
              border: Border.all(
                color: primaryTextColor,
              )),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/image_shoes.png',
                      width: 70,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sepatu Gunung Ando Murah',
                          style: primaryTextStyle.copyWith(fontWeight: bold,fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          NumberFormat.currency(
                                  symbol: 'IDR ',
                                  locale: 'id_ID',
                                  decimalDigits: 0)
                              .format(799000),
                          style: priceTextStyle.copyWith(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              fontWeight: bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Image.asset('assets/button_close.png',width: 20,),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget ChatInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(bottom: 10), // Padding to avoid overflow at the bottom
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,  // Ensures the column doesn't take extra space
          children: [
            productpreview(), // Assuming this is a custom widget for product preview
            Container(
              height: 60, // Increased height for a more comfortable input field
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 12), // Adjusted padding for balance
              decoration: BoxDecoration(
                color: backgroundColor4, // Soft background color for the input container
                borderRadius: BorderRadius.circular(16), // Slightly more rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2), // Drop shadow effect for a floating feel
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      maxLines: null, // Allow multiline input
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        hintStyle: subtitleTextStyle.copyWith(color: Colors.grey), // Slight change for clarity
                        border: InputBorder.none, // Removed the default border for a cleaner look
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10), // Increased padding for better usability
                        focusedBorder: InputBorder.none, // Ensuring no border even when focused
                      ),
                      style: primaryTextStyle.copyWith(color: Colors.white), // Primary text style for input
                      keyboardType: TextInputType.multiline, // Supports multiline input
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Handle send button tap action
                    },
                    child: Image.asset(
                      'assets/button_send.png',
                      width: 35,
                      height: 35, // Ensuring the send button has a uniform size
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget konten(){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
          children: [
            ChatBuble(
              text: 'Product nya ready min',
              isSender: true,
              hasProduct: true,
            ),
            ChatBuble(
              text: 'ukuran 40',
              isSender: false,
            ),
            ChatBuble(
              text: 'ukuran 40',
              isSender: true,
            ),
            ChatBuble(
              text: 'kosong gan kalo ukuran 40',
              isSender : false
            ),
            ChatBuble(
              text: 'Warna hitam ukuran 41 ready min ?',
              isSender: true,
            ),
            ChatBuble(
              text: 'Sebentar saya cek stok dulu gan',
              isSender: false,
            )
          ],
        ),
     );
    }

    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryTextColor,
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle,
                ),
                Text(
                  'Online',
                  style: subtitleTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor1,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: konten(),
      bottomNavigationBar: ChatInput(),
    );
  }

}

