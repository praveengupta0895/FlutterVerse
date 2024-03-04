import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollTutorial extends StatelessWidget {
  const ScrollTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Text("SingleChildScrollView"),
            const SizedBox(height: 16),
            SizedBox(
                height: 200,
                child: _buildSingleChildScrollView(context)),
            const SizedBox(height: 16),
            const Text("NestedScrollView"),
            const SizedBox(height: 16),
            SizedBox(
                height: 350,
                child: _buildNestedScrollView(context)),
            const SizedBox(height: 16),
            const Text("CustomScrollView"),
            const SizedBox(height: 16),
            SizedBox(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildCustomScrollView(context),
                )),
            const SizedBox(height: 16),
            const Text("ScrollConfiguration"),
            const SizedBox(height: 16),
            _buildScrollConfiguration(context),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleChildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          10,
              (index) => ListTile(
            title: Text('Item $index'),
          ),
        ),
      ),
    );
  }

  Widget _buildNestedScrollView(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
           SliverAppBar(
            title: const Text('NestedScrollView Example'),
            floating: true,
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: Image.asset('assets/flutter_logo.png'),
          ),
        ];
      },
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('Item $index'));
        },
      ),
    );
  }

  Widget _buildCustomScrollView(BuildContext context) {
    return CustomScrollView(
      slivers: [
         SliverAppBar(
          title: const Text('CustomScrollView Example'),
          floating: true,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace:Image.asset('assets/flutter_logo.png'),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return ListTile(title: Text('Item $index'));
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildScrollConfiguration(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomScrollBehavior(),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            10,
                (index) => ListTile(
              title: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}


String codeSingleChildScrollViewWidget = '''
SingleChildScrollView(
  child: Column(
    children: List.generate(
      10,
      (index) => ListTile(
        title: Text('Item index'),
      ),
    ),
  ),
)
''';

String codeNestedScrollViewWidget = '''
NestedScrollView(
  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      const SliverAppBar(
        title: Text('NestedScrollView Example'),
        floating: true,
        pinned: true,
        expandedHeight: 200.0,
        flexibleSpace: Placeholder(),
      ),
    ];
  },
  body: ListView.builder(
    itemCount: 20,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(title: Text('Item index'));
    },
  ),
)
''';

String codeCustomScrollViewWidget = '''
CustomScrollView(
  slivers: [
    const SliverAppBar(
      title: Text('CustomScrollView Example'),
      floating: true,
      pinned: true,
      expandedHeight: 200.0,
      flexibleSpace: Placeholder(),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ListTile(title: Text('Item index'));
        },
        childCount: 20,
      ),
    ),
  ],
)
''';

String codeScrollConfigurationWidget = '''
ScrollConfiguration(
  behavior: CustomScrollBehavior(),
  child: SingleChildScrollView(
    child: Column(
      children: List.generate(
        10,
        (index) => ListTile(
          title: Text('Item index'),
        ),
      ),
    ),
  ),
)
''';

