import 'package:flutter/material.dart';
import 'package:memory/ProfilePage.dart';

class ProductScreen extends StatelessWidget {
  List<String> details = ['Craft Type', 'Materrial', 'Craftsman', 'Location'];
  List<String> inf_details = [
    '  ART  ',
    '   Resin   ',
    '  Mona    ',
    '    _    '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f1e9),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xff578f53),
                      ),
                    ),
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                        color: Color(0xff578f53),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xff578f53),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 260,
                width: 240,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: Image.asset(
                  "images/chair.jpg",
                  height: MediaQuery.of(context).size.height / 5,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Chair ",
              style: TextStyle(
                color: Color(0xff578f53),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Color(0xFF387A5C),
                    blurRadius: 10.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 110,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 214, 207),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Description:',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Text(
                      ' Modern Chair, the color as order',
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(height: 10),

            /*        Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 226, 180),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: details.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Center(
                              child: Text(
                                details[index],
                                style: TextStyle(
                                  color: Color(0xFFCB8F72),
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                  //  fontFamily: 'Pacifico',
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: details.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                inf_details[index],
                                style: TextStyle(
                                  color: Color(0xFFCB8F72),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  //  fontFamily: 'Pacifico',
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
         */
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        child: Container(
          height: 60,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            color: Color(0xffaadcb6),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Contact us",
                    style: TextStyle(
                      color: Color(0xfff4f1e9),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              radius: 14.0,
                              backgroundColor: Colors.amber,
                              backgroundImage: AssetImage("images/sawing.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()),
                          );
                        },
                        child: Text(
                          " Ahmed Carpenter",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFF387A5C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      /*  bottomNavigationBar: Container(
        height: 75,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xFFB0BB9D),
          borderRadius: BorderRadius.circular(30),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Connect whith us",
                style: TextStyle(
                  color: Color(0xFF637454),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 18,
                    width: 20,
                    child: Image.asset(
                      "images/phone.png",
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "0697456666",
                    style: TextStyle(
                      color: Color(0xFFC56A19),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 12,
                      width: 12,
                      child: Image.asset("images/at.png")),
                  SizedBox(width: 5),
                  Text(
                    "exemple@gmail.com",
                    style: TextStyle(
                      color: Color(0xFFC56A19),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
   */
    );
  }
}
