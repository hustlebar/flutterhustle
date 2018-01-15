part of hussle;

class HussleProgress extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new Column(
      children: _buildProgress(),
    );
  }

  List<Widget> _buildProgress() {
    List<Widget> progressWidgets = new List<Widget>();

    progressWidgets.add(_buildDetermineProgress());
    progressWidgets.add(_buildUnDetermineProgress());
    progressWidgets.add(_buildCircularProgress());

    return progressWidgets;
  }

  Widget _buildDetermineProgress() {
    return new Padding(padding: const EdgeInsets.all(20.0),
      child: new LinearProgressIndicator(
        value: 1.0,
      ),
    );
  }

  Widget _buildUnDetermineProgress() {
    return new Padding(padding: const EdgeInsets.all(20.0),
      child: new LinearProgressIndicator(
      ),
    );
  }

  Widget _buildCircularProgress() {
    return new Padding(padding: const EdgeInsets.all(20.0),
      child: new CircularProgressIndicator(
      ),
    );
  }
}

