import 'package:flutter/material.dart';
import 'package:memory/Category.dart';
import 'package:memory/Post.dart';

class Service {
  final String name_service;
  Service({required this.name_service});
}

class CategoryDetails {
  final int id_category;
  final String categoryService;
  CategoryDetails({
    required this.id_category,
    required this.categoryService,
  });
}

class PostDetails {
  final int id_service;
  final String user, service_name, product_name;

  PostDetails({
    required this.user,
    required this.product_name,
    required this.id_service,
    required this.service_name,
    //required this.description,
  });
}

// ignore: must_be_immutable
class Posts extends StatelessWidget {
  //const Posts({super.key});
  List<Service> service = [];
  List<CategoryDetails> categories = [
    CategoryDetails(id_category: 1, categoryService: "Farming "),
    CategoryDetails(id_category: 2, categoryService: "Carpentry"),
    CategoryDetails(id_category: 3, categoryService: "ART"),
    CategoryDetails(id_category: 4, categoryService: "Build"),
    CategoryDetails(id_category: 5, categoryService: "Hand Craft"),
    CategoryDetails(id_category: 6, categoryService: "Sawing"),
    CategoryDetails(id_category: 7, categoryService: "Paint"),
  ];
  List<PostDetails> posts = [
    PostDetails(
        id_service: 1,
        user: 'RESIN World',
        service_name: ' details',
        product_name: 'Book Holder'),
    PostDetails(
        id_service: 1,
        user: 'AbdelHay',
        service_name: 'Welding',
        product_name: 'Door'),
    PostDetails(
        id_service: 1,
        user: 'Haithem',
        service_name: 'Carpentry',
        product_name: 'Set of tables '),
    PostDetails(
        id_service: 1,
        user: 'RESIN World',
        service_name: 'Hand Craft',
        product_name: 'Decoration'),
    PostDetails(
        id_service: 1,
        user: 'AbdelHay',
        service_name: 'Welding',
        product_name: ''),
    PostDetails(
        id_service: 1,
        user: 'Haithem',
        service_name: 'Carpentry',
        product_name: ' '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEDFDA),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFBFFFC7),
                          Color(0xFFf9e866),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xff578f53)),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xff578f53),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFBFFFC7),
                          Color(0xFFf9e866),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xff578f53)),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff578f53),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffaadcb6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                child: Text(
                                  "Categories:",
                                  //  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Color(0xff578f53),
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Color(0xfffaee9e),
                                        blurRadius: 15.0,
                                        offset: Offset(7.0, 7.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  // color: Color(0xffaadcb6),
                                ),
                                /*   decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Color(0xFFBFFFC7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),*/
                                height: 60.0,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      buildCategory(categories[index]),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                          // width: 5.0,
                                          ),
                                  itemCount: categories.length,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      //scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => buildPost(posts[index]),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 2.0,
                      ),
                      itemCount: posts.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(CategoryDetails category) => Row(children: [
        Category(
          categoryService: '${category.categoryService}',
          colorText: Color(0xff3e7e55),
          colorShadow: Color(0xfffaee9e),
        ),
        SizedBox(
          width: 10.0,
        )
      ]);
  Widget buildPost(PostDetails post) => Column(children: [
        SizedBox(
          height: 10.0,
        ),
        Post(
          /* onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },*/
          user: '${post.user}',
          text: '${post.service_name}',
          product_name: '${post.product_name}',
          colorText: Color(0xff578f53),
          colorback: Color.fromARGB(255, 224, 134, 127),
          fontSize: 20.0,
        )
      ]);
}
