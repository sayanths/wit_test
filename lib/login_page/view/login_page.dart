import 'package:flutter/material.dart';
import 'package:wit_test/core/colors.dart';
import 'package:wit_test/core/fonts.dart';
import 'package:wit_test/core/widgets.dart';

import 'widgets/textfield_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final loginProvider = context.read<LoginController>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  loginBg,
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height / 9,
                width: size.width,
                decoration: const BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                    child: Text(
                  "Food Cooking",
                  style: gFont(
                      fontWeight: FontWeight.bold, letterSspacing: 2, size: 25),
                )),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              Form(
                child: Column(
                  children: [
                    CustomTextField(
                      size: size,
                      title: '  Enter email',
                      icon: Icons.person,
                    ),
                    CustomTextField(
                        size: size,
                        title: '  Enter Password',
                        icon: Icons.password),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account ",style: gFont(color: black),),
                            
                            Text(" click here",style: gFont(color: blue),)
                          ],
                        ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
