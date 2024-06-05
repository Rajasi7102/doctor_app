import 'package:doctor_app/Patientscreen/Screen2.dart';
import 'package:flutter/material.dart';



class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAPDOS',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          color: const Color.fromARGB(255, 13, 25, 155), // Dark blue color
        ),
      ),
      ),
      home: MyHomePage(title: 'SAPDOS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: const NetworkImage('https://media.istockphoto.com/id/1216426542/photo/portrait-of-happy-man-at-white-background-stock-photo.jpg?s=1024x1024&w=is&k=20&c=B5eyezdL3ZQT6taFl-begxfSf2VMUomVb_onTbJBpGI='),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Satish',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Color.fromARGB(181, 1, 16, 29),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Doctor\'s List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          Container(
  height: 400, 
  width: 1500, 
  child: GridView.count(
    crossAxisCount: 2, 
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    childAspectRatio: 4, 
    children: [
     
       Container(
    height: 300, 
    width: 50, 
    child: DoctorCard(
      doctorImage: 'assets/doctor1.jpeg',
      doctorName: 'Dr.Atharva Varma',
      doctorSpecialization: 'Doctor\'s specialization',
      rating: 5,
    ),
  ),
      DoctorCard(
        doctorImage: 'assets/doctor2.jpg',
        doctorName: 'Dr.Piyush Agrawal',
        doctorSpecialization: 'Doctor\'s specialization',
        rating: 4,
      ),
       Container(
    height: 300,
    width: 50, 
    child: DoctorCard(
      doctorImage: 'assets/doctor3.jpg',
      doctorName: 'Dr.Varad Surname',
      doctorSpecialization: 'Doctor\'s specialization',
      rating: 5,
    ),
  ),
      DoctorCard(
        doctorImage: 'assets/doctor4.jpg',
        doctorName: 'Dr.Priya Jagtap',
        doctorSpecialization: 'Doctor\'s specialization',
        rating: 3,
      ),
      DoctorCard(
        doctorImage: 'assets/doctor5.jpg',
        doctorName: 'Dr.Neha Naik',
        doctorSpecialization: 'Doctor\'s specialization',
        rating: 2,
      ),
      // DoctorCard(
      //   doctorImage: 'assets/doctor6.jpg',
      //   doctorName: 'Dr.Pooja Patil',
      //   doctorSpecialization: 'Doctor\'s specialization',
      //   rating: 3,
      // ),
      InkWell(
     onTap: () {
     Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) =>Screen2(title: '',),
                      ));
    
  },
  child: DoctorCard(
    doctorImage: 'assets/doctor6.jpg',
    doctorName: 'Dr.Pooja Patil',
    doctorSpecialization: 'Doctor\'s specialization',
    rating: 3,
  ),
)
    ],
  ),
),
            SizedBox(height: 20),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'SAPDOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.grid_view),
              title: Text('Categories'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Appointment'),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorSpecialization;
  final int rating;

  DoctorCard({
    required this.doctorImage,
    required this.doctorName,
    required this.doctorSpecialization,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(doctorImage),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      doctorSpecialization,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
             children: [
                      for (int i = 0; i < rating; i++)
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                      for (int i = rating; i < 5; i++)
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                          size: 16,
                        ),
                    ],
            ),
          ],
        ),
      ),
    );
  }
}