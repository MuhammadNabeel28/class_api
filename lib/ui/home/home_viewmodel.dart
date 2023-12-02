import 'package:hanbhaee/app/app.locator.dart';
import 'package:hanbhaee/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final counterService = locator<CounterService>();
  final navigationService = locator<NavigationService>();

  int get counter => counterService.counter.value;

  @override
  List<ListenableServiceMixin> get listenableServices => [counterService];

  addCounter() {
    counterService.addCounter();
    rebuildUi();
  }

  navigateToCounter() {
    navigationService.back();
  }
}
