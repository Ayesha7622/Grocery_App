import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';
import 'package:newgroceryapp/view/auth_views/login_stack.dart';
import 'package:newgroceryapp/view/auth_views/sign_up_stack.dart';
import 'package:newgroceryapp/view/auth_views/welcome_stack.dart';
import 'package:newgroceryapp/view/home_views/bottom_bar.dart';
import 'package:newgroceryapp/view/home_views/contacts.dart';
import 'package:newgroceryapp/view/home_views/home_screens/home_view.dart';
import 'package:newgroceryapp/view/home_views/home_screens/product_details_view.dart';
import 'package:newgroceryapp/view/home_views/notification.dart';
import 'package:newgroceryapp/view/home_views/order.dart';
import 'package:newgroceryapp/view/home_views/transactions.dart';
import 'package:newgroceryapp/view/starting_view/intro_screen.dart';
import 'package:newgroceryapp/view/starting_view/spalsh_screen3.dart';
import 'package:newgroceryapp/view/starting_view/splash_screen2.dart';
import 'package:newgroceryapp/view/starting_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: //ProductDetailsView(image: image, name: name, price: price)
            //BoradingWidgetScreen()
            //SpalshScreen3()
            //SplashScreen2Class()
            //Splash_Screen_Project(),
            //PasswordClassNew()
            //StackScreen()
            //StackScreen2()
            //StackScreen3()
            //BottomBarClass()
            //ContactClass()
            //SwitchClass()
            // NotificationClass()
            //MyOrder()
            TensactionClass());
    //      MyNotification());
  }
}

// switch button---------
class SwitchClass extends StatefulWidget {
  const SwitchClass({super.key});

  @override
  State<SwitchClass> createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchClass> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
            activeColor: AppColors.green,
            value: isSwitched,
            onChanged: (value) {
              isSwitched = value;
              setState(() {});
            }),
      ),
    );
  }
}

class PasswordClassNew extends StatefulWidget {
  const PasswordClassNew({super.key});

  @override
  State<PasswordClassNew> createState() => _PasswordClassNewState();
}

class _PasswordClassNewState extends State<PasswordClassNew> {
  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: TextFormField(
            obscureText: isSecure, // flase--true
            decoration: InputDecoration(
                hintText: 'Enter password',
                suffixIcon: IconButton(
                    onPressed: () {
                      if (isSecure == true) {
                        //  bool secure = false;
                        isSecure = false;
                      } else {
                        isSecure = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(isSecure == true
                        ? Icons.remove_red_eye
                        : Icons.visibility_off))),
          ),
        ),
      ),
    );
  }
}
