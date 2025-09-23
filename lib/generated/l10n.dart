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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Register`
  String get rigester {
    return Intl.message(
      'Register',
      name: 'rigester',
      desc: '',
      args: [],
    );
  }

  /// `Register in EVCharge and make your life easier`
  String get regester_subtitle {
    return Intl.message(
      'Register in EVCharge and make your life easier',
      name: 'regester_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_an_account_buttom {
    return Intl.message(
      'Create an account',
      name: 'create_an_account_buttom',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account`
  String get have_account {
    return Intl.message(
      'Already have an account',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message(
      'Log in',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Not a member`
  String get not_member {
    return Intl.message(
      'Not a member',
      name: 'not_member',
      desc: '',
      args: [],
    );
  }

  /// `Register now`
  String get regester_now {
    return Intl.message(
      'Register now',
      name: 'regester_now',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Stations`
  String get nearby_stations {
    return Intl.message(
      'Nearby Stations',
      name: 'nearby_stations',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Electricy_used`
  String get electricy_used {
    return Intl.message(
      'Electricy_used',
      name: 'electricy_used',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get calculate_buttom {
    return Intl.message(
      'Calculate',
      name: 'calculate_buttom',
      desc: '',
      args: [],
    );
  }

  /// `Is your car running out of charge?`
  String get report_car_title_view {
    return Intl.message(
      'Is your car running out of charge?',
      name: 'report_car_title_view',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, we have a special team for this problem to transport your car to the nearest possible station, just send the attached information in front of you, and we will reach you as soon as possible.`
  String get report_subtitle {
    return Intl.message(
      'Don\'t worry, we have a special team for this problem to transport your car to the nearest possible station, just send the attached information in front of you, and we will reach you as soon as possible.',
      name: 'report_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Your_name`
  String get your_name {
    return Intl.message(
      'Your_name',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `Your_phone`
  String get your_phone {
    return Intl.message(
      'Your_phone',
      name: 'your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Submite`
  String get submite_buttom {
    return Intl.message(
      'Submite',
      name: 'submite_buttom',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `About EVCharge`
  String get about_evcharge {
    return Intl.message(
      'About EVCharge',
      name: 'about_evcharge',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get sign_out {
    return Intl.message(
      'Sign Out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Who're We`
  String get who_are_we {
    return Intl.message(
      'Who\'re We',
      name: 'who_are_we',
      desc: '',
      args: [],
    );
  }

  /// `EVCharge is your go-to destination for hassle-free electric vehicle charging. Our extensive network of charging stations provides a seamless charging experience wherever you go. With our smart app, you can easily locate the nearest available charging station and start charging in no time.`
  String get evcharge_info {
    return Intl.message(
      'EVCharge is your go-to destination for hassle-free electric vehicle charging. Our extensive network of charging stations provides a seamless charging experience wherever you go. With our smart app, you can easily locate the nearest available charging station and start charging in no time.',
      name: 'evcharge_info',
      desc: '',
      args: [],
    );
  }

  /// `Follow us on`
  String get follow_us {
    return Intl.message(
      'Follow us on',
      name: 'follow_us',
      desc: '',
      args: [],
    );
  }

  /// `The password is too weak`
  String get password_weak {
    return Intl.message(
      'The password is too weak',
      name: 'password_weak',
      desc: '',
      args: [],
    );
  }

  /// `This email is already in use, please sign in`
  String get email_exist {
    return Intl.message(
      'This email is already in use, please sign in',
      name: 'email_exist',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again`
  String get error_mess {
    return Intl.message(
      'An error occurred, please try again',
      name: 'error_mess',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password`
  String get incorrect_email_and_password {
    return Intl.message(
      'Incorrect email or password',
      name: 'incorrect_email_and_password',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalid_email_format {
    return Intl.message(
      'Invalid email format',
      name: 'invalid_email_format',
      desc: '',
      args: [],
    );
  }

  /// `Too many attempts, please try again later`
  String get too_many_request {
    return Intl.message(
      'Too many attempts, please try again later',
      name: 'too_many_request',
      desc: '',
      args: [],
    );
  }

  /// `distance`
  String get distance {
    return Intl.message(
      'distance',
      name: 'distance',
      desc: '',
      args: [],
    );
  }

  /// `address`
  String get address {
    return Intl.message(
      'address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `station_information`
  String get station_information {
    return Intl.message(
      'station_information',
      name: 'station_information',
      desc: '',
      args: [],
    );
  }

  /// `close`
  String get close {
    return Intl.message(
      'close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `please write your phone number`
  String get error_write_your_phone {
    return Intl.message(
      'please write your phone number',
      name: 'error_write_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been submitted, we will be with you as soon as possible.`
  String get dialog_content {
    return Intl.message(
      'Your request has been submitted, we will be with you as soon as possible.',
      name: 'dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully logged in`
  String get login_succ {
    return Intl.message(
      'You have successfully logged in',
      name: 'login_succ',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully Register`
  String get register_succ {
    return Intl.message(
      'You have successfully Register',
      name: 'register_succ',
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
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
