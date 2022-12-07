// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:base_flutter/customer/screens/home/HomeImports.dart' as _i17;
import 'package:base_flutter/customer/screens/register/register_imports.dart'
    as _i15;
import 'package:base_flutter/customer/screens/see_all/see_all_imports.dart'
    as _i18;
import 'package:base_flutter/customer/screens/welcome_page/WelcomePageImports.dart'
    as _i16;
import 'package:base_flutter/general/screens/about/AboutImports.dart' as _i8;
import 'package:base_flutter/general/screens/active_account/ActiveAccountImports.dart'
    as _i4;
import 'package:base_flutter/general/screens/change_password/ChangePasswordImports.dart'
    as _i12;
import 'package:base_flutter/general/screens/confirm_password/ConfirmPasswordImports.dart'
    as _i11;
import 'package:base_flutter/general/screens/contact_us/ContactUsImports.dart'
    as _i9;
import 'package:base_flutter/general/screens/forget_password/ForgetPasswordImports.dart'
    as _i3;
import 'package:base_flutter/general/screens/image_zoom/ImageZoom.dart' as _i13;
import 'package:base_flutter/general/screens/location_address/LocationAddressImports.dart'
    as _i14;
import 'package:base_flutter/general/screens/login/LoginImports.dart' as _i2;
import 'package:base_flutter/general/screens/reset_password/ResetPasswordImports.dart'
    as _i5;
import 'package:base_flutter/general/screens/select_lang/SelectLangImports.dart'
    as _i6;
import 'package:base_flutter/general/screens/select_user/SelectUserImports.dart'
    as _i10;
import 'package:base_flutter/general/screens/splash/SplashImports.dart' as _i1;
import 'package:base_flutter/general/screens/terms/TermsImports.dart' as _i7;
import 'package:flutter/material.dart' as _i20;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>();
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i1.Splash(navigatorKey: args.navigatorKey));
    },
    LoginRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.Login(),
          opaque: true,
          barrierDismissible: false);
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.ForgetPassword());
    },
    ActiveAccountRoute.name: (routeData) {
      final args = routeData.argsAs<ActiveAccountRouteArgs>();
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i4.ActiveAccount(userId: args.userId));
    },
    ResetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordRouteArgs>();
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i5.ResetPassword(userId: args.userId));
    },
    SelectLangRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i6.SelectLang());
    },
    TermsRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i7.Terms());
    },
    AboutRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i8.About());
    },
    ContactUsRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i9.ContactUs());
    },
    SelectUserRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.SelectUser(),
          transitionsBuilder: _i19.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 1500,
          opaque: true,
          barrierDismissible: false);
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i11.ConfirmPassword());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i12.ChangePassword());
    },
    ImageZoomRoute.name: (routeData) {
      final args = routeData.argsAs<ImageZoomRouteArgs>();
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i13.ImageZoom(images: args.images));
    },
    LocationAddressRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i14.LocationAddress());
    },
    RegisterRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.Register());
    },
    WelcomePageRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i16.WelcomePage());
    },
    HomeRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData, child: _i17.Home());
    },
    SeeAllRoute.name: (routeData) {
      final args = routeData.argsAs<SeeAllRouteArgs>();
      return _i19.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i18.SeeAll(
              key: args.key, title: args.title, showFilter: args.showFilter));
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(SplashRoute.name, path: '/'),
        _i19.RouteConfig(LoginRoute.name, path: '/Login'),
        _i19.RouteConfig(ForgetPasswordRoute.name, path: '/forget-password'),
        _i19.RouteConfig(ActiveAccountRoute.name, path: '/active-account'),
        _i19.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i19.RouteConfig(SelectLangRoute.name, path: '/select-lang'),
        _i19.RouteConfig(TermsRoute.name, path: '/Terms'),
        _i19.RouteConfig(AboutRoute.name, path: '/About'),
        _i19.RouteConfig(ContactUsRoute.name, path: '/contact-us'),
        _i19.RouteConfig(SelectUserRoute.name, path: '/select-user'),
        _i19.RouteConfig(ConfirmPasswordRoute.name, path: '/confirm-password'),
        _i19.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i19.RouteConfig(ImageZoomRoute.name, path: '/image-zoom'),
        _i19.RouteConfig(LocationAddressRoute.name, path: '/location-address'),
        _i19.RouteConfig(RegisterRoute.name, path: '/Register'),
        _i19.RouteConfig(WelcomePageRoute.name, path: '/welcome-page'),
        _i19.RouteConfig(HomeRoute.name, path: '/Home'),
        _i19.RouteConfig(SeeAllRoute.name, path: '/see-all')
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i19.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({required _i20.GlobalKey<_i20.NavigatorState> navigatorKey})
      : super(SplashRoute.name,
            path: '/', args: SplashRouteArgs(navigatorKey: navigatorKey));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({required this.navigatorKey});

  final _i20.GlobalKey<_i20.NavigatorState> navigatorKey;

  @override
  String toString() {
    return 'SplashRouteArgs{navigatorKey: $navigatorKey}';
  }
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/Login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ForgetPassword]
class ForgetPasswordRoute extends _i19.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(ForgetPasswordRoute.name, path: '/forget-password');

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i4.ActiveAccount]
class ActiveAccountRoute extends _i19.PageRouteInfo<ActiveAccountRouteArgs> {
  ActiveAccountRoute({required String userId})
      : super(ActiveAccountRoute.name,
            path: '/active-account',
            args: ActiveAccountRouteArgs(userId: userId));

  static const String name = 'ActiveAccountRoute';
}

class ActiveAccountRouteArgs {
  const ActiveAccountRouteArgs({required this.userId});

  final String userId;

  @override
  String toString() {
    return 'ActiveAccountRouteArgs{userId: $userId}';
  }
}

/// generated route for
/// [_i5.ResetPassword]
class ResetPasswordRoute extends _i19.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({required String userId})
      : super(ResetPasswordRoute.name,
            path: '/reset-password',
            args: ResetPasswordRouteArgs(userId: userId));

  static const String name = 'ResetPasswordRoute';
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({required this.userId});

  final String userId;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{userId: $userId}';
  }
}

/// generated route for
/// [_i6.SelectLang]
class SelectLangRoute extends _i19.PageRouteInfo<void> {
  const SelectLangRoute() : super(SelectLangRoute.name, path: '/select-lang');

  static const String name = 'SelectLangRoute';
}

/// generated route for
/// [_i7.Terms]
class TermsRoute extends _i19.PageRouteInfo<void> {
  const TermsRoute() : super(TermsRoute.name, path: '/Terms');

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i8.About]
class AboutRoute extends _i19.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/About');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i9.ContactUs]
class ContactUsRoute extends _i19.PageRouteInfo<void> {
  const ContactUsRoute() : super(ContactUsRoute.name, path: '/contact-us');

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i10.SelectUser]
class SelectUserRoute extends _i19.PageRouteInfo<void> {
  const SelectUserRoute() : super(SelectUserRoute.name, path: '/select-user');

  static const String name = 'SelectUserRoute';
}

/// generated route for
/// [_i11.ConfirmPassword]
class ConfirmPasswordRoute extends _i19.PageRouteInfo<void> {
  const ConfirmPasswordRoute()
      : super(ConfirmPasswordRoute.name, path: '/confirm-password');

  static const String name = 'ConfirmPasswordRoute';
}

/// generated route for
/// [_i12.ChangePassword]
class ChangePasswordRoute extends _i19.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i13.ImageZoom]
class ImageZoomRoute extends _i19.PageRouteInfo<ImageZoomRouteArgs> {
  ImageZoomRoute({required List<dynamic> images})
      : super(ImageZoomRoute.name,
            path: '/image-zoom', args: ImageZoomRouteArgs(images: images));

  static const String name = 'ImageZoomRoute';
}

class ImageZoomRouteArgs {
  const ImageZoomRouteArgs({required this.images});

  final List<dynamic> images;

  @override
  String toString() {
    return 'ImageZoomRouteArgs{images: $images}';
  }
}

/// generated route for
/// [_i14.LocationAddress]
class LocationAddressRoute extends _i19.PageRouteInfo<void> {
  const LocationAddressRoute()
      : super(LocationAddressRoute.name, path: '/location-address');

  static const String name = 'LocationAddressRoute';
}

/// generated route for
/// [_i15.Register]
class RegisterRoute extends _i19.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/Register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i16.WelcomePage]
class WelcomePageRoute extends _i19.PageRouteInfo<void> {
  const WelcomePageRoute()
      : super(WelcomePageRoute.name, path: '/welcome-page');

  static const String name = 'WelcomePageRoute';
}

/// generated route for
/// [_i17.Home]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/Home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i18.SeeAll]
class SeeAllRoute extends _i19.PageRouteInfo<SeeAllRouteArgs> {
  SeeAllRoute({_i20.Key? key, required String title, required bool showFilter})
      : super(SeeAllRoute.name,
            path: '/see-all',
            args: SeeAllRouteArgs(
                key: key, title: title, showFilter: showFilter));

  static const String name = 'SeeAllRoute';
}

class SeeAllRouteArgs {
  const SeeAllRouteArgs(
      {this.key, required this.title, required this.showFilter});

  final _i20.Key? key;

  final String title;

  final bool showFilter;

  @override
  String toString() {
    return 'SeeAllRouteArgs{key: $key, title: $title, showFilter: $showFilter}';
  }
}
