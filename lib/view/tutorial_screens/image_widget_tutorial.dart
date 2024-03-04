


import '../../common_libraries.dart';

class ImageWidgetTutorial extends StatelessWidget {
  const ImageWidgetTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Example 1: Displaying an image from the network
          Image.network(
            'https://via.placeholder.com/150',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          // Example 2: Displaying an image from assets
          Image.asset(
            'assets/flutter_logo.png',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

String codeImageWidgetTutorial='''

// Example 1: Displaying an image from the network
          Image.network(
            'https://via.placeholder.com/150',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
// Example 2: Displaying an image from assets
          Image.asset(
            'assets/flutter_logo.png',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),

''';
