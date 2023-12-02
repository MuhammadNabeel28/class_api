import 'package:hanbhaee/app/app.locator.dart';
import 'package:hanbhaee/app/app.router.dart';
import 'package:hanbhaee/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends ReactiveViewModel {
  final counterService = locator<CounterService>();
  final navigationService = locator<NavigationService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [counterService];

  int get counter => counterService.counter.value;

  addCounter() {
    counterService.addCounter();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateToHomeView();
    // rebuildUi();
  }

  navigateToPosts() {
    navigationService.navigateToPostView();
    // rebuildUi();
  }
}
