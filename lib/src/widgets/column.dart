part of widgets;

//Custom column implementation
class CustomColumn extends StatelessWidget {
  final String value;
  CustomColumn(this.value);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Text(value),
        new Center(
          child: new Image.asset('graphics/ic_cool.png')
        )

      ],
    );
  }
}