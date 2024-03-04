import '../../../common_libraries.dart';


class ListTutorial extends StatelessWidget {
  const ListTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(


        children: [
          const Text("ListView"),
          const SizedBox(height: 16),
          _buildListView(context),
          const SizedBox(height: 16),
          const Text("Reorderable ListView"),
          const SizedBox(height: 16),
          _buildReorderableListView(context),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height for the ListView
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }

  Widget _buildReorderableListView(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height for the ReorderableListView
      child: ReorderableListView(
        children: List.generate(
          10,
              (index) => ListTile(
            key: ValueKey(index),
            title: Text('Item $index'),
          ),
        ),
        onReorder: (oldIndex, newIndex) {
          // Callback when an item is reordered
        },
      ),
    );
  }
}

String codeReorderableListViewWidget = '''
SizedBox(
  height: 200, // Set a fixed height for the ReorderableListView
  child: ReorderableListView(
    children: List.generate(
      10,
      (index) => ListTile(
        key: ValueKey(index),
        title: Text('Item index'),
      ),
    ),
    onReorder: (oldIndex, newIndex) {
      // Callback when an item is reordered
    },
  ),
)
''';

String codeListViewWidget = '''
SizedBox(
  height: 200, // Set a fixed height for the ListView
  child: ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('Item index'),
      );
    },
  ),
)
''';
