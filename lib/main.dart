import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Dev',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEAA5FF),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flutter background demo page',
          style: TextStyle(
            color: const Color.fromARGB(162, 0, 187, 212),
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final List<Tab> _tabs = [
    Tab(
      icon: Icon(Icons.person, color: const Color.fromARGB(255, 250, 130, 130)),
      child: Text('PERSONAL',
          style: TextStyle(color: const Color.fromARGB(255, 250, 130, 130))),
    ),
    Tab(
      icon: Icon(Icons.school, color: const Color.fromARGB(255, 250, 130, 130)),
      child: Text('EDUCATION',
          style: TextStyle(color: const Color.fromARGB(255, 250, 130, 130))),
    ),
    Tab(
      icon: Icon(Icons.lightbulb_outline,
          color: Color.fromARGB(255, 250, 130, 130)),
      child: Text('SKILLS',
          style: TextStyle(color: const Color.fromARGB(255, 250, 130, 130))),
    ),
    Tab(
      icon: Icon(Icons.book, color: const Color.fromARGB(255, 250, 130, 130)),
      child: Text('INTERESTS',
          style: TextStyle(color: Color.fromARGB(255, 250, 130, 130))),
    ),
    Tab(
      icon: Icon(Icons.contact_mail, color: Color.fromARGB(255, 250, 130, 130)),
      child: Text('CONTACT',
          style: TextStyle(color: const Color.fromARGB(255, 250, 130, 130))),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PERSONAL DETAILS',
          style: TextStyle(
              color: Color.fromARGB(245, 9, 0, 12)), // Set text color to white
        ),
        backgroundColor:
            Color.fromARGB(200, 247, 253, 219), // App bar background color
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      backgroundColor:
          Color.fromARGB(200, 247, 253, 219), // Scaffold background color
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(
                          255, 0, 0, 0), // You can set the border color here
                      width: 2.0, // This specifies the border width
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'lib/assets/aaron.jpg',
                      fit: BoxFit.cover,
                      width: 150, // Adjust the width to match container width
                      height:
                          150, // Adjust the height to match container height
                    ),
                  ),
                ),
                SizedBox(height: 10), // Optional: Adds spacing below the image
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      DefaultTextStyle(
                        style: TextStyle(
                          color: const Color.fromARGB(255, 250, 130, 130),
                          fontSize: 25,
                        ),
                        child: Column(
                          children: [
                            Text('RON AARON D. BAGUI'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  child: Column(
                    children: [
                      Text(''),
                      Text(
                          'I am Ron Aaron D. Bagui, and I am a recently a 4th year college  with a Bachelors Degree in Information Technology Majoy In Business Analytics. '),
                      Text(''),
                      Text(
                          'Iam seeking a full-time opportunity where I can employ my skills.'),
                      Text(''),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: const Color.fromARGB(255, 250, 130, 130),
                    fontSize: 18,
                  ),
                  child: Column(
                    children: [
                      Text('AGE:'),
                      Text(''),
                    ],
                  ),
                ),

                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  child: Column(
                    children: [
                      Text('21'),
                      Text(''),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const DefaultTextStyle(
            style: TextStyle(
              color: Colors.black,
            ),
            child: Column(
              children: [
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text(' '),
                      Text('COLLEGE:'),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 130, 130),
                  ),
                  child: Column(
                    children: [
                      Text(''),
                      Text('BATANGAS STATE UNIVERSITY - TNEU (ALANGILAN)'),
                      Text(''),
                      Text('BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY'),
                      Text(''),
                      Text('2020 - 2025'),
                      Text(''),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text(' '),
                      Text('SENIOR HIGH SCHOOL:'),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 130, 130),
                  ),
                  child: Column(
                    children: [
                      Text(''),
                      Text('SOVEREIGN SHEPERERD SCHOOL OF VALUES AND LEARNING'),
                      Text(''),
                      Text('SCIENCE TECHNOLOGY ENGINEERING AND MATHEMATICS'),
                      Text(''),
                      Text('2021 - 2025'),
                      Text(''),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text(' '),
                      Text('JUNIOR HIGH SCHOOL:'),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 130, 130),
                  ),
                  child: Column(
                    children: [
                      Text(''),
                      Text('SOVEREIGN SHEPERERD SCHOOL OF VALUES AND LEARNING'),
                      Text(''),
                      Text('2018 - 2020'),
                      Text(''),
                      Text(''),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text(' '),
                      Text('ELEMENTARY SCHOOL:'),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 130, 130),
                  ),
                  child: Column(
                    children: [
                      Text(''),
                      Text('SOVEREIGN SHEPERERD SCHOOL OF VALUES AND LEARNING'),
                      Text(''),
                      Text('BACHELOR OF SCIENCE IN INFORMTION TECHNOLOGY'),
                      Text(''),
                      Text('2013 - 2017'),
                      Text(''),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const DefaultTextStyle(
            style: TextStyle(
              color: Colors.cyanAccent,
            ),
            child: Column(
              children: [
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text(' '),
                      Text('Technical Skills:'),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 130, 130),
                  ),
                  child: Column(
                    children: [
                      Text(''),
                      Text('DESIGNING'),
                      Text(''),
                      Text('COMPUTING'),
                      Text(''),
                      Text('DATA ANALYSIS'),
                      Text(''),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Text(' '),
                            Text('Non-Technical Skills:'),
                          ],
                        ),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Color.fromARGB(255, 250, 130, 130),
                        ),
                        child: Column(
                          children: [
                            Text(''),
                            Text('TEAMWORK'),
                            Text(''),
                            Text('GOOD LISTENER'),
                            Text(''),
                            Text('SITUATION-AWARNESS'),
                            Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          DefaultTextStyle(
            style: TextStyle(
              color: const Color.fromARGB(255, 250, 130, 130),
            ),
            child: Column(
              children: [
                Text(' '),
                Text(''),
                Text('INTERESTS: '),
                Text(''),
                Text(''),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Column(
                    children: [
                      Text(
                          'As a business analytics student with a keen interest in information technology, my professional interests focus on leveraging data-driven '),
                      Text(
                          'strategies to optimize business operations and decision-making processes. I specialize in predictive analytics, data visualization, and IT project management.'),
                      Text(
                          ' My research is centered around the integration of advanced analytics techniques in business intelligence systems to enhance organizational performance.'),
                      Text(
                          'Notably, I have worked on projects such as developing a predictive model for customer churn analysis and implementing a business dashboard for real-time performance monitoring.'),
                      Text(
                          'My findings have been presented at industry conferences and published in several academic journals.'),
                      Text(''),
                    ],
                  ),
                ),
              ],
            ),
          ),
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.black,
            ),
            child: Column(
              children: [
                Text(' '),
                Text('Email:'),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 130, 130),
                  ),
                  child: Column(
                    children: [
                      Text('21-00408@g.batstate-u.edu.ph'),
                      Text(''),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text(' '),
                      Text('Phone Number:'),
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Color.fromARGB(255, 250, 130, 130),
                        ),
                        child: Column(
                          children: [
                            Text('+639 274 822 766'),
                            Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
