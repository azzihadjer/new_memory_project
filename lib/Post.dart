import 'package:flutter/material.dart';
import 'package:memory/product.dart';
//import 'package:projet1/widgets/TimeDate.dart';

// ignore: must_be_immutable
class PostDetails {
  final int id_service;
  final String description;

  PostDetails({
    required this.id_service,
    required this.description,
  });
}

// ignore: must_be_immutable
class Post extends StatelessWidget {
  /*List<PostDetails> posts = [
    PostDetails(
        id_service: 1, 
       description: 'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '03:10 pm'),
       PostDetails(
        id_service: 1, 
       description: ' Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '10:10 am'),
       PostDetails(
        id_service: 1, 
       description: 'XXXXXXXXX day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '17:06 pm'),
        PostDetails(
        id_service: 1, 
       description: 'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '03:10 pm'),
       PostDetails(
        id_service: 1, 
       description: ' Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '10:10 am'),
       PostDetails(
        id_service: 1, 
       description: 'XXXXXXXXX day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.',
       date: '17:06 pm'),
  ];*/
  Post(
      {this.user,
      this.text,
      this.product_name,
      this.colorText,
      this.colorback,
      this.fontSize,
      this.onTap});
  String? user, text, product_name;

  double? fontSize;
  Color? colorText, colorback;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      /*  child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xff7abd87),
          ),
        ),*/
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            //width: MediaQuery.of(context).size.width / 2,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      //color: Color(0xfffaee9e),
                      color: Colors.white,
                      blurRadius: 14.0,
                      offset: Offset(4.0, 4.0)),
                ],
                color: Colors.white24),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(
                            radius: 16.0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF7DBD72),
                                    Color(0xFFF1B602),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 14.0,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/user.png'),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          user!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xffb66200),
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Color(0xFFf9e866),
                                blurRadius: 15.0,
                                offset: Offset(5.0, 5.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (colorback != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 200,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset(
                          "images/bookmark.jpg",
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10.0,
                  ),
                  if (user != null && fontSize != null && colorText != null)
                    Text(
                      product_name!,
                      style: TextStyle(
                        fontSize: fontSize!,
                        color: colorText!,
                        fontWeight: FontWeight.w800,
                        shadows: [
                          Shadow(
                            color: Colors.yellowAccent,
                            blurRadius: 15.0,
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen()));
                    },
                    child: Text(
                      text!,
                      style: TextStyle(color: Colors.black54),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  /*    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (user != null && fontSize != null && colorText != null)
                            Text(
                              user!,
                              style: TextStyle(
                                fontSize: fontSize!,
                                color: colorText!,
                                fontWeight: FontWeight.w800,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            text!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
              
                          /*  if (colorText != null)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: Container(
                                    width: 7.0,
                                    height: 7.0,
                                    decoration: BoxDecoration(
                                      color: colorText!,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),*/
                        ],
                      ),
                    ),
                 */
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
