import 'package:flutter/material.dart';

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
              Container(
                child: Image.asset(
                  'images/rich.png',
                  fit: BoxFit.cover,
                ),
                // making the background color different
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.05),
                ),
                height: 200,
                //double.infinity to stretch to the end
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Top 10 tips to retire at 40 years old',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Man I wish I could retire that early',
                style: TextStyle(fontSize: 16),
              ),
              Container(
                //the width can control the divider length
                width: 50,
                child: Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset(
                  'images/house.png',
                  fit: BoxFit.cover,
                ),
                // making the background color different
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.05),
                ),
                height: 200,
                //double.infinity to stretch to the end
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'How to purchase a house',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'No. You cannot buy one from your local Costco',
                style: TextStyle(fontSize: 16),
              ),
              Container(
                //the width can control the divider length
                width: 50,
                child: Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset(
                  'images/apps.png',
                  fit: BoxFit.cover,
                ),
                // making the background color different
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.05),
                ),
                height: 200,
                //double.infinity to stretch to the end
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Seven Apps to find "The One"',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'How to find your "Tom Hanks"',
                style: TextStyle(fontSize: 16),
              ),
              Container(
                //the width can control the divider length
                width: 50,
                child: Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
