import 'package:flutter/material.dart';
import 'package:flutter_app_third/custom_widgets/widget_blog.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true, //need this to put the text in centre
        title: Text(
          'The Blog',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widgetBlog(
                imagePath: 'images/rich.png',
                title: 'Top 10 tips to retire at 40 years old',
                subTitle: 'Man I wish I could retire that early',
              ),
              widgetBlog(
                imagePath: 'images/house.png',
                title: 'How to purchase a house',
                subTitle: 'No. You cannot buy one from your local Costco',
              ),
              widgetBlog(
                  imagePath: 'images/apps.png',
                  title: 'Seven Apps to find "The One"',
                  subTitle: 'How to find your "Tom Hanks"'),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.blueGrey[900],
                    minimumSize: Size(double.infinity, 45),
                    elevation: 0),
                onPressed: () {
                  print("Terms and Conditions");
                },
                child: Text("Terms and Conditions"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size(double.infinity, 45),
                    elevation: 0),
                onPressed: () {
                  print('Sign Out');
                  Navigator.pop(context);
                },
                child: Text("Sign Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
