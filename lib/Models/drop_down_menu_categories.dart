import 'package:betkom2/Constant.dart';
import 'package:flutter/material.dart';

var adminMajor;

class DropDownMenuAdminCategory extends StatefulWidget {
  const DropDownMenuAdminCategory({super.key});
  @override
  State<DropDownMenuAdminCategory> createState() =>
      _DropDownMenuAdminCategoryState();
}

class _DropDownMenuAdminCategoryState extends State<DropDownMenuAdminCategory> {
  String value = 'Plumbing';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
          adminMajor = value;
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: 'Plumbing',
          child: Text(
            'Plumbing',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Electricity',
          child: Text(
            'Electricity',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Clothes DryClean',
          child: Text(
            'Clothes DryClean',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Car dry clean',
          child: Text(
            'Car dry clean',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Internet Fiber',
          child: Text(
            'Internet Fiber',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
      ],
    );
  }
}

var nationality;

class DropDownMenuNationality_Category extends StatefulWidget {
  const DropDownMenuNationality_Category({super.key});
  @override
  State<DropDownMenuNationality_Category> createState() =>
      _DropDownMenuNationality_CategoryState();
}

class _DropDownMenuNationality_CategoryState
    extends State<DropDownMenuNationality_Category> {
  String value = 'Amman';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
          nationality = value;
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: 'Amman',
          child: Text(
            'Amman',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Al Zaraqa',
          child: Text(
            'Al Zaraqa',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Al Mafraq',
          child: Text(
            'Al Mafraq',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Irbid',
          child: Text(
            'Irbid',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Al Ramtha',
          child: Text(
            'Al Ramtha',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Salt',
          child: Text(
            'Salt',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),

        DropdownMenuItem<String>(
          value: 'Maan',
          child: Text(
            'Maan',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Aqaba',
          child: Text(
            'Aqaba',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        //  DropdownMenuItem<String>(
        //   child: Text('Medical center',style: TextStyle(fontFamily: kFontFamily),),
        //   value: 'Medical center',
        // ),
        //   DropdownMenuItem<String>(
        //   child: Text('Public Relations Department',style: TextStyle(fontFamily: kFontFamily),),
        //   value: 'Public Relations Department',
        // ),
        //  DropdownMenuItem<String>(
        //   child: Text('Flag Service',style: TextStyle(fontFamily: kFontFamily),),
        //   value: 'Flag service',
        // ),
      ],
    );
  }
}

var nationalityUser;

class DropDownMenuNationalityUser_Category extends StatefulWidget {
  const DropDownMenuNationalityUser_Category({super.key});

  @override
  State<DropDownMenuNationalityUser_Category> createState() =>
      _DropDownMenuNationalityUser_CategoryState();
}

class _DropDownMenuNationalityUser_CategoryState
    extends State<DropDownMenuNationalityUser_Category> {
  String value = 'Amman';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
          nationality = value;
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: 'Amman',
          child: Text(
            'Amman',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Al Zaraqa',
          child: Text(
            'Al Zaraqa',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Al Mafraq',
          child: Text(
            'Al Mafraq',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Irbid',
          child: Text(
            'Irbid',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Al Ramtha',
          child: Text(
            'Al Ramtha',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Salt',
          child: Text(
            'Salt',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),

        DropdownMenuItem<String>(
          value: 'Maan',
          child: Text(
            'Maan',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Aqaba',
          child: Text(
            'Aqaba',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        //  DropdownMenuItem<String>(
        //   child: Text('Medical center',style: TextStyle(fontFamily: kFontFamily),),
        //   value: 'Medical center',
        // ),
        //   DropdownMenuItem<String>(
        //   child: Text('Public Relations Department',style: TextStyle(fontFamily: kFontFamily),),
        //   value: 'Public Relations Department',
        // ),
        //  DropdownMenuItem<String>(
        //   child: Text('Flag Service',style: TextStyle(fontFamily: kFontFamily),),
        //   value: 'Flag service',
        // ),
      ],
    );
  }
}

var electricityProblem;

class DropDownMenuElectricityService_Category extends StatefulWidget {
  const DropDownMenuElectricityService_Category({super.key});

  @override
  State<DropDownMenuElectricityService_Category> createState() =>
      _DropDownMenuElectricityService_CategoryState();
}

class _DropDownMenuElectricityService_CategoryState
    extends State<DropDownMenuElectricityService_Category> {
  String value = 'Fridge';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
          nationality = value;
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: 'Fridge',
          child: Text(
            'Fridge',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Cooker',
          child: Text(
            'Cooker',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Air condition',
          child: Text(
            'Air condition',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Microwave',
          child: Text(
            'Microwave',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Airfryer',
          child: Text(
            'Airfryer',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'TV',
          child: Text(
            'TV',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Washing machine',
          child: Text(
            'Washing machine',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Dishwasher',
          child: Text(
            'Dishwasher',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Cooler',
          child: Text(
            'Cooler',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Dryer machine',
          child: Text(
            'Dryer machine',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Other',
          child: Text(
            'Other',
            style: TextStyle(fontFamily: kFontFamily),
          ),
        )
      ],
    );
  }
}
