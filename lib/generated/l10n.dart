// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hoopooh`
  String get title_app {
    return Intl.message(
      'hoopooh',
      name: 'title_app',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get bottom_navigation_chat {
    return Intl.message(
      'Chat',
      name: 'bottom_navigation_chat',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottom_navigation_home {
    return Intl.message(
      'Home',
      name: 'bottom_navigation_home',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get bottom_navigation_setting {
    return Intl.message(
      'Setting',
      name: 'bottom_navigation_setting',
      desc: '',
      args: [],
    );
  }

  /// `Teachers`
  String get teachers {
    return Intl.message(
      'Teachers',
      name: 'teachers',
      desc: '',
      args: [],
    );
  }

  /// `Mood`
  String get mood {
    return Intl.message(
      'Mood',
      name: 'mood',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Nap`
  String get nap {
    return Intl.message(
      'Nap',
      name: 'nap',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get activities {
    return Intl.message(
      'Activities',
      name: 'activities',
      desc: '',
      args: [],
    );
  }

  /// `Behaviour`
  String get behaviour {
    return Intl.message(
      'Behaviour',
      name: 'behaviour',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Get a report about every day in your child's kindergarten`
  String get splash_screen_title_1 {
    return Intl.message(
      'Get a report about every day in your child\'s kindergarten',
      name: 'splash_screen_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Сonvenient chat between parents and educator`
  String get splash_screen_title_2 {
    return Intl.message(
      'Сonvenient chat between parents and educator',
      name: 'splash_screen_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Join your child to classes`
  String get splash_screen_title_3 {
    return Intl.message(
      'Join your child to classes',
      name: 'splash_screen_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Earn points and real cash when you win a battle with no delay in cashing out`
  String get splash_screen_sub_title_1 {
    return Intl.message(
      'Earn points and real cash when you win a battle with no delay in cashing out',
      name: 'splash_screen_sub_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get log_in {
    return Intl.message(
      'Log In',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Connect With:`
  String get connect_with {
    return Intl.message(
      'Connect With:',
      name: 'connect_with',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dont_have_account {
    return Intl.message(
      'Don’t have an account?',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Email:`
  String get email {
    return Intl.message(
      'Email:',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password:`
  String get password {
    return Intl.message(
      'Password:',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Let’s Combat!`
  String get lets_combat {
    return Intl.message(
      'Let’s Combat!',
      name: 'lets_combat',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}