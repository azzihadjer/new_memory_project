import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category(
      {this.categoryService, this.colorText, this.colorShadow, this.onTap});
  String? categoryService;
  Color? colorText, colorShadow;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            SizedBox(
              height: 1.0,
            ),
            Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(),
                color: Color(0xFFDEDFDA),
              ),
            
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 2),
                padding: EdgeInsets.all(10),
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff7abd87),
                  ),
                ),
                child: Text(
                  categoryService!,
                  //  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: colorText,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: colorShadow!,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
