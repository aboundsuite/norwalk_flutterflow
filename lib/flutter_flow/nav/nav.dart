import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  NorwalkBaptistChurchAuthUser? initialUser;
  NorwalkBaptistChurchAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(NorwalkBaptistChurchAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : Public2Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : Public2Widget(),
        ),
        FFRoute(
          name: 'AccountCreate1',
          path: '/accountCreate1',
          builder: (context, params) => AccountCreate1Widget(),
        ),
        FFRoute(
          name: 'AccountCreate3',
          path: '/accountCreate3',
          builder: (context, params) => AccountCreate3Widget(),
        ),
        FFRoute(
          name: 'Onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Home') : HomeWidget(),
        ),
        FFRoute(
          name: 'Serve',
          path: '/serve',
          builder: (context, params) => ServeWidget(),
        ),
        FFRoute(
          name: 'Directory',
          path: '/directory',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Directory')
              : DirectoryWidget(),
        ),
        FFRoute(
          name: 'bulletinID',
          path: '/bulletinID',
          builder: (context, params) => BulletinIDWidget(
            bulletinID: params.getParam(
              'bulletinID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'profileIimageAdd',
          path: '/profileIimageAdd',
          builder: (context, params) => ProfileIimageAddWidget(),
        ),
        FFRoute(
          name: 'AccountCreate2',
          path: '/accountCreate2',
          builder: (context, params) => AccountCreate2Widget(),
        ),
        FFRoute(
          name: 'AccountCreate4',
          path: '/accountCreate4',
          builder: (context, params) => AccountCreate4Widget(),
        ),
        FFRoute(
          name: 'salvationJourney',
          path: '/salvationJourney',
          builder: (context, params) => SalvationJourneyWidget(),
        ),
        FFRoute(
          name: 'churchDirectoryDetails',
          path: '/churchDirectoryDetails',
          builder: (context, params) => ChurchDirectoryDetailsWidget(
            userID: params.getParam(
              'userID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'youtubeDetails',
          path: '/youtubeDetails',
          builder: (context, params) => YoutubeDetailsWidget(
            bulletinID: params.getParam(
              'bulletinID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'personalINformation',
          path: '/personalINformation',
          builder: (context, params) => PersonalINformationWidget(),
        ),
        FFRoute(
          name: 'errorPage',
          path: '/errorPage',
          builder: (context, params) => ErrorPageWidget(),
        ),
        FFRoute(
          name: 'bulletinComments',
          path: '/bulletinComments',
          builder: (context, params) => BulletinCommentsWidget(
            bulletin: params.getParam(
              'bulletin',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'bibleReadingDevotions',
          path: '/bibleReadingDevotions',
          builder: (context, params) => BibleReadingDevotionsWidget(),
        ),
        FFRoute(
          name: 'groups',
          path: '/groups',
          builder: (context, params) => GroupsWidget(),
        ),
        FFRoute(
          name: 'eventDetails',
          path: '/eventDetails',
          builder: (context, params) => EventDetailsWidget(
            eventID: params.getParam(
              'eventID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'public2',
          path: '/public2',
          builder: (context, params) => Public2Widget(),
        ),
        FFRoute(
          name: 'SalvationDecision',
          path: '/salvationDecision',
          builder: (context, params) => SalvationDecisionWidget(),
        ),
        FFRoute(
          name: 'bibleReading',
          path: '/bibleReading',
          builder: (context, params) => BibleReadingWidget(
            bibleReadingID: params.getParam(
              'bibleReadingID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'devotionID',
          path: '/devotionID',
          builder: (context, params) => DevotionIDWidget(
            devotionsID: params.getParam(
              'devotionsID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'prayerList',
          path: '/prayerList',
          builder: (context, params) => PrayerListWidget(),
        ),
        FFRoute(
          name: 'praisesList',
          path: '/praisesList',
          builder: (context, params) => PraisesListWidget(),
        ),
        FFRoute(
          name: 'healthNeeds',
          path: '/healthNeeds',
          builder: (context, params) => HealthNeedsWidget(),
        ),
        FFRoute(
          name: 'groupDetails',
          path: '/groupDetails',
          builder: (context, params) => GroupDetailsWidget(
            groupID: params.getParam(
              'groupID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'visitorSignUp',
          path: '/visitorSignUp',
          builder: (context, params) => VisitorSignUpWidget(),
        ),
        FFRoute(
          name: 'visitorSignupConfirmation',
          path: '/visitorSignupConfirmation',
          builder: (context, params) => VisitorSignupConfirmationWidget(),
        ),
        FFRoute(
          name: 'deleteAccount',
          path: '/deleteAccount',
          builder: (context, params) => DeleteAccountWidget(),
        ),
        FFRoute(
          name: 'deleteConfirmation',
          path: '/deleteConfirmation',
          builder: (context, params) => DeleteConfirmationWidget(),
        ),
        FFRoute(
          name: 'cancelDeleteConfirmationSuccess',
          path: '/cancelDeleteConfirmationSuccess',
          builder: (context, params) => CancelDeleteConfirmationSuccessWidget(),
        ),
        FFRoute(
          name: 'password',
          path: '/password',
          builder: (context, params) => PasswordWidget(),
        ),
        FFRoute(
          name: 'profileImageChange',
          path: '/profileImageChange',
          builder: (context, params) => ProfileImageChangeWidget(),
        ),
        FFRoute(
          name: 'createPrayers',
          path: '/createPrayers',
          builder: (context, params) => CreatePrayersWidget(),
        ),
        FFRoute(
          name: 'MyPrayers',
          path: '/myPrayers',
          builder: (context, params) => MyPrayersWidget(),
        ),
        FFRoute(
          name: 'MyPraises',
          path: '/myPraises',
          builder: (context, params) => MyPraisesWidget(),
        ),
        FFRoute(
          name: 'MyTasks',
          path: '/myTasks',
          builder: (context, params) => MyTasksWidget(),
        ),
        FFRoute(
          name: 'MyCheckIN',
          path: '/myCheckIN',
          builder: (context, params) => MyCheckINWidget(),
        ),
        FFRoute(
          name: 'MyFamily',
          path: '/myFamily',
          builder: (context, params) => MyFamilyWidget(),
        ),
        FFRoute(
          name: 'getPrayerID',
          path: '/getPrayerID',
          builder: (context, params) => GetPrayerIDWidget(
            userPrayerID: params.getParam(
              'userPrayerID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'createPraises',
          path: '/createPraises',
          builder: (context, params) => CreatePraisesWidget(),
        ),
        FFRoute(
          name: 'getPraiseID',
          path: '/getPraiseID',
          builder: (context, params) => GetPraiseIDWidget(
            userPrayerID: params.getParam(
              'userPrayerID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'servingOpportunities',
          path: '/servingOpportunities',
          builder: (context, params) => ServingOpportunitiesWidget(),
        ),
        FFRoute(
          name: 'mealTalk',
          path: '/mealTalk',
          builder: (context, params) => MealTalkWidget(),
        ),
        FFRoute(
          name: 'servingOpportunityID',
          path: '/servingOpportunityID',
          builder: (context, params) => ServingOpportunityIDWidget(
            servingOpportunityID: params.getParam(
              'servingOpportunityID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'mealTalkID',
          path: '/mealTalkID',
          builder: (context, params) => MealTalkIDWidget(
            servingOpportunityID: params.getParam(
              'servingOpportunityID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'churchGroups',
          path: '/churchGroups',
          builder: (context, params) => ChurchGroupsWidget(),
        ),
        FFRoute(
          name: 'churchGroupID',
          path: '/churchGroupID',
          builder: (context, params) => ChurchGroupIDWidget(
            churchGroupID: params.getParam(
              'churchGroupID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ServeCopy',
          path: '/serveCopy',
          builder: (context, params) => ServeCopyWidget(),
        ),
        FFRoute(
          name: 'profileReviewPending',
          path: '/profileReviewPending',
          builder: (context, params) => ProfileReviewPendingWidget(),
        ),
        FFRoute(
          name: 'profileReview',
          path: '/profileReview',
          builder: (context, params) => ProfileReviewWidget(),
        ),
        FFRoute(
          name: 'coverImageAdd',
          path: '/coverImageAdd',
          builder: (context, params) => CoverImageAddWidget(),
        ),
        FFRoute(
          name: 'testimony',
          path: '/testimony',
          builder: (context, params) => TestimonyWidget(),
        ),
        FFRoute(
          name: 'address',
          path: '/address',
          builder: (context, params) => AddressWidget(),
        ),
        FFRoute(
          name: 'profileDashboard',
          path: '/profileDashboard',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profileDashboard')
              : ProfileDashboardWidget(),
        ),
        FFRoute(
          name: 'prayerListCopy',
          path: '/prayerListCopy',
          builder: (context, params) => PrayerListCopyWidget(),
        ),
        FFRoute(
          name: 'AddGroups',
          path: '/addGroups',
          builder: (context, params) => AddGroupsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/public2';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/images/nbc_logo.png',
                      width: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
