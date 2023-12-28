import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/screens/Cart/cart.dart';
import '/screens/Catalogue/catalogue.dart';
import '/screens/CheckOut/check_out.dart';
import '/screens/Favorite/favorite.dart';
import '/screens/Filter/filter.dart';
import '/screens/Home/home.dart';
import '/screens/Items/items.dart';
import '/screens/Login/phone_screen.dart';
import '/screens/Login/verification_screen.dart';
import '/screens/Main/main.dart';
import '/screens/Notifications/notifications.dart';
import '/screens/Onboarding/onboarding.dart';
import '/screens/Orders/order.dart';
import '/screens/PrivacyPolicy/privacy_policy.dart';
import '/screens/Product/product.dart';
import '/screens/Profile/profile.dart';
import '/screens/Settings/settings.dart';
import '/screens/ShippingAddress/shipping_address.dart';
import '/screens/SignUp/sign_up.dart';

class AppConstants {
  static Map<String, Widget Function(dynamic)> appRoutes = {
    '/': (_) => const OnBoarding(),
    Login.routeName: (_) => const Login(),
    Verification.routeName: (_) => const Verification(),
    Home.routeName: (_) => const Home(),
    Main.routeName: (_) => const Main(),
    Catalogue.routeName: (_) => const Catalogue(),
    Items.routeName: (_) => const Items(),
    Filter.routeName: (_) => const Filter(),
    Product.routeName: (_) => Product(),
    Favorite.routeName: (_) => const Favorite(),
    Profile.routeName: (_) => const Profile(),
    Cart.routeName: (_) => const Cart(),
    CheckOut.routeName: (_) => const CheckOut(),
    SignUp.routeName: (_) => const SignUp(),
    Settings.routeName: (_) => const Settings(),
    Orders.routeName: (_) => const Orders(),
    PrivacyPolicy.routeName: (_) => const PrivacyPolicy(),
    OnBoarding.routeName: (_) => const OnBoarding(),
    NotificationScreen.routeName: (_) => const NotificationScreen(),
    ShippingAddress.routeName: (_) => const ShippingAddress(),
  };

  static setSystemStyling() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  static const privacyPolicyTxt = 'This is Makcart privacy guidelines ...';
}
