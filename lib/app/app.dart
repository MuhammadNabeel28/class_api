import 'package:hanbhaee/ui/home/home_view.dart';
import 'package:hanbhaee/ui/posts/post_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../ui/counter/counter_view.dart';
import '../services/counter_service.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView, initial: true),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: PostView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)
])
class App {}
