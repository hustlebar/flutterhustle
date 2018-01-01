part of widgets;

class CustomColumn extends StatelessWidget {
  String value;
  CustomColumn(this.value);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Expanded(child: new Text(value))
      ],
    );
  }
}