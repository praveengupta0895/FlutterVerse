import '../../../common_libraries.dart';


class TextTutorials extends StatelessWidget {
  const TextTutorials({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildText('This is a simple Text widget.', context),
          const SizedBox(height: 16),
          _buildSelectableText('This is a SelectableText widget.', context),
        ],
      ),
    );
  }

  Widget _buildText(String text, BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontSize: 18,
      ),
    );
  }

  Widget _buildSelectableText(String text, BuildContext context) {
    return SelectableText(
      text,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: 18,
      ),
    );
  }
}

String codeTextWidget = '''
Text(
  'This is a simple Text widget.',
  style: TextStyle(
    color: Theme.of(context).colorScheme.primary,
    fontSize: 18,
  ),
)
''';

String codeSelectableTextWidget = '''
SelectableText(
  'This is a SelectableText widget.',
  style: TextStyle(
    color: Theme.of(context).colorScheme.secondary,
    fontSize: 18,
  ),
)
''';
