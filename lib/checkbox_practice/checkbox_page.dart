import 'package:flutter/material.dart';

class checkboxpage extends StatefulWidget {
  const checkboxpage({Key? key}) : super(key: key);

  @override
  State<checkboxpage> createState() => _checkboxState();
}

class _checkboxState extends State<checkboxpage> {
  bool andro = true;
  bool flu = true;
  bool check = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: andro,
                onChanged: (value) {
                  setState(() {
                    andro = value!;
                    // andro = !andro;
                  });
                },
              ),
              Text("Darshak")
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Flutter'),
                value: flu,
                onChanged: (value) {
                  setState(() {
                    flu = value!;
                  });
                },
              )),
              Expanded(
                  child: CheckboxListTile(
                subtitle: Text("100"),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Flutter'),
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = value!;
                  });
                },
              ))
            ],
          )
        ],
      ),
    );
  }
}
