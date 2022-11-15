import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/di_configuration/configure_injectable.dart';
import 'package:tproger_mobile_app/src/services/store_factory.dart';
import 'package:tproger_mobile_app/src/widgets/app_widget.dart';

// TODO: fonts
// TODO: fix blur
// TODO: bug
// Performing hot restart...
// Restarted application in 355ms.
// [VERBOSE-2:dart_vm_initializer.cc(41)] Unhandled Exception: setState() called after dispose(): _ArticleContentImageContainerWidgetState#ece6c(lifecycle state: defunct, not mounted)
// This error happens if you call setState() on a State object for a widget that no longer appears in the widget tree (e.g., whose parent widget no longer includes the widget in its build). This error can occur when code calls setState() from a timer or an animation callback.
// The preferred solution is to cancel the timer or stop listening to the animation in the dispose() callback. Another solution is to check the "mounted" property of this object before calling setState() to ensure the object is still in the tree.
// This error might indicate a memory leak if setState() is being called because another object is retaining a reference to this State object after it has been removed from the tree. To avoid memory leaks, consider breaking the reference to this object during dispose().
// #0      State.setState.<anonymous closure> (pack<…>

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final getIt = configureInjectable();

  final storeFactory = getIt.get<StoreFactory>();

  runApp(StoreProvider<AppState>(
    store: storeFactory.create(),
    child: const AppWidget(),
  ));
}
