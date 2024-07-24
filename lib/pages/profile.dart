import 'package:flutter/material.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 305,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(67, 147, 234, 1),
                      Color.fromRGBO(18, 203, 220, 1),
                      /*Color.fromRGBO(255, 74, 44, 1),
                      Color.fromRGBO(255, 148, 0, 1)*/
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(25)),
                child: Flexible(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              'https://mighty.tools/mockmind-api/content/human/56.jpg'),
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Text(
                          'Isabel Kirkland',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Rating: 4.5/5.0',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'About Me:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'I have over 5 years of experience in home cleaning services. '
                'I pay attention to details and ensure your home is spotless.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Services Provided:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• General Cleaning\n'
                '• Deep Cleaning\n'
                '• Laundry Services\n'
                '• Window Cleaning\n'
                '• Carpet Cleaning',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Availability:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Monday : Friday: 9:00 AM - 6:00 PM\n'
                'Saturday : 10:00 AM - 4:00 PM\n'
                'Sunday : Unavailable',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
