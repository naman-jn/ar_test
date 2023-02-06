import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isBackEnabled;
  const CustomAppBar({
    Key key,
    this.title,
    this.isBackEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.13,
      width: screenSize.width,
      padding: EdgeInsets.only(top: 30, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isBackEnabled
              ? InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black87,
                  ),
                )
              : SizedBox(),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
