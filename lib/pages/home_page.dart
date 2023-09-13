import 'package:flutter/material.dart';
import 'package:resume_app/widgets/card_custom.dart';
import 'package:resume_app/pages/editing_page.dart';
import 'package:resume_app/widgets/progress_bar.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  late List<String> experiences;
  late List<String>  educations;
  late List<String>  skillss;
  late List<String> intrestss;
  late Map<String, dynamic> cvData = {
    'skills': 'Backend Developer, Web Developer, Flutter, Laravel',
    'interests': 'Fullstack Developer, Mobile App Developer',
    'experience': 'Freelance Web Designer, Senior Web Developer, Semi Senior Web Developer',
    'education': 'Master in Backend Web (2014-2016), Master in Laravel (2016-2018), Bachiller in Sistemas (2019-2020)',
  };

   @override
  void initState() {
    super.initState();
    cvData = {
      'skills': 'Backend Developer, Web Developer, Flutter, Laravel',
      'interests': 'Fullstack Developer, Mobile App Developer',
      'experience': 'Freelance Web Designer, Senior Web Developer, Semi Senior Web Developer',
      'education': 'Master in Backend Web (2014-2016), Master in Laravel (2016-2018), Bachiller in Sistemas (2019-2020)',
    };
    experiences = cvData['experience'].split(', ');
    educations = cvData['education'].split(', ');
    skillss = cvData['skills'].split(', ');
    intrestss  = cvData['interests'].split(', ');
  }

  // Function to update CV data
  void _updateCVData(Map<String, dynamic> editedData) {
    setState(() {
      cvData = editedData;
      experiences = cvData['experience'].split(', ');
      educations = cvData['education'].split(', ');
      skillss = cvData['skills'].split(', ');
      intrestss  = cvData['interests'].split(', ');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040305),
      appBar: AppBar(
        backgroundColor: Color(0xff040305),
        elevation: 0,
        title: Text('About Me', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Your full name in a circular frame with rounded black border
                  CircleAvatar(
                    radius: 50.0, // Adjust the size as needed
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 48.0, // Adjust the size as needed
                      backgroundImage: AssetImage('your_profile_image.png'), // Replace with your image asset
                    ),
                  ),
                  SizedBox(height: 10.0), // Add some spacing
                  // Slack username
                  SizedBox(height: 10.0), // Add some spacing
                  Center(
                    child: Text(
                      'Slack Username: Tevin Milla',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  // GitHub handle
                  SizedBox(height: 10.0), // Add some spacing
                  Center(
                    child: Text(
                      'GitHub: MrazTevin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  // A brief personal bio
                  SizedBox(height: 10.0), // Add some spacing
                  Center(
                    child: Text(
                      'I am interested in Mobile Development more than Web Development. I create visually aesthetic designs no matter what.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0), // Add some spacing
                ],

              ),

              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff1F1E25),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(cvData['skills'], style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 30.0),
                    // ProgressBarCustom(skill: 'Backend Developer', porcentaje: '95',color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: skillss[0], porcentaje: '95',color: Color(0xffA36FF6), barra: 285),
                    ProgressBarCustom(skill: skillss[1], porcentaje: '80',color: Color(0xff83DBC5), barra: 250),
                    ProgressBarCustom(skill: skillss[2], porcentaje: '75',color: Color(0xff0385DC), barra: 210),
                    ProgressBarCustom(skill: skillss[3], porcentaje: '80',color: Color(0xffF7605D), barra: 250),
                  ],
                ),
              ),

              SizedBox(height: 15.0),
              // Text(cvData['interests'], style: TextStyle(color: Colors.white, fontSize: 18)),
              // SizedBox(height: 15.0),
              Column(
                children: [
                  Row(children: [
                    Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xff1F1E25),
                          borderRadius: BorderRadius.circular(20.0)),
                      // child: Text('Fullstack Developer', style: TextStyle(color: Colors.white, fontSize: 15)),
                      child: Text(intrestss[0], style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xff1F1E25),
                          borderRadius: BorderRadius.circular(20.0)),
                      // child: Text('Fullstack Developer', style: TextStyle(color: Colors.white, fontSize: 15)),
                      child: Text(intrestss[1], style: TextStyle(color: Colors.white, fontSize: 15)),
                    )
                  ])
                ],
              ),

              SizedBox(height: 15.0),
              Text('Education', style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(height: 15.0),
              // CardCustom(text: this.cvData['education'],colorIcon: Color(0xffA36FF6), isEducation: true, education: '2014 - 2016 . University',),
              // CardCustom(text: 'Master in Backend Web',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2014 - 2016 . University',),
              // CardCustom(text: 'Master in Laravel',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2016 - 2018 . University',),
              // CardCustom(text: 'Bachiller in Sistemas',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2019 - 2020 . University',),
              // CardCustom(text: education, colorIcon: Color(0xffA36FF6), isEducation: true, education: '2019 - 2020 . University',),
              SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: educations.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardCustom(text: educations[index], colorIcon: Color(0xffA36FF6), isEducation: true);
                  },
                ),
              ),
              SizedBox(height: 15.0),
              Text('Experience', style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(height: 15.0),
              // CardCustom(text: cvData['experience'], colorIcon: Color(0xffA36FF6), isEducation: false),
              SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: experiences.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardCustom(text: experiences[index], colorIcon: Color(0xffA36FF6), isEducation: false);
                  },
                ),
              ),

              // CardCustom(text: 'Freelance Web Designer',colorIcon: Color(0xffA36FF6), isEducation: false),
              // CardCustom(text: 'Senior Web Developer',colorIcon: Color(0xff83DBC5), isEducation: false),
              // CardCustom(text: 'Semi Senior Web Developer',colorIcon: Color(0xff0385DC), isEducation: false),
              // CardCustom(text: 'Junior Web Developer',colorIcon: Color(0xffE62755), isEducation: false),
              // CardCustom(text: 'Freelance App Flutter',colorIcon: Color(0xffF7605D), isEducation: false),
              SizedBox(height: 15.0,),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditPage(cvData: cvData, onUpdateCVData: _updateCVData)),
                  );
                },
                child: Text('Edit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
