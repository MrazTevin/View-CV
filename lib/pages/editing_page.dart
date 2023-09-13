import 'package:flutter/material.dart';



class EditPage extends StatefulWidget {
  final Map<String, dynamic> cvData;
  final Function(Map<String, dynamic>) onUpdateCVData;

  EditPage({required this.cvData, required this.onUpdateCVData});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController _skillsController;
  late TextEditingController _interestsController;
  late TextEditingController _experienceController;
  late TextEditingController _educationController;

  @override
  void initState() {
    super.initState();
    _skillsController = TextEditingController(text: widget.cvData['skills']);
    _interestsController = TextEditingController(text: widget.cvData['interests']);
    _experienceController = TextEditingController(text: widget.cvData['experience']);
    _educationController = TextEditingController(text: widget.cvData['education']);
  }
void _saveCVData() {
  Map<String, dynamic> editedData = {
    'skills': _skillsController.text,
    'interests': _interestsController.text,
    'experience': _experienceController.text,
    'education': _educationController.text + ', ',
  };
  widget.onUpdateCVData(editedData);
  Navigator.pop(context);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit CV Data'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _skillsController,
              decoration: InputDecoration(
                labelText: 'Skills',
              ),
            ),
            TextField(
              controller: _interestsController,
              decoration: InputDecoration(
                labelText: 'Interests',
              ),
            ),
            TextField(
              controller: _experienceController,
              decoration: InputDecoration(
                labelText: 'Experience',
              ),
            ),
            TextField(
              controller: _educationController,
              decoration: InputDecoration(
                labelText: 'Education',
              ),
            ),
            SizedBox(height: 16.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffEBE9E2),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0)
                ),
                onPressed: _saveCVData,
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _EditingPageState extends State<EditingPage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController slackUsernameController = TextEditingController();
//   TextEditingController githubHandleController = TextEditingController();
//   TextEditingController bioController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit CV'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Full Name'),
//             ),
//             TextFormField(
//               controller: slackUsernameController,
//               decoration: InputDecoration(labelText: 'Slack Username'),
//             ),
//             TextFormField(
//               controller: githubHandleController,
//               decoration: InputDecoration(labelText: 'GitHub Handle'),
//             ),
//             TextFormField(
//               controller: bioController,
//               decoration: InputDecoration(labelText: 'Bio'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Save the edited data and notify the home page
//                 widget.onSave(
//                   nameController.text,
//                   slackUsernameController.text,
//                   githubHandleController.text,
//                   bioController.text,
//                 );
//                 Navigator.pop(context);
//               },
//               child: Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
