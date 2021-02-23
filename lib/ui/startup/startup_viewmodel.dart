import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_setup/app/app.locator.dart';
import 'package:stacked_setup/app/app.router.dart';

// BUSINESS LOGIC AND VIEW STATE

class StartUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String title = '';

  void doSomething() {
    _navigationService.navigateTo(Routes.secondView);
  }
}
