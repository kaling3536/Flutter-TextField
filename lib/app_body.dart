import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  final ValueNotifier<String> _inputName=ValueNotifier('');
  AppBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final nameField = TextField(
      controller: nameController,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: '輸入姓名',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );
    final btn = ElevatedButton(
      child: Text('確定'),
      onPressed: () => _inputName.value = nameController.text,
    );
    final widget = Center(
      child: Column(
        children: <Widget>[
          Container(child: nameField,width: 200,margin: EdgeInsets.symmetric(vertical:10),),
          Container(child: btn,margin: EdgeInsets.symmetric(vertical:10),),
          Container(
              child: ValueListenableBuilder<String>(
                builder: _inputNameWidgetBuilder,
                valueListenable: _inputName,
              ),
            margin: const EdgeInsets.symmetric(vertical: 10),),
        ],
      ),
    );
    return widget;
  }

  Widget _inputNameWidgetBuilder(BuildContext context, String inputName, Widget? child) {
    final widget = Text(inputName, style: const TextStyle(fontSize: 20));
    return widget;
  }
}
