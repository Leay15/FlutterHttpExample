import 'package:auto_route/annotations.dart';
import 'package:http_example/pages/detail_page.dart';
import 'package:http_example/pages/home_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(page: HomePage, initial: true),
  AutoRoute(page: DetailPage)
])
class $AppRouter {}
