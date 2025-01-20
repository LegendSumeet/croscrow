import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/push_notifications/push_notifications_util.dart';
import 'backend/firebase/firebase_config.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure initialization
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await initFirebase();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  // Remove the splash screen after initialization is complete
  FlutterNativeSplash.remove();

  runApp(
    ChangeNotifierProvider(
      create: (context) => appState,
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<BaseAuthUser> userStream;

  final authUserSub = authenticatedUserStream.listen((_) {});
  final fcmTokenSub = fcmTokenUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = ss99FirebaseUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });
    jwtTokenStream.listen((_) {});
  }

  @override
  void dispose() {
    authUserSub.cancel();
    fcmTokenSub.cancel();
    super.dispose();
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'croscrow',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage});

  final String? initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  static const String _defaultPageName = 'homepageCopyCopyCopyCopy';
  late String _currentPageName;
  late int _currentIndex;

  final Map<String, Widget> _persistentTabs = {
    'homepageCopyCopyCopyCopy': const HomepageCopyCopyCopyCopyWidget(),
    'newdropsCopy': const NewdropsCopyWidget(),
  };

  final List<String> _dynamicTabs = ['favourites', 'cart6Copy'];

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _defaultPageName;
    _currentIndex = _getIndexFromPageName(_currentPageName);
  }

  int _getIndexFromPageName(String pageName) {
    if (_persistentTabs.containsKey(pageName)) {
      return _persistentTabs.keys.toList().indexOf(pageName);
    } else {
      return _persistentTabs.length + _dynamicTabs.indexOf(pageName);
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index < _persistentTabs.length) {
        _currentPageName = _persistentTabs.keys.toList()[index];
      } else {
        _currentPageName = _dynamicTabs[index - _persistentTabs.length];
      }
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ..._persistentTabs.values,
          if (_currentPageName == 'favourites')
            const FavouritesWidget()
          else
            const SizedBox.shrink(),
          if (_currentPageName == 'cart6Copy')
            const Cart6CopyWidget()
          else
            const SizedBox.shrink(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        backgroundColor: theme.secondaryBackground,
        selectedItemColor: theme.primaryText,
        unselectedItemColor: const Color(0x8A000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 24.0),
            activeIcon: Icon(Icons.home, size: 24.0),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_sharp, size: 24.0),
            activeIcon: Icon(Icons.newspaper, size: 24.0),
            label: 'New Drops',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 24.0),
            activeIcon: Icon(Icons.favorite, size: 24.0),
            label: 'Favourites',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined, size: 24.0),
            activeIcon: Icon(Icons.shopping_bag_rounded, size: 24.0),
            label: 'Cart',
            tooltip: '',
          ),
        ],
      ),
    );
  }
}



