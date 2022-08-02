import 'package:projectfigma/presentation/sing_up_screen/sing_up_screen.dart';
import 'package:projectfigma/presentation/sing_up_screen/binding/sing_up_binding.dart';
import 'package:projectfigma/presentation/home_screen/home_screen.dart';
import 'package:projectfigma/presentation/home_screen/binding/home_binding.dart';
import 'package:projectfigma/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:projectfigma/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String singUpScreen = '/sing_up_screen';

  static String homeScreen = '/home_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: singUpScreen,
      page: () => SingUpScreen(),
      bindings: [
        SingUpBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SingUpScreen(),
      bindings: [
        SingUpBinding(),
      ],
    )
  ];
}
