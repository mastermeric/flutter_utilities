import 'package:flutter/material.dart';

import 'package:country_code_picker/country_code_picker.dart';

class CountyListPage extends StatefulWidget {
  @override
  _CountyListPageState createState() => _CountyListPageState();
}

class _CountyListPageState extends State<CountyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ülke Listesi"),
        centerTitle: true,
      ),
      body: Center(
        child: CountryCodePicker(
          initialSelection: 'TR',

          showCountryOnly: true,
          showOnlyCountryWhenClosed: true, // false ile Tel Number gorunur..
          //showCountryOnly: false,
          onChanged: (value) {
            /*BlurryDialog  alert = BlurryDialog("Abort","Gelen Data : " + value.toString(),null);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );*/
          },
        ),
      ),
    );
  }
}

showAlert(BuildContext context, String value) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Gelen Üülke Kodu : " + value),
        actions: <Widget>[
          TextButton(
            child: Text(
              "Cancel",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.blue),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text(
              "Continue",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.blue),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
