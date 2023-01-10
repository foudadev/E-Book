import 'package:digital_education/screens/desktop_enter_face.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:digital_education/widgets/form_fields.dart';
import 'package:digital_education/widgets/main_button.dart';
import 'package:digital_education/widgets/routs.dart';
import 'package:digital_education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KeyboardScreen extends StatefulWidget {
  const KeyboardScreen({super.key});

  @override
  State<KeyboardScreen> createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
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
          "Keyboard",
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
              top: context.height * 0.01,
              right: context.width * 0.04,
              left: context.width * 0.04,
              bottom: context.height * 0.01,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset("assets/images/key.jpg")),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Text(
                    "This is Level 2 ",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    color: AppColors.textColor,
                    width: context.width * 0.35,
                    height: 2,
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                      text:
                          "Whenever you need to type something in a program, email message, or text box, you'll see a blinking vertical line 'Picture of the cursor' called the cursor or insertion point. It shows where the text that you type will begin. You can move the cursor by clicking in the desired location with the mouse, or by using the navigation keys see the 'Using navigation keys' section of this article.",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(text: "", textColor: AppColors.backGround),
                  Center(
                    child: Lottie.asset("assets/animation/keyboard.json",
                        height: context.height * 0.3, width: context.width * 0.5),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  TextArt(
                      text:
                          "Keyboard shortcutsare ways to perform actions by using your keyboard. They're called shortcuts because they help you work faster. In fact, almost any action or command you can perform with a mouse can be performed faster using one or more keys on your keyboard.In Help topics, a plus sign '+' between two or more keys indicates that those keys should be pressed in combination. For example, Ctrl + A means to press and hold Ctrl and then press A. Ctrl + Shift + A means to press and hold Ctrl and Shift and then press A.",
                      textColor: AppColors.textColor),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                 TextArt(
                        text: "- How to write something ?",
                        textColor: AppColors.textColor),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    defaultFormField(
                        controller: anserController,
                        type: TextInputType.text,
                        validate: (String value) {
                          if (value !=
                              "click on letters button") {
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
                                navigateAndFinish(context, const DesktopEnterFace());
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
