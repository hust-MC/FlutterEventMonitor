import 'dart:io';

import 'package:kernel/ast.dart';
import 'package:vm/target/flutter.dart';

import 'track_visitor.dart';

/// 注入Inspect开关
class InspectorTransformer extends FlutterProgramTransformer {

  @override
  void transform(Component component) {
    print('Start Inspector Transformer');
    WidgetCreatorTracker().transform(component, component.libraries, null);
  }
}
