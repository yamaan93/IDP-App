import 'package:flutter/material.dart';
import 'package:idp_app/consts.dart';

class NewProjectForm extends StatefulWidget {
  @override
  _NewProjectFormState createState() => _NewProjectFormState();
}

class _NewProjectFormState extends State<NewProjectForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> publicity = ['public', 'public but lower'];

  String _name;
  bool _currentPublicity;
  String _ownerUID;

  @override
  Widget build(BuildContext context) {
    String yourmom = 'your mom';
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Create new project',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: kTextInputDecoration.copyWith(hintText: "Project name"),
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _name = val),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Drop down
          DropdownButtonFormField(
            decoration: kTextInputDecoration,
            //todo add actual public and private functions, not this garbo
            items: publicity.map((publicity) {
              return DropdownMenuItem(
                value: publicity ?? '0',
                child: Text('$publicity '),
              );
            }).toList(),
            onChanged: (val) {
              setState(() {
                _currentPublicity = true;
              });
            },
          ),
          RaisedButton(
              color: kMainThemeColor,
              child: Text(
                'Update',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                print(_name);
                print(_currentPublicity);
                print(_ownerUID);
              }),
        ],
      ),
    );
  }
}
