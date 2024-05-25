part of 'pexels_services.dart';

GetIt getIt = GetIt.instance;

class MainWidget extends StatelessWidget {
  const MainWidget(
      {super.key,
      this.lightTheme,
      this.darkTheme,
      this.onGenerateRoutes,
      this.home,
      this.providers});

  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final RouteFactory? onGenerateRoutes;
  final Widget? home;
  final List<dynamic>? providers;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...providers ?? [],
        ...initProviders,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "MediaFetch",
        theme: lightTheme,
        darkTheme: darkTheme,
        onGenerateRoute: onGenerateRoutes,
        home: home,
      ),
    );
  }
}
