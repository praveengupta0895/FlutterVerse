
import '../../../common_libraries.dart';


import 'package:flutter/material.dart';

import '../../misc/custom_snackbar.dart';

class ButtonTutorials extends StatelessWidget {
  const ButtonTutorials({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildButton(
            context,
            onPressed: () => showCustomSnackBar("Button", 'Elevated Button Pressed...'),
            child: const Text('Elevated Button'),
          ),
          const SizedBox(height: 16),
          _buildIconButton(
            context,
            onPressed: () => showCustomSnackBar('Button', 'Icon Button Pressed...'),
            icon: Icons.android,
            tooltip: 'Icon Button',
          ),
          const SizedBox(height: 16),
          _buildOutlinedButton(
            context,
            onPressed: () => showCustomSnackBar('Button', 'Outlined Button Pressed...'),
            child: const Text('Outlined Button'),
          ),
          const SizedBox(height: 16),
          _buildRawMaterialButton(
            context,
            onPressed: () => showCustomSnackBar("Button", 'Raw Material Button Pressed...'),
            child: const Text('Raw Material Button'),
          ),
          const SizedBox(height: 16),
          _buildFloatingActionButton(
            context,
            onPressed: () => showCustomSnackBar("Button", 'Floating Action Button Pressed...'),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, {required VoidCallback onPressed, required Widget child}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: child,
      ),
    );
  }

  Widget _buildIconButton(BuildContext context, {required VoidCallback onPressed, required IconData icon, required String tooltip}) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
      color: Theme.of(context).colorScheme.primary,
      splashColor: Theme.of(context).colorScheme.secondary,
      tooltip: tooltip,
      padding: const EdgeInsets.all(8.0),
    );
  }

  Widget _buildOutlinedButton(BuildContext context, {required VoidCallback onPressed, required Widget child}) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        side: BorderSide(color: Theme.of(context).colorScheme.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: child,
      ),
    );
  }

  Widget _buildRawMaterialButton(BuildContext context, {required VoidCallback onPressed, required Widget child}) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Theme.of(context).colorScheme.primary,
      textStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      padding: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: child,
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context, {required VoidCallback onPressed, required Widget child}) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      child: child,
    );
  }
}


String codeElevatedButtonTutorial = '''

ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: const Text('Elevated Button'),
      ),
    )

''';

String codeIconButtonTutorial = '''

IconButton(
      icon: Icon(Icons.android,),
      onPressed: onPressed,
      color: Theme.of(context).colorScheme.primary,
      splashColor: Theme.of(context).colorScheme.secondary,
      tooltip: tooltip,
      padding: const EdgeInsets.all(8.0),
    )

        
''';

String codeOutlinedButtonTutorial = '''

OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        side: BorderSide(color: Theme.of(context).colorScheme.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: const Text('Outlined Button'),
      ),
    )

''';


String codeRawMaterialButtonTutorial = '''

RawMaterialButton(
      onPressed: onPressed,
      fillColor: Theme.of(context).colorScheme.primary,
      textStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      padding: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: const Text('Raw Material Button'),
      ),
    )

''';


String codeFloatingActionButton = '''

FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      child: const Icon(Icons.add),
    )

''';



