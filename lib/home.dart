import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/text_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Flutter Provider")),
      ),
      body: Center(
        child: Consumer<TextProvider>(
          builder: (context, data, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data.customText,
                  style: TextStyle(
                    color: data.customColor,
                    fontSize: data.initialFontSize,
                  ),
                ),
                Switch(
                  value: data.isLightBlue,
                  onChanged: (value) {
                    data.onSwitchChanged(value);
                  },
                ),
                Slider(
                  value: data.initialFontSize,
                  max: 50,
                  onChanged: (value) {
                    data.onSliderChanged(value);
                  },
                ),
                Text("Size: ${data.initialFontSize.round()}")
              ],
            );
          },
        ),
      ),
    );
  }
}
