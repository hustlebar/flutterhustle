part of hussle;

class HussleDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return buildUi(context);
  }

  Widget buildUi(BuildContext context) {
    var button = new RaisedButton(
      child: new Text('Show dialog'),
      onPressed: () => _onClick(context)
    );

    return new Column(
      children: <Widget>[
        new Center(
          child: button,
        )
      ],
    );
  }

  void _onClick(BuildContext context) {
    print('Enters _onClick()');
    onDialog(context);
  }

  void onDialog(BuildContext context) {
    var dialog = new SimpleDialog(
      title: const Text('Select your location'),
      children: <Widget>[
        new SimpleDialogOption(
          child: new Text(Location.Andhra.toString()),
        ),

        new SimpleDialogOption(
          child: new Text(Location.Chennai.toString()),
        ),

        new SimpleDialogOption(
          child: new Text(Location.Pondycherry.toString()),
        ),

        new SimpleDialogOption(
          child: new Text(Location.Kerala.toString()),
        ),

        new SimpleDialogOption(
          child: new Text(Location.Karnataka.toString()),
        )

      ],
    );

    showDialog<Location>(
      context: context,
      child: dialog
    ).then((Location selected) {
      print('Selected location: $selected');
    });
  }
}

enum Location {Chennai, Pondycherry, Kerala, Andhra, Karnataka}