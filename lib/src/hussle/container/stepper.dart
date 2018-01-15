part of hussle;

class HussleStepper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return _buildStepper();
  }

  Stepper stepper;

  Stepper _buildStepper() {
    this.stepper = new Stepper(
      steps: _buildSteps(),
      onStepTapped: (int value) {
        print('Called');
        _onTapped(value);
      },
      onStepContinue: _onContinue,
      onStepCancel: _onCancel,
    );

    return stepper;
  }

  List<Step> _buildSteps() {
  List<Step> steps = new List<Step>();

    for (var i = 1; i <= 10; i++) {
      steps.add(new Step(
        title: new Text(i.toString()),
        content: new Text('Step $i'),
        isActive: i == 0,
        state: i % 2 == 0 ? StepState.error : StepState.indexed
      ));
    }

    return steps;
  }

  void _onTapped(int value) {
    print('Enters _onStepTapped() for $value');
  }
  
  void _onContinue() {
    print('Enters _onContinue()');
    
    print('Current step ${this.stepper.currentStep}');
  }

  void _onCancel() {
    print('Enters _onCancel()');
  }
}