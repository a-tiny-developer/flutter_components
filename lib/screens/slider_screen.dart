// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../theme/theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 100;
  bool sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: sliderValue,
            onChanged: sliderEnabled
                ? (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  }
                : null,
          ),
          // Checkbox(
          //   value: sliderEnabled,
          //   onChanged: (value) {
          //     setState(() {
          //       sliderEnabled = value ?? true;
          //     });
          //   },
          // ),
          // Switch(
          //   value: sliderEnabled,
          //   onChanged: (value) {
          //     setState(() {
          //       sliderEnabled = value;
          //     });
          //   },
          // ),
          CheckboxListTile(
            title: const Text('Enable Slider'),
            activeColor: AppTheme.primary,
            value: sliderEnabled,
            onChanged: (value) {
              setState(() {
                sliderEnabled = value ?? true;
              });
            },
          ),
          SwitchListTile.adaptive(
            title: const Text('Enable Slider'),
            activeColor: AppTheme.primary,
            value: sliderEnabled,
            onChanged: (value) {
              setState(() {
                sliderEnabled = value;
              });
            },
          ),
          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                  'https://images.unsplash.com/photo-1503432697506-6986abec65ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2FsbHBhcGVyJTIwcGhvbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                ),
                fit: BoxFit.contain,
                width: sliderValue,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 50,
          // )
        ],
      ),
    );
  }
}
