part of hussle;

class HussleSlider extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new SliderState();
  }
}

class SliderState extends State<HussleSlider> {
  double currentValue = 0.0;

  @override
  Widget build(BuildContext context) {
    var slider = new Slider(
      value: currentValue,
      min: 0.0,
      max: 100.0,
      label: 'P',
      divisions: 10,
      onChanged: (double value) {
        setState(() {
          currentValue = value;
          print('Current value is $value');
        });
      }
    );

    var label = new Text(currentValue.toString());
    
    return new Column(
      children: <Widget>[

        slider,

        label

      ],
    );
  }
}