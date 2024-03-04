
import '../../../common_libraries.dart';

class InputTutorial extends StatefulWidget {
  const InputTutorial({super.key});

  @override
  _InputTutorialState createState() => _InputTutorialState();
}

class _InputTutorialState extends State<InputTutorial> {
  bool _switchValue = false;
  double _sliderValue = 0.5;
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text("TextField"),
            const SizedBox(height: 16),
            _buildTextField(context),
            const SizedBox(height: 16),
            const Text("Form"),
            const SizedBox(height: 16),
            _buildForm(context),
            const SizedBox(height: 16),
            const Text("Slider"),
            const SizedBox(height: 16),
            _buildSlider(context),
            const SizedBox(height: 16),
            const Text("Switch"),
            const SizedBox(height: 16),
            _buildSwitch(context),
            const SizedBox(height: 16),
            const Text("ToggleButtons"),
            const SizedBox(height: 16),
            _buildToggleButtons(context),
            const SizedBox(height: 16),
            const Text("Checkbox"),
            const SizedBox(height: 16),
            _buildCheckbox(context),
            const SizedBox(height: 16),
            const Text("Radio"),
            const SizedBox(height: 16),
            _buildRadio(context),
            const SizedBox(height: 16),
            const Text("DatePicker"),
            const SizedBox(height: 16),
            _buildDatePicker(context),
            const SizedBox(height: 16),
            const Text("TimePicker"),
            const SizedBox(height: 16),
            _buildTimePicker(context),
            const SizedBox(height: 16),
            const Text("DropdownButton"),
            const SizedBox(height: 16),
            _buildDropdownButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Enter your text',
        border: const OutlineInputBorder(),
        fillColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: const OutlineInputBorder(),
              fillColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          // Add other form fields here...
        ],
      ),
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Slider(
      value: _sliderValue,
      onChanged: (newValue) {
        setState(() {
          _sliderValue = newValue;
        });
      },
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _buildSwitch(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (newValue) {
        setState(() {
          _switchValue = newValue;
        });
      },
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _buildToggleButtons(BuildContext context) {
    return ToggleButtons(
      children: [
        const Icon(Icons.format_bold),
        const Icon(Icons.format_italic),
        const Icon(Icons.format_underline),
      ],
      isSelected: [true, false, false],
      onPressed: (index) {},
      color: Theme.of(context).colorScheme.primary,
      selectedColor: Theme.of(context).colorScheme.secondary,
    );
  }

  Widget _buildCheckbox(BuildContext context) {
    return Checkbox(
      value: _checkboxValue,
      onChanged: (newValue) {
        setState(() {
          _checkboxValue = newValue!;
        });
      },
      fillColor: MaterialStateProperty.resolveWith(
            (states) => Theme.of(context).colorScheme.primary,
      ),
    );
  }

  Widget _buildRadio(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: true,
          groupValue: true,
          onChanged: (newValue) {},
          fillColor: MaterialStateProperty.resolveWith(
                (states) => Theme.of(context).colorScheme.primary,
          ),
        ),
        const Text('Option 1'),
        Radio(
          value: false,
          groupValue: true,
          onChanged: (newValue) {},
          fillColor: MaterialStateProperty.resolveWith(
                (states) => Theme.of(context).colorScheme.primary,
          ),
        ),
        const Text('Option 2'),
      ],
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      child: const Text('Select Date'),
    );
  }

  Widget _buildTimePicker(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      child:  const Text('Select Time'),
    );
  }

  Widget _buildDropdownButton(BuildContext context) {
    return DropdownButton<String>(
      value: 'Option 1',
      onChanged: (newValue) {},
      items: <String>['Option 1', 'Option 2', 'Option 3']
          .map<DropdownMenuItem<String>>(
            (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
          .toList(),
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      underline: Container(
        height: 2,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

String codeTextFieldWidget = '''
TextField(
  decoration: InputDecoration(
    labelText: 'Enter your text',
    border: OutlineInputBorder(),
    fillColor: Theme.of(context).colorScheme.primary,
  ),
)
''';

String codeFormWidget = '''
Form(
  child: Column(
    children: [
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Username',
          border: OutlineInputBorder(),
          fillColor: Theme.of(context).colorScheme.primary,
        ),
      ),
      // Add other form fields here...
    ],
  ),
)
''';

String codeSliderWidget = '''
Slider(
  value: 0.5,
  onChanged: (newValue) {},
  activeColor: Theme.of(context).colorScheme.primary,
)
''';

String codeSwitchWidget = '''
Switch(
  value: true,
  onChanged: (newValue) {},
  activeColor: Theme.of(context).colorScheme.primary,
)
''';

String codeToggleButtonsWidget = '''
ToggleButtons(
  children: [
    Icon(Icons.format_bold),
    Icon(Icons.format_italic),
    Icon(Icons.format_underline),
  ],
  isSelected: [true, false, false],
  onPressed: (index) {},
  color: Theme.of(context).colorScheme.primary,
  selectedColor: Theme.of(context).colorScheme.secondary,
)
''';

String codeCheckboxWidget = '''
Checkbox(
  value: true,
  onChanged: (newValue) {},
  fillColor: MaterialStateProperty.resolveWith(
      (states) => Theme.of(context).colorScheme.primary),
)
''';

String codeRadioWidget = '''
Row(
  children: [
    Radio(
      value: true,
      groupValue: true,
      onChanged: (newValue) {},
      fillColor: MaterialStateProperty.resolveWith(
          (states) => Theme.of(context).colorScheme.primary),
    ),
    const Text('Option 1'),
    Radio(
      value: false,
      groupValue: true,
      onChanged: (newValue) {},
      fillColor: MaterialStateProperty.resolveWith(
          (states) => Theme.of(context).colorScheme.primary),
    ),
    const Text('Option 2'),
  ],
)
''';

String codeDatePickerWidget = '''
ElevatedButton(
  onPressed: () {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
  },
  child: const Text('Select Date'),
  style: ElevatedButton.styleFrom(
    primary: Theme.of(context).colorScheme.primary,
  ),
)
''';

String codeTimePickerWidget = '''
ElevatedButton(
  onPressed: () {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  },
  child: const Text('Select Time'),
  style: ElevatedButton.styleFrom(
    primary: Theme.of(context).colorScheme.primary,
  ),
)
''';

String codeDropdownButtonWidget = '''
DropdownButton<String>(
  value: 'Option 1',
  onChanged: (newValue) {},
  items: <String>['Option 1', 'Option 2', 'Option 3']
      .map<DropdownMenuItem<String>>(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList(),
  icon: Icon(Icons.arrow_drop_down),
  iconSize: 24,
  elevation: 16,
  underline: Container(
    height: 2,
    color: Theme.of(context).colorScheme.primary,
  ),
)
''';
