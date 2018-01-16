part of hussle;

class FavoriteWidget extends StatefulWidget {
  int count;
  FavoriteWidget(this.count);

  @override
  _FavoriteState createState() => new _FavoriteState(count);
}

class _FavoriteState extends State<FavoriteWidget> {
  bool isFavorite = false;
  int count;

  _FavoriteState(this.count);

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: _buildUi(),
    );
  }

  List<Widget> _buildUi() {
    List<Widget> children = new List<Widget>();

    children.add(new Container(
      padding: const EdgeInsets.all(0.0),
      child: new IconButton(
        icon: (isFavorite)
          ? new Icon(Icons.star)
          : new Icon(Icons.star_border),
        onPressed: _toggle
      ),
    ));

    children.add(new SizedBox(
      width: 20.0,
      child: new Text('$count'),
    ));

    return children;
  }

  void _toggle() {
    setState(() {
      if (isFavorite) {
        isFavorite = false;
        count -= 1;
      } else {
        isFavorite = true;
        count += 1;
      }
    });
  }
}