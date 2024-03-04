

import '../../../common_libraries.dart';

// final List<Map<String, dynamic>> widgetList = [
//   {"name": "Text", "icon": Icons.text_fields, "category": "Basic"},
//   {"name": "Button", "icon": Icons.touch_app, "category": "Basic"},
//   {"name": "Image", "icon": Icons.image, "category": "Basic"},
//   {"name": "SelectableText", "icon": Icons.text_fields, "category": "Basic"},
//   {"name": "IconButton", "icon": Icons.touch_app, "category": "Basic"},
//   {"name": "RaisedButton", "icon": Icons.touch_app, "category": "Basic"},
//   {"name": "FlatButton", "icon": Icons.touch_app, "category": "Basic"},
//   {"name": "OutlineButton", "icon": Icons.touch_app, "category": "Basic"},
//   {"name": "RawMaterialButton", "icon": Icons.touch_app, "category": "Basic"},
//   {"name": "Container", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Row", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Column", "icon": Icons.view_column, "category": "Layout"},
//   {"name": "FittedBox", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Baseline", "icon": Icons.crop_square, "category": "Layout"},
//   {
//     "name": "FractionallySizedBox",
//     "icon": Icons.crop_square,
//     "category": "Layout"
//   },
//   {"name": "IntrinsicWidth", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "IntrinsicHeight", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "LimitedBox", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Offstage", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "OverflowBox", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Padding", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "SizedOverflowBox", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Transform", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "ConstrainedBox", "icon": Icons.crop_square, "category": "Layout"},
//   {
//     "name": "CustomSingleChildLayout",
//     "icon": Icons.crop_square,
//     "category": "Layout"
//   },
//   {
//     "name": "CustomMultiChildLayout",
//     "icon": Icons.crop_square,
//     "category": "Layout"
//   },
//   {"name": "Builder", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "ClipOval", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "ClipPath", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "PageView", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "IndexedStack", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Stack", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Wrap", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Flow", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "CustomPaint", "icon": Icons.format_paint, "category": "Layout"},
//   {"name": "BackdropFilter", "icon": Icons.filter, "category": "Layout"},
//   {"name": "ClipRect", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "ClipRRect", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "ClipOval", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "ClipPath", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Opacity", "icon": Icons.opacity, "category": "Layout"},
//   {"name": "Transform", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "CustomPaint", "icon": Icons.format_paint, "category": "Layout"},
//   {"name": "ShaderMask", "icon": Icons.format_paint, "category": "Layout"},
//   {"name": "BackdropFilter", "icon": Icons.filter, "category": "Layout"},
//   {"name": "Align", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Center", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "AspectRatio", "icon": Icons.aspect_ratio, "category": "Layout"},
//   {"name": "Container", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Transform", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "FittedBox", "icon": Icons.crop_square, "category": "Layout"},
//   {
//     "name": "FractionallySizedBox",
//     "icon": Icons.crop_square,
//     "category": "Layout"
//   },
//   {"name": "LayoutBuilder", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "LimitedBox", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "Padding", "icon": Icons.crop_square, "category": "Layout"},
//   {"name": "SizedBox", "icon": Icons.crop_square, "category": "Layout"},
//   {
//     "name": "CustomSingleChildLayout",
//     "icon": Icons.crop_square,
//     "category": "Layout"
//   },
//   {
//     "name": "CustomMultiChildLayout",
//     "icon": Icons.crop_square,
//     "category": "Layout"
//   },
//   {"name": "Stack", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Wrap", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Flow", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "IndexedStack", "icon": Icons.view_agenda, "category": "Layout"},
//   {"name": "Spacer", "icon": Icons.space_bar, "category": "Layout"},
//   {"name": "IndexedStack", "icon": Icons.layers, "category": "Layout"},
//   {"name": "Divider", "icon": Icons.horizontal_rule, "category": "Layout"},
//   {"name": "SliverAppBar", "icon": Icons.format_paint, "category": "Layout"},
//   {"name": "Card", "icon": Icons.credit_card, "category": "Layout"},
//   {"name": "Divider", "icon": Icons.horizontal_rule, "category": "Layout"},
//   {"name": "ListView", "icon": Icons.list, "category": "Scroll"},
//   {"name": "GridView", "icon": Icons.grid_on, "category": "Scroll"},
//   {"name": "SingleChildScrollView", "icon": Icons.list, "category": "Scroll"},
//   {"name": "NestedScrollView", "icon": Icons.list, "category": "Scroll"},
//   {"name": "CustomScrollView", "icon": Icons.list, "category": "Scroll"},
//   {"name": "ScrollConfiguration", "icon": Icons.list, "category": "Scroll"},
//   {"name": "GridView", "icon": Icons.grid_on, "category": "Scroll"},
//   {"name": "ReorderableListView", "icon": Icons.reorder, "category": "Scroll"},
//   {"name": "RefreshIndicator", "icon": Icons.refresh, "category": "Scroll"},
//   {"name": "TextField", "icon": Icons.text_format, "category": "Input"},
//   {"name": "Form", "icon": Icons.format_align_justify, "category": "Input"},
//   {"name": "TimePicker", "icon": Icons.access_time, "category": "Input"},
//   {"name": "Slider", "icon": Icons.tune, "category": "Input"},
//   {"name": "Switch", "icon": Icons.toggle_on, "category": "Input"},
//   {"name": "ToggleButtons", "icon": Icons.toggle_off, "category": "Input"},
//   {"name": "Checkbox", "icon": Icons.check_box, "category": "Input"},
//   {"name": "Radio", "icon": Icons.radio_button_checked, "category": "Input"},
//   {"name": "Slider", "icon": Icons.tune, "category": "Input"},
//   {"name": "Switch", "icon": Icons.toggle_on, "category": "Input"},
//   {"name": "FloatingActionButton", "icon": Icons.add, "category": "Input"},
//   {"name": "DatePicker", "icon": Icons.calendar_today, "category": "Input"},
//   {"name": "TimePicker", "icon": Icons.access_time, "category": "Input"},
//   {
//     "name": "DropdownButton",
//     "icon": Icons.arrow_drop_down,
//     "category": "Input"
//   },
//   {"name": "PopupMenuButton", "icon": Icons.more_vert, "category": "Other"},
//   {
//     "name": "NotificationListener",
//     "icon": Icons.notifications,
//     "category": "Other"
//   },
//   {"name": "Tooltip", "icon": Icons.info, "category": "Other"},
//   {"name": "Hero", "icon": Icons.face, "category": "Transition"},
//   {
//     "name": "AnimatedAlign",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedContainer",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedCrossFade",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedDefaultTextStyle",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedOpacity",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPhysicalModel",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPositioned",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedSize", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedSwitcher",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedWidget",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedModalBarrier",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedList", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedPadding",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPhysicalModel",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPositioned",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedSize", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedSwitcher",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedWidget",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedModalBarrier",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedList", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedPadding",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPhysicalModel",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPositioned",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedSize", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedSwitcher",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedWidget",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedModalBarrier",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedList", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedPadding",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPhysicalModel",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPositioned",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedSize", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedSwitcher",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedWidget",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedModalBarrier",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedList", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedPadding",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPhysicalModel",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedPositioned",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedSize", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedSwitcher",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedWidget",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedModalBarrier",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedList", "icon": Icons.crop_square, "category": "Transition"},
//   {
//     "name": "AnimatedPadding",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedContainer",
//     "icon": Icons.crop_square,
//     "category": "Transition"
//   },
//   {"name": "AnimatedOpacity", "icon": Icons.opacity, "category": "Transition"},
//   {
//     "name": "AnimatedCrossFade",
//     "icon": Icons.swap_vertical_circle,
//     "category": "Transition"
//   },
//   {
//     "name": "AnimatedSwitcher",
//     "icon": Icons.swap_calls,
//     "category": "Transition"
//   },
//   {
//     "name": "FadeTransition",
//     "icon": Icons.swap_horiz_outlined,
//     "category": "Transition"
//   },
//   {
//     "name": "ScaleTransition",
//     "icon": Icons.aspect_ratio,
//     "category": "Transition"
//   },
//   {
//     "name": "SizeTransition",
//     "icon": Icons.photo_size_select_small,
//     "category": "Transition"
//   },
//   {
//     "name": "SlideTransition",
//     "icon": Icons.slideshow,
//     "category": "Transition"
//   },
//   {"name": "Hero", "icon": Icons.face, "category": "Transition"},
//   {
//     "name": "CupertinoActivityIndicator",
//     "icon": Icons.refresh,
//     "category": "Cupertino"
//   },
//   {"name": "CupertinoSwitch", "icon": Icons.toggle_on, "category": "Cupertino"},
//   {"name": "CupertinoButton", "icon": Icons.touch_app, "category": "Cupertino"},
//   {"name": "CupertinoSlider", "icon": Icons.tune, "category": "Cupertino"},
//   {
//     "name": "CupertinoContextMenu",
//     "icon": Icons.more_vert,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoDatePicker",
//     "icon": Icons.calendar_today,
//     "category": "Cupertino"
//   },
//   {"name": "CupertinoDialog", "icon": Icons.message, "category": "Cupertino"},
//   {
//     "name": "CupertinoNavigationBar",
//     "icon": Icons.menu,
//     "category": "Cupertino"
//   },
//   {"name": "CupertinoTabBar", "icon": Icons.tab, "category": "Cupertino"},
//   {
//     "name": "CupertinoContextMenuAction",
//     "icon": Icons.more_vert,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoFormSection",
//     "icon": Icons.format_align_justify,
//     "category": "Cupertino"
//   },
//   {"name": "CupertinoSlider", "icon": Icons.tune, "category": "Cupertino"},
//   {"name": "CupertinoSwitch", "icon": Icons.toggle_on, "category": "Cupertino"},
//   {
//     "name": "CupertinoScrollbar",
//     "icon": Icons.vertical_align_bottom,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoSearchTextField",
//     "icon": Icons.search,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoTextSelectionToolbar",
//     "icon": Icons.text_fields,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoTimerPicker",
//     "icon": Icons.timer,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoSlidingSegmentedControl",
//     "icon": Icons.layers,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoSegmentedControl",
//     "icon": Icons.segment,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoPageScaffold",
//     "icon": Icons.pageview,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoScrollbar",
//     "icon": Icons.vertical_align_bottom,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoTextField",
//     "icon": Icons.text_fields,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoTimerPicker",
//     "icon": Icons.timer,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoFormSection",
//     "icon": Icons.format_align_justify,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoNavigationBar",
//     "icon": Icons.menu,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoActivityIndicator",
//     "icon": Icons.refresh,
//     "category": "Cupertino"
//   },
//   {"name": "CupertinoDialog", "icon": Icons.message, "category": "Cupertino"},
//   {
//     "name": "CupertinoContextMenu",
//     "icon": Icons.more_vert,
//     "category": "Cupertino"
//   },
//   {
//     "name": "CupertinoContextMenuAction",
//     "icon": Icons.more_vert,
//     "category": "Cupertino"
//   },
//   {"name": "CupertinoSlider", "icon": Icons.tune, "category": "Cupertino"},
//   {"name": "CupertinoSwitch", "icon": Icons.toggle_on, "category": "Cupertino"},
//   {"name": "CupertinoButton", "icon": Icons.touch_app, "category": "Cupertino"},
//   {
//     "name": "CupertinoDatePicker",
//     "icon": Icons.calendar_today,
//     "category": "Cupertino"
//   },
//   {
//     "name": "BottomNavigationBar",
//     "icon": Icons.arrow_drop_down_circle,
//     "category": "Navigation"
//   },
//   {"name": "AppBar", "icon": Icons.menu, "category": "Navigation"},
//   {"name": "Drawer", "icon": Icons.menu_open, "category": "Navigation"},
//   {"name": "AppBar", "icon": Icons.menu, "category": "Navigation"},
//   {"name": "TabBar", "icon": Icons.tab, "category": "Navigation"},
//   {"name": "Stepper", "icon": Icons.timeline, "category": "Navigation"},
//   {"name": "TabBar", "icon": Icons.tab, "category": "Navigation"},
//   {"name": "Stepper", "icon": Icons.timeline, "category": "Navigation"},
//   {
//     "name": "TabBarView",
//     "icon": Icons.tab_unselected,
//     "category": "Navigation"
//   },
//   {
//     "name": "BottomSheet",
//     "icon": Icons.vertical_align_bottom,
//     "category": "Feedback"
//   },
//   {"name": "SnackBar", "icon": Icons.add_alert, "category": "Feedback"},
//   {"name": "DataTable", "icon": Icons.table_chart, "category": "Data"},
//   {
//     "name": "ExpansionPanel",
//     "icon": Icons.expand_more,
//     "category": "Expansion"
//   },
//   {"name": "RichText", "icon": Icons.text_fields, "category": "Advanced"},
//   {
//     "name": "LinearProgressIndicator",
//     "icon": Icons.linear_scale,
//     "category": "Progress"
//   },
//   {
//     "name": "CircularProgressIndicator",
//     "icon": Icons.refresh,
//     "category": "Progress"
//   },
//   {"name": "SnackBar", "icon": Icons.add_alert, "category": "Feedback"},
//   {"name": "Dialog", "icon": Icons.message, "category": "Feedback"},
//   {"name": "ExpansionTile", "icon": Icons.expand_more, "category": "Expansion"},
//   {
//     "name": "ProgressIndicator",
//     "icon": Icons.hourglass_full,
//     "category": "Progress"
//   },
//   {
//     "name": "LinearProgressIndicator",
//     "icon": Icons.linear_scale,
//     "category": "Progress"
//   },
//   {
//     "name": "CircularProgressIndicator",
//     "icon": Icons.refresh,
//     "category": "Progress"
//   },
//   {"name": "RichText", "icon": Icons.text_fields, "category": "Advanced"},
// ];

/// new data category

final List<Map<String, dynamic>> widgetList = [
  {"name": "Text", "icon": Icons.text_fields, "category": "Text"},
  {"name": "SelectableText", "icon": Icons.text_fields, "category": "Text"},

  {"name": "Button", "icon": Icons.touch_app, "category": "Button"},
  {"name": "IconButton", "icon": Icons.touch_app, "category": "Button"},
  {"name": "OutlinedButton", "icon": Icons.touch_app, "category": "Button"},
  {"name": "RawMaterialButton", "icon": Icons.touch_app, "category": "Button"},
  {"name": "FloatingActionButton", "icon": Icons.add, "category": "Button"},

  {"name": "Image", "icon": Icons.image, "category": "Image"},

  {"name": "Container", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Row", "icon": Icons.view_agenda, "category": "Layout"},
  {"name": "Column", "icon": Icons.view_column, "category": "Layout"},
  {"name": "FittedBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Baseline", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "FractionallySizedBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "IntrinsicWidth", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "IntrinsicHeight", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "LimitedBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Offstage", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "OverflowBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Padding", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "SizedOverflowBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Transform", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "ConstrainedBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "CustomSingleChildLayout", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "CustomMultiChildLayout", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Builder", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "ClipOval", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "ClipPath", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "PageView", "icon": Icons.view_agenda, "category": "Layout"},
  {"name": "IndexedStack", "icon": Icons.view_agenda, "category": "Layout"},
  {"name": "Stack", "icon": Icons.view_agenda, "category": "Layout"},
  {"name": "Wrap", "icon": Icons.view_agenda, "category": "Layout"},
  {"name": "Flow", "icon": Icons.view_agenda, "category": "Layout"},
  {"name": "CustomPaint", "icon": Icons.format_paint, "category": "Layout"},
  {"name": "BackdropFilter", "icon": Icons.filter, "category": "Layout"},
  {"name": "Opacity", "icon": Icons.opacity, "category": "Layout"},
  {"name": "ShaderMask", "icon": Icons.format_paint, "category": "Layout"},
  {"name": "Align", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Center", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "AspectRatio", "icon": Icons.aspect_ratio, "category": "Layout"},
  {"name": "LayoutBuilder", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "SizedBox", "icon": Icons.crop_square, "category": "Layout"},
  {"name": "Spacer", "icon": Icons.space_bar, "category": "Layout"},
  {"name": "Divider", "icon": Icons.horizontal_rule, "category": "Layout"},
  {"name": "SliverAppBar", "icon": Icons.format_paint, "category": "Layout"},

  {"name": "ListView", "icon": Icons.list, "category": "List"},
  {"name": "ReorderableListView", "icon": Icons.reorder, "category": "List"},

  {"name": "GridView", "icon": Icons.grid_on, "category": "Grid"},

  {"name": "SingleChildScrollView", "icon": Icons.list, "category": "Scroll"},
  {"name": "NestedScrollView", "icon": Icons.list, "category": "Scroll"},
  {"name": "CustomScrollView", "icon": Icons.list, "category": "Scroll"},
  {"name": "ScrollConfiguration", "icon": Icons.list, "category": "Scroll"},

  {"name": "TextField", "icon": Icons.text_format, "category": "Input"},
  {"name": "Form", "icon": Icons.format_align_justify, "category": "Input"},
  {"name": "Slider", "icon": Icons.tune, "category": "Input"},
  {"name": "Switch", "icon": Icons.toggle_on, "category": "Input"},
  {"name": "ToggleButtons", "icon": Icons.toggle_off, "category": "Input"},
  {"name": "Checkbox", "icon": Icons.check_box, "category": "Input"},
  {"name": "Radio", "icon": Icons.radio_button_checked, "category": "Input"},
  {"name": "DatePicker", "icon": Icons.calendar_today, "category": "Input"},
  {"name": "TimePicker", "icon": Icons.access_time, "category": "Input"},
  {"name": "DropdownButton", "icon": Icons.arrow_drop_down, "category": "Input"},

  {"name": "PopupMenuButton", "icon": Icons.more_vert, "category": "Menu"},

  {"name": "NotificationListener", "icon": Icons.notifications, "category": "Other"},
  {"name": "Tooltip", "icon": Icons.info, "category": "Other"},

  {"name": "Hero", "icon": Icons.face, "category": "Animation"},
  {"name": "AnimatedAlign", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedContainer", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedCrossFade", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedDefaultTextStyle", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedPhysicalModel", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedPositioned", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedSize", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedSwitcher", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedWidget", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedModalBarrier", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedList", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "AnimatedPadding", "icon": Icons.crop_square, "category": "Animation"},
  {"name": "FadeTransition", "icon": Icons.swap_horiz_outlined, "category": "Animation"},
  {"name": "ScaleTransition", "icon": Icons.aspect_ratio, "category": "Animation"},
  {"name": "SizeTransition", "icon": Icons.photo_size_select_small, "category": "Animation"},
  {"name": "SlideTransition", "icon": Icons.slideshow, "category": "Animation"},

  {"name": "CupertinoActivityIndicator", "icon": Icons.refresh, "category": "Cupertino"},
  {"name": "CupertinoSwitch", "icon": Icons.toggle_on, "category": "Cupertino"},
  {"name": "CupertinoButton", "icon": Icons.touch_app, "category": "Cupertino"},
  {"name": "CupertinoSlider", "icon": Icons.tune, "category": "Cupertino"},
  {"name": "CupertinoContextMenu", "icon": Icons.more_vert, "category": "Cupertino"},
  {"name": "CupertinoDatePicker", "icon": Icons.calendar_today, "category": "Cupertino"},
  {"name": "CupertinoDialog", "icon": Icons.message, "category": "Cupertino"},
  {"name": "CupertinoNavigationBar", "icon": Icons.menu, "category": "Cupertino"},
  {"name": "CupertinoTabBar", "icon": Icons.tab, "category": "Cupertino"},
  {"name": "CupertinoContextMenuAction", "icon": Icons.more_vert, "category": "Cupertino"},
  {"name": "CupertinoFormSection", "icon": Icons.format_align_justify, "category": "Cupertino"},
  {"name": "CupertinoScrollbar", "icon": Icons.vertical_align_bottom, "category": "Cupertino"},
  {"name": "CupertinoSearchTextField", "icon": Icons.search, "category": "Cupertino"},
  {"name": "CupertinoTextSelectionToolbar", "icon": Icons.text_fields, "category": "Cupertino"},
  {"name": "CupertinoTimerPicker", "icon": Icons.timer, "category": "Cupertino"},
  {"name": "CupertinoSlidingSegmentedControl", "icon": Icons.layers, "category": "Cupertino"},
  {"name": "CupertinoSegmentedControl", "icon": Icons.segment, "category": "Cupertino"},
  {"name": "CupertinoPageScaffold", "icon": Icons.pageview, "category": "Cupertino"},
  {"name": "CupertinoTextField", "icon": Icons.text_fields, "category": "Cupertino"},

  {"name": "BottomNavigationBar", "icon": Icons.arrow_drop_down_circle, "category": "Navigation"},
  {"name": "AppBar", "icon": Icons.menu, "category": "Navigation"},
  {"name": "Drawer", "icon": Icons.menu_open, "category": "Navigation"},
  {"name": "TabBar", "icon": Icons.tab, "category": "Navigation"},
  {"name": "Stepper", "icon": Icons.timeline, "category": "Navigation"},
  {"name": "TabBarView", "icon": Icons.tab_unselected, "category": "Navigation"},

  {"name": "BottomSheet", "icon": Icons.vertical_align_bottom, "category": "Feedback"},
  {"name": "SnackBar", "icon": Icons.add_alert, "category": "Feedback"},
  {"name": "Dialog", "icon": Icons.message, "category": "Feedback"},

  {"name": "DataTable", "icon": Icons.table_chart, "category": "Data"},

  {"name": "ExpansionPanel", "icon": Icons.expand_more, "category": "Expansion"},
  {"name": "ExpansionTile", "icon": Icons.expand_more, "category": "Expansion"},

  {"name": "RichText", "icon": Icons.text_fields, "category": "Advanced"},

  {"name": "LinearProgressIndicator", "icon": Icons.linear_scale, "category": "Progress"},
  {"name": "CircularProgressIndicator", "icon": Icons.refresh, "category": "Progress"},

  {"name": "ProgressIndicator", "icon": Icons.hourglass_full, "category": "Progress"},
];

List<Map<String, dynamic>> getCategoryItems() {
  Set<String> categories = <String>{};
  List<Map<String, dynamic>> categoryItems = [];


  for (var item in widgetList) {
    if (!categories.contains(item['category'])) {
      categories.add(item['category']);
      categoryItems.add(item);
    }
  }
  return categoryItems;
}

List<Map<String, dynamic>> getCategoryItemsByCategory(String category) {
  return widgetList.where((item) => item['category'] == category).toList();
}
