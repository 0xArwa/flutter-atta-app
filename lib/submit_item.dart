import 'package:flutter/material.dart';
import 'User.dart';

class Submit_item extends StatefulWidget {
  @override
  State<Submit_item> createState() => _Submit_item();
}
/* صفحة اضافة غرض للتبرع به */
class _Submit_item extends State<Submit_item> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  String dropdownvalue = 'Choose City';
// List of items in our dropdown menu
  var items = [
    'Choose City',
    'Riyadh',
    'Najran',
    'Jeddah',
    'Dammam',
    'Taif',
    'Makkah',
    'Other',
  ];
  bool _value = false;
  int R = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
            builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Title'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your title';
                          }
                        },
                        onSaved: (val) =>
                            setState(() => _user.firstName = val!),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Last name';
                          }
                        },
                        onSaved: (val) => setState(() => _user.lastName = val!),
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your describe unused items',
                          labelText: 'describe unused items',
                        ),
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        maxLines: null,
                        maxLength: null,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: Text('City'),
                      ),
                      DropdownButton(
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),

                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                        child: Text('Section'),
                      ),
                      CheckboxListTile(
                          title: const Text('Clothes'),
                          value: _user.passions[User.SectionOne],
                          onChanged: (val) {
                            setState(
                                () => _user.passions[User.SectionOne] = val!);
                          }),
                      CheckboxListTile(
                          title: const Text('Electronic devices'),
                          value: _user.passions[User.SectionTwo],
                          onChanged: (val) {
                            setState(
                                () => _user.passions[User.SectionTwo] = val!);
                          }),
                      CheckboxListTile(
                          title: const Text('Books'),
                          value: _user.passions[User.SectionThree],
                          onChanged: (val) {
                            setState(
                                () => _user.passions[User.SectionThree] = val!);
                          }),
                      CheckboxListTile(
                          title: const Text('Furniture'),
                          value: _user.passions[User.SectionFour],
                          onChanged: (val) {
                            setState(
                                () => _user.passions[User.SectionFour] = val!);
                          }),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: RaisedButton(
                            onPressed: () {
                              final form = _formKey.currentState;
                              if (form!.validate()) {
                                form.save();
                                _user.save();
                                _showDialog(context);
                              }
                            },
                            child: Text('Save'),
                          )),
                    ],
                  ),
                )),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Thank you')));
  }
}
