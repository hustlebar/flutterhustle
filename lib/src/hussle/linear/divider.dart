part of hussle;

class HussleDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Column(
        children: _buildDividers()
      ),
    );
  }

  List<Divider> _buildDividers() {
    List<Divider> dividers = new List<Divider>();

    dividers.add(new Divider(
      height: 1.0,
      indent: 10.0,
    ));

    return dividers;
  }
}