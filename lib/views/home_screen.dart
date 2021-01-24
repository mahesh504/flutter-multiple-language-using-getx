import 'package:flutter/material.dart';
import 'package:flutter_getx_multiple_language/config/Localization_Service.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedLang = LocalizationService.langs.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Code with Mahesh'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text('hello'.tr),
            SizedBox(height: 20),
            DropdownButton(
              icon: Icon(Icons.arrow_drop_down),
              value: _selectedLang,
              items: LocalizationService.langs.map((String lang) {
                return DropdownMenuItem(value: lang, child: Text(lang));
              }).toList(),
              onChanged: (String value) {
                // updates dropdown selected value
                setState(() => _selectedLang = value);
                // gets language and changes the locale
                LocalizationService().changeLocale(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
