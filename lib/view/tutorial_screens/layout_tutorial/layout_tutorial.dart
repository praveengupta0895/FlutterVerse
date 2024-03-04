import 'dart:ui';

import '../../../common_libraries.dart';
import 'package:flutter/material.dart';

class LayoutTutorial extends StatelessWidget {
  const LayoutTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container Widget
          const Text('Container Widget'), // Add Text widget with widget name
          _buildContainer(context),
          const SizedBox(height: 16),

          // Row Widget
          const Text('Row Widget'), // Add Text widget with widget name
          _buildRow(context),
          const SizedBox(height: 16),

          // Column Widget
          const Text('Column Widget'), // Add Text widget with widget name
          _buildColumn(context),
          const SizedBox(height: 16),

          // BackdropFilter Widget
          const Text('Backdrop Filter Widget is causing blur to above widgets'), // Add Text widget with widget name
          _buildBackdropFilter(context),
          const SizedBox(height: 16),

          // FittedBox Widget
          const Text('FittedBox Widget'), // Add Text widget with widget name
          _buildFittedBox(context),
          const SizedBox(height: 16),

          // Baseline Widget
          const Text('Baseline Widget'), // Add Text widget with widget name
          _buildBaseline(context),
          const SizedBox(height: 16),

          // FractionallySizedBox Widget
          const Text('FractionallySizedBox Widget'), // Add Text widget with widget name
          _buildFractionallySizedBox(context),
          const SizedBox(height: 16),

          // IntrinsicWidth Widget
          const Text('IntrinsicWidth Widget'), // Add Text widget with widget name
          _buildIntrinsicWidth(context),
          const SizedBox(height: 16),

          // IntrinsicHeight Widget
          const Text('IntrinsicHeight Widget'), // Add Text widget with widget name
          _buildIntrinsicHeight(context),
          const SizedBox(height: 16),

          // Offstage Widget
          const Text('Offstage Widget'), // Add Text widget with widget name
          _buildOffstage(context),
          const SizedBox(height: 16),

          // OverflowBox Widget
          const Text('OverflowBox Widget'), // Add Text widget with widget name
          _buildOverflowBox(context),
          const SizedBox(height: 16),

          // Padding Widget
          const Text('Padding Widget'), // Add Text widget with widget name
          _buildPadding(context),
          const SizedBox(height: 16),

          // SizedOverflowBox Widget
          const Text('SizedOverflowBox Widget'), // Add Text widget with widget name
          _buildSizedOverflowBox(context),
          const SizedBox(height: 16),

          // Transform Widget
          const Text('Transform Widget'), // Add Text widget with widget name
          _buildTransform(context),
          const SizedBox(height: 16),

          // ConstrainedBox Widget
          const Text('ConstrainedBox Widget'), // Add Text widget with widget name
          _buildConstrainedBox(context),
          const SizedBox(height: 16),

          // CustomSingleChildLayout Widget
          const Text('CustomSingleChildLayout Widget'), // Add Text widget with widget name
          _buildCustomSingleChildLayout(context),
          const SizedBox(height: 16),

          // CustomMultiChildLayout Widget
          const Text('CustomMultiChildLayout Widget'), // Add Text widget with widget name
          _buildCustomMultiChildLayout(context),
          const SizedBox(height: 16),

          // Builder Widget
          const Text('Builder Widget'), // Add Text widget with widget name
          _buildBuilder(context),
          const SizedBox(height: 16),

          // ClipOval Widget
          const Text('ClipOval Widget'), // Add Text widget with widget name
          _buildClipOval(context),
          const SizedBox(height: 16),

          // ClipPath Widget
          const Text('ClipPath Widget'), // Add Text widget with widget name
          _buildClipPath(context),
          const SizedBox(height: 16),

          // PageView Widget
          const Text('PageView Widget'), // Add Text widget with widget name
          _buildPageView(context),
          const SizedBox(height: 16),

          // IndexedStack Widget
          const Text('IndexedStack Widget'), // Add Text widget with widget name
          _buildIndexedStack(context),
          const SizedBox(height: 16),

          // Stack Widget
          const Text('Stack Widget'), // Add Text widget with widget name
          _buildStack(context),
          const SizedBox(height: 16),

          // Wrap Widget
          const Text('Wrap Widget'), // Add Text widget with widget name
          _buildWrap(context),
          const SizedBox(height: 60),

          // Flow Widget
          const Text('Flow Widget'), // Add Text widget with widget name
          _buildFlow(context),
          const SizedBox(height: 16),

          // CustomPaint Widget
          const Text('CustomPaint Widget'), // Add Text widget with widget name
          _buildCustomPaint(context),
          const SizedBox(height: 16),



          // Opacity Widget
          const Text('Opacity Widget'), // Add Text widget with widget name
          _buildOpacity(context),
          const SizedBox(height: 16),

          // ShaderMask Widget
          const Text('ShaderMask Widget'), // Add Text widget with widget name
          _buildShaderMask(context),
          const SizedBox(height: 16),

          // Align Widget
          const Text('Align Widget'), // Add Text widget with widget name
          _buildAlign(context),
          const SizedBox(height: 16),

          // Center Widget
          const Text('Center Widget'), // Add Text widget with widget name
          _buildCenter(context),
          const SizedBox(height: 16),

          // AspectRatio Widget
          const Text('AspectRatio Widget'), // Add Text widget with widget name
          _buildAspectRatio(context),
          const SizedBox(height: 16),

          // LayoutBuilder Widget
          const Text('LayoutBuilder Widget'), // Add Text widget with widget name
          _buildLayoutBuilder(context),
          const SizedBox(height: 16),

          // SizedBox Widget
          const Text('SizedBox Widget'), // Add Text widget with widget name
          _buildSizedBox(context),
          const SizedBox(height: 16),

          // Spacer Widget
          const Text('Spacer Widget'), // Add Text widget with widget name
          _buildSpacer(context),
          const SizedBox(height: 16),

          // Divider Widget
          const Text('Divider Widget'), // Add Text widget with widget name
          _buildDivider(context),
          const SizedBox(height: 16),

          // SliverAppBar Widget
          const Text('SliverAppBar Widget'), // Add Text widget with widget name
          _buildSliverAppBar(context),
          const SizedBox(height: 16),
        ],

      ),
    );
  }
// Container Widget
  Widget _buildContainer(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: const Center(child: Text("Container")),
      ),
    );
  }

// Row Widget
  Widget _buildRow(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 50,
            child: Container(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            width: 50,
            child: Container(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            width: 50,
            child: Container(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }

// Column Widget
  Widget _buildColumn(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            child: Container(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            height: 40,
            child: Container(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            height: 40,
            child: Container(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }

// FittedBox Widget
  Widget _buildFittedBox(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text("FittedBox")),
        ),
      ),
    );
  }

// Baseline Widget
  Widget _buildBaseline(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: Baseline(
        baseline: 25,
        baselineType: TextBaseline.alphabetic,
        child: Text(
          'Baseline Widget',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// FractionallySizedBox Widget
  Widget _buildFractionallySizedBox(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(
            child: Text(
              'FractionallySizedBox Widget',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

// IntrinsicWidth Widget
  Widget _buildIntrinsicWidth(BuildContext context) {
    return SizedBox(
      width: 200,
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
          ],
        ),
      ),
    );
  }

// IntrinsicHeight Widget
  Widget _buildIntrinsicHeight(BuildContext context) {
    return SizedBox(
      height: 100,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 50,
              child: Container(color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              width: 100,
              child: Container(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }

// Offstage Widget
  Widget _buildOffstage(BuildContext context) {
    bool offstage = false;
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // setState(() {
            //   offstage = !offstage;
            // });
          },
          child: const Text('Toggle Offstage'),
        ),
        Offstage(
          offstage: offstage,
          child: SizedBox(
            width: 200,
            height: 100,
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: const Center(child: Text('Offstage Widget')),
            ),
          ),
        ),
      ],
    );
  }

// OverflowBox Widget
  Widget _buildOverflowBox(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: OverflowBox(
          minWidth: 0,
          maxWidth: 200,
          minHeight: 0,
          maxHeight: 200,
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }

// Padding Widget
  Widget _buildPadding(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Text('Padding Widget'),
        ),
      ),
    );
  }

// SizedOverflowBox Widget
  Widget _buildSizedOverflowBox(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: SizedOverflowBox(
          size: const Size(150, 150),
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }

// Transform Widget
  Widget _buildTransform(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Transform.rotate(
        angle: 0.5,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('Transform Widget')),
        ),
      ),
    );
  }

// ConstrainedBox Widget
  Widget _buildConstrainedBox(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 200,
          maxHeight: 200,
        ),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Text('ConstrainedBox Widget'),
        ),
      ),
    );
  }

// CustomSingleChildLayout Widget
  Widget _buildCustomSingleChildLayout(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomSingleChildLayout(
        delegate: MySingleChildLayoutDelegate(),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          width: 200,
          height: 200,
          child: const Center(child: Text('CustomSingleChildLayout Widget')),
        ),
      ),
    );
  }

// CustomMultiChildLayout Widget
  Widget _buildCustomMultiChildLayout(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomMultiChildLayout(
        delegate: MyMultiChildLayoutDelegate(),
        children: [
          LayoutId(
            id: MyMultiChildLayoutId.left,
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              width: 100,
              height: 100,
            ),
          ),
          LayoutId(
            id: MyMultiChildLayoutId.right,
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }

// Builder Widget
  Widget _buildBuilder(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Builder(
        builder: (BuildContext context) {
          return Container(
            color: Theme.of(context).colorScheme.primary,
            child: const Text('Builder Widget'),
          );
        },
      ),
    );
  }

// ClipOval Widget
  Widget _buildClipOval(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ClipOval(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('ClipOval Widget')),
        ),
      ),
    );
  }

// ClipPath Widget
  Widget _buildClipPath(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('ClipPath Widget')),
        ),
      ),
    );
  }

// PageView Widget
  Widget _buildPageView(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        children: [
          Container(color: Theme.of(context).colorScheme.primary),
          Container(color: Theme.of(context).colorScheme.secondary),
          Container(color: Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }

// IndexedStack Widget
  Widget _buildIndexedStack(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: IndexedStack(
        index: 1,
        children: [
          Container(color: Theme.of(context).colorScheme.primary),
          Container(color: Theme.of(context).colorScheme.secondary),
          Container(color: Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }

// Stack Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Container(color: Theme.of(context).colorScheme.primary, width: 100, height: 100),
          Container(color: Theme.of(context).colorScheme.secondary, width: 80, height: 80),
          Container(color: Theme.of(context).colorScheme.primary, width: 60, height: 60),
        ],
      ),
    );
  }

// Wrap Widget
  Widget _buildWrap(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: List.generate(
          10,
              (index) => Chip(
            label: Text('Item $index'),
          ),
        ),
      ),
    );
  }

// Flow Widget
  Widget _buildFlow(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Flow(
        delegate: MyFlowDelegate(),
        children: List.generate(
          10,
              (index) => Container(
            color: Theme.of(context).colorScheme.primary,
            width: 50,
            height: 50,
            child: Center(child: Text('Item $index')),
          ),
        ),
      ),
    );
  }

// CustomPaint Widget
  Widget _buildCustomPaint(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(
          width: 200,
          height: 200,
          child: const Center(child: Text('CustomPaint Widget')),
        ),
      ),
    );
  }

// BackdropFilter Widget
  Widget _buildBackdropFilter(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: .5, sigmaY: .5),
        child: Container(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          child: const Center(child: Text('BackdropFilter Widget')),
        ),
      ),
    );
  }

// Opacity Widget
  Widget _buildOpacity(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Opacity(
        opacity: 0.5,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('Opacity Widget')),
        ),
      ),
    );
  }

// ShaderMask Widget
  Widget _buildShaderMask(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary],
          ).createShader(bounds);
        },
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('ShaderMask Widget')),
        ),
      ),
    );
  }

// Align Widget
  Widget _buildAlign(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('Align Widget')),
        ),
      ),
    );
  }

// Center Widget
  Widget _buildCenter(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Center(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Text('Center Widget'),
        ),
      ),
    );
  }

// AspectRatio Widget
  Widget _buildAspectRatio(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('AspectRatio Widget')),
        ),
      ),
    );
  }

// LayoutBuilder Widget
  Widget _buildLayoutBuilder(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Theme.of(context).colorScheme.primary,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: const Center(child: Text('LayoutBuilder Widget')),
          );
        },
      ),
    );
  }

// SizedBox Widget
  Widget _buildSizedBox(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: const Center(child: Text('SizedBox Widget')),
      ),
    );
  }

// Spacer Widget
  Widget _buildSpacer(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: Row(
        children: [
          Container(color: Theme.of(context).colorScheme.primary, width: 50, height: 50),
          const Spacer(),
          Container(color: Theme.of(context).colorScheme.secondary, width: 50, height: 50),
        ],
      ),
    );
  }

// Divider Widget
  Widget _buildDivider(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: Column(
        children: [
          Container(color: Theme.of(context).colorScheme.primary, height: 50),
          Divider(color: Theme.of(context).colorScheme.secondary),
          Container(color: Theme.of(context).colorScheme.primary, height: 50),
        ],
      ),
    );
  }

// SliverAppBar Widget
  Widget _buildSliverAppBar(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('SliverAppBar Widget'),
            backgroundColor: Theme.of(context).colorScheme.primary,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://via.placeholder.com/600x200',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item $index')),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }


}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.25, size.height * 0.25)
      ..lineTo(size.width * 0.75, size.height * 0.25)
      ..lineTo(size.width * 0.75, size.height * 0.75)
      ..lineTo(size.width * 0.25, size.height * 0.75)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


class MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    // Define the size of the child widget
    return const Size(200, 200);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    // Define constraints for the child widget
    return BoxConstraints.tight(const Size(200, 200));
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    // Decide whether the layout needs to be recalculated
    return false;
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // Define the position of the child widget
    return Offset((size.width - childSize.width) / 2, (size.height - childSize.height) / 2);
  }
}
class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    // Paint the children widgets within the flow
    for (int i = 0; i < context.childCount; i++) {
      context.paintChild(i, transform: Matrix4.rotationZ(i * 0.2));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // Determine whether the flow delegate should repaint
    return false;
  }
}


class MyMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild(MyMultiChildLayoutId.left)) {
      layoutChild(MyMultiChildLayoutId.left, BoxConstraints.loose(size));
      positionChild(MyMultiChildLayoutId.left, Offset.zero);
    }
    if (hasChild(MyMultiChildLayoutId.right)) {
      layoutChild(MyMultiChildLayoutId.right, BoxConstraints.loose(size));
      positionChild(MyMultiChildLayoutId.right, Offset(size.width - 100, 0));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}

class MyMultiChildLayoutId {
  static const String left = 'left';
  static const String right = 'right';
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: MyMultiChildLayoutDelegate(),
      children: <Widget>[
        LayoutId(
          id: MyMultiChildLayoutId.left,
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
        LayoutId(
          id: MyMultiChildLayoutId.right,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}


String codeContainerWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Container(
    color: Theme.of(context).colorScheme.primary,
    child: const Center(child: Text("Container")),
  ),
)
''';

String codeRowWidget = '''
SizedBox(
  height: 50,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 50,
        child: Container(color: Theme.of(context).colorScheme.primary),
      ),
      SizedBox(
        width: 50,
        child: Container(color: Theme.of(context).colorScheme.primary),
      ),
      SizedBox(
        width: 50,
        child: Container(color: Theme.of(context).colorScheme.primary),
      ),
    ],
  ),
)
''';

String codeColumnWidget = '''
SizedBox(
  width: 150,
  height: 150,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        height: 40,
        child: Container(color: Theme.of(context).colorScheme.primary),
      ),
      SizedBox(
        height: 40,
        child: Container(color: Theme.of(context).colorScheme.primary),
      ),
      SizedBox(
        height: 40,
        child: Container(color: Theme.of(context).colorScheme.primary),
      ),
    ],
  ),
)
''';

String codeFittedBoxWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: FittedBox(
    fit: BoxFit.cover,
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text("FittedBox")),
    ),
  ),
)
''';

String codeBaselineWidget = '''
const SizedBox(
  height: 50,
  child: Baseline(
    baseline: 25,
    baselineType: TextBaseline.alphabetic,
    child: Text(
      'Baseline Widget',
      style: TextStyle(fontSize: 20),
    ),
  ),
)
''';

String codeFractionallySizedBoxWidget = '''
SizedBox(
  height: 50,
  width: 100,
  child: FractionallySizedBox(
    widthFactor: 0.5,
    heightFactor: 0.5,
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(
        child: Text(
          'FractionallySizedBox Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ),
)
''';

String codeIntrinsicWidthWidget = '''
SizedBox(
  width: 200,
  child: IntrinsicWidth(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
        ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
      ],
    ),
  ),
)
''';

String codeIntrinsicHeightWidget = '''
SizedBox(
  height: 100,
  child: IntrinsicHeight(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 50,
          child: Container(color: Theme.of(context).colorScheme.primary),
        ),
        SizedBox(
          width: 100,
          child: Container(color: Theme.of(context).colorScheme.primary),
        ),
      ],
    ),
  ),
)
''';

String codeOffstageWidget = '''
Column(
  children: [
    ElevatedButton(
      onPressed: () {
        // setState(() {
        //   offstage = !offstage;
        // });
      },
      child: const Text('Toggle Offstage'),
    ),
    Offstage(
      offstage: offstage,
      child: SizedBox(
        width: 200,
        height: 100,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Center(child: Text('Offstage Widget')),
        ),
      ),
    ),
  ],
)
''';

String codeOverflowBoxWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Container(
    color: Theme.of(context).colorScheme.primary,
    child: OverflowBox(
      minWidth: 0,
      maxWidth: 200,
      minHeight: 0,
      maxHeight: 200,
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        width: 300,
        height: 300,
      ),
    ),
  ),
)
''';

String codePaddingWidget = '''
SizedBox(
  width: 200,
  height: 100,
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Text('Padding Widget'),
    ),
  ),
)
''';

String codeSizedOverflowBoxWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: Container(
    color: Theme.of(context).colorScheme.primary,
    child: SizedOverflowBox(
      size: const Size(150, 150),
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
  ),
)
''';

String codeTransformWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Transform.rotate(
    angle: 0.5,
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('Transform Widget')),
    ),
  ),
)
''';

String codeConstrainedBoxWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: ConstrainedBox(
    constraints: const BoxConstraints(
      minWidth: 100,
      minHeight: 100,
      maxWidth: 200,
      maxHeight: 200,
    ),
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Text('ConstrainedBox Widget'),
    ),
  ),
)
''';

String codeCustomSingleChildLayoutWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: CustomSingleChildLayout(
    delegate: MySingleChildLayoutDelegate(),
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      width: 200,
      height: 200,
      child: const Center(child: Text('CustomSingleChildLayout Widget')),
    ),
  ),
)
''';

String codeCustomMultiChildLayoutWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: CustomMultiChildLayout(
    delegate: MyMultiChildLayoutDelegate(),
    children: [
      LayoutId(
        id: MyMultiChildLayoutId.left,
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          width: 100,
          height: 100,
        ),
      ),
      LayoutId(
        id: MyMultiChildLayoutId.right,
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          width: 100,
          height: 100,
        ),
      ),
    ],
  ),
)
''';

String codeBuilderWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Builder(
    builder: (BuildContext context) {
      return Container(
        color: Theme.of(context).colorScheme.primary,
        child: const Text('Builder Widget'),
      );
    },
  ),
)
''';

String codeClipOvalWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: ClipOval(
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('ClipOval Widget')),
    ),
  ),
)
''';

String codeClipPathWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: ClipPath(
    clipper: MyCustomClipper(),
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('ClipPath Widget')),
    ),
  ),
)
''';

String codePageViewWidget = '''
SizedBox(
  height: 200,
  child: PageView(
    children: [
      Container(color: Theme.of(context).colorScheme.primary),
      Container(color: Theme.of(context).colorScheme.secondary),
      Container(color: Theme.of(context).colorScheme.primary),
    ],
  ),
)
''';

String codeIndexedStackWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: IndexedStack(
    index: 1,
    children: [
      Container(color: Theme.of(context).colorScheme.primary),
      Container(color: Theme.of(context).colorScheme.secondary),
      Container(color: Theme.of(context).colorScheme.primary),
    ],
  ),
)
''';

String codeStackWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Stack(
    children: [
      Container(color: Theme.of(context).colorScheme.primary, width: 100, height: 100),
      Container(color: Theme.of(context).colorScheme.secondary, width: 80, height: 80),
      Container(color: Theme.of(context).colorScheme.primary, width: 60, height: 60),
    ],
  ),
)
''';

String codeWrapWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: Wrap(
    spacing: 8.0,
    runSpacing: 4.0,
    children: List.generate(
      10,
          (index) => Chip(
        label: Text('Item index'),
      ),
    ),
  ),
)
''';

String codeFlowWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: Flow(
    delegate: MyFlowDelegate(),
    children: List.generate(
      10,
          (index) => Container(
        color: Theme.of(context).colorScheme.primary,
        width: 50,
        height: 50,
        child: Center(child: Text('Item index')),
      ),
    ),
  ),
)
''';

String codeCustomPaintWidget = '''
SizedBox(
  width: 200,
  height: 200,
  child: CustomPaint(
    painter: MyCustomPainter(),
    child: Container(
      width: 200,
      height: 200,
      child: const Center(child: Text('CustomPaint Widget')),
    ),
  ),
)
''';

String codeBackdropFilterWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaX: .5, sigmaY: .5),
    child: Container(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      child: const Center(child: Text('BackdropFilter Widget')),
    ),
  ),
)
''';

String codeOpacityWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Opacity(
    opacity: 0.5,
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('Opacity Widget')),
    ),
  ),
)
''';

String codeShaderMaskWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary],
      ).createShader(bounds);
    },
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('ShaderMask Widget')),
    ),
  ),
)
''';

String codeAlignWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Align(
    alignment: Alignment.center,
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('Align Widget')),
    ),
  ),
)
''';

String codeCenterWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: Center(
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Text('Center Widget'),
    ),
  ),
)
''';

String codeAspectRatioWidget = '''
SizedBox(
  width: 150,
  height: 100,
  child: AspectRatio(
    aspectRatio: 1.5,
    child: Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(child: Text('AspectRatio Widget')),
    ),
  ),
)
''';

String codeLayoutBuilderWidget = '''
SizedBox(
  width: 100,
  height: 100,
  child: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        color: Theme.of(context).colorScheme.primary,
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: const Center(child: Text('LayoutBuilder Widget')),
      );
    },
  ),
)
''';

String codeSizedBoxWidget2 = '''
SizedBox(
  width: 100,
  height: 100,
  child: Container(
    color: Theme.of(context).colorScheme.primary,
    child: const Center(child: Text('SizedBox Widget')),
  ),
)
''';

String codeSpacerWidget = '''
SizedBox(
  width: 200,
  height: 50,
  child: Row(
    children: [
      Container(color: Theme.of(context).colorScheme.primary, width: 50, height: 50),
      const Spacer(),
      Container(color: Theme.of(context).colorScheme.secondary, width: 50, height: 50),
    ],
  ),
)
''';

String codeDividerWidget = '''
SizedBox(
  width: 200,
  height: 150,
  child: Column(
    children: [
      Container(color: Theme.of(context).colorScheme.primary, height: 50),
      Divider(color: Theme.of(context).colorScheme.secondary),
      Container(color: Theme.of(context).colorScheme.primary, height: 50),
    ],
  ),
)
''';

String codeSliverAppBarWidget = '''
SizedBox(
  width: double.infinity,
  height: 300,
  child: CustomScrollView(
    slivers: [
      SliverAppBar(
        title: const Text('SliverAppBar Widget'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            'https://via.placeholder.com/600x200',
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(title: Text('Item index')),
          childCount: 50,
        ),
      ),
    ],
  ),
)
''';
