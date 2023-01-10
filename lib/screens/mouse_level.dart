import 'package:digital_education/screens/keyboard_level.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MouseScreen extends StatefulWidget {
  const MouseScreen({super.key});

  @override
  State<MouseScreen> createState() => _MouseScreenState();
}

class _MouseScreenState extends State<MouseScreen> {
  TextEditingController anserController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backGround,
        title: Text(
          "Mouse",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
                top: context.height * 0.05,
                right: context.width * 0.05,
                left: context.width * 0.05),
            child: Form( 
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        width: context.width * 0.8,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/mouse.jpg",
                        )),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Text(
                    "This is Level 1",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(
                    color: AppColors.textColor,
                    width: context.width * 0.35,
                    height: 2,
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Text(
                    "A computer mouse is a handheld pointing device and input device used with all desktop computers that moves the mouse pointer on the screen. To help with portability, mobile devices, like a laptop, use a touchpad instead of a mouse. Mobile devices, like a smartphone and tablet, use a touch screen for their pointer input. This page is designed to help new computer users become more familiar and efficient with a desktop computer mouse.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.textColor, fontSize: 20),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                    text:
                        "- If you want open something move mouse pointer to it and left double click on it  ",
                    textColor: AppColors.textColor,
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Lottie.asset(
                      "assets/animation/click.json",
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                    text: "- If you want open options tap left click on anything",
                    textColor: AppColors.textColor,
                  ),
                  SizedBox(
                    height: context.height * 0.06,
                  ),
                  TextArt(
                    text:
                        "- If you want scroll just scrolling mouse scroll in the middle",
                    textColor: AppColors.textColor,
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Lottie.asset(
                    "assets/animation/scroll.json",
                  ),
                  SizedBox(
                    height: context.height * 0.1,
                  ),
                  TextArt(
                      text: "- How to open something ?",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  defaultFormField(
                      controller: anserController,
                      type: TextInputType.text,
                      validate: (String value) {
                        if (value !=
                            "double click on that thing") {
                          return "The answer is incorrect";
                        }
                      },
                      hint: "Enter answer"),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Center(
                    child: MainButton(
                        text: "Submit",
                        width: context.width * 0.8,
                        height: context.height * 0.1,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              showContainer = true;
                              navigateAndFinish(context, const KeyboardScreen());
                            });
                          }
                        },
                        backGround: AppColors.primary,
                        textColor: AppColors.textColor,
                        fontSize: 20),
                  ),
                  Center(
                    child: Lottie.asset(
                      "assets/animation/congrts.json",
                      height: showContainer ? 200 : 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
