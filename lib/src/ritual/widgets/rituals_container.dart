part of rituals;

class RitualsContainer extends StatelessWidget {
  RitualsContainer(this.imagePath);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Container _buildUi() {
    return new Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new ExactAssetImage(imagePath),
              fit: BoxFit.scaleDown
          )
      ),
    );
  }
}