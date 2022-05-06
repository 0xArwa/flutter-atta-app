/*كلاس اليوزر*/

class User {
  static const String SectionOne = 'Clothes';
  static const String SectionTwo = 'Electronic devices';
  static const String SectionThree = 'Books';
  static const String SectionFour = 'Furniture';

  String firstName = '';
  String lastName = '';
  Map<String, bool> passions = {
    SectionOne: false,
    SectionTwo: false,
    SectionThree: false,
    SectionFour: false,
  };
  bool newsletter = false;

  save() {
    print('saving user using a web service');
  }
}
