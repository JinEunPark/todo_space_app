import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo_app/user/view_model/signup_view_model.dart';

import '../../design/first_theme.dart';
import '../../widget/text/text_widget.dart';
import '../model/user_model.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignupPage> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameTextController =
        TextEditingController();
    final TextEditingController userEmailTextController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextWidget(title: "사용자 정보 입력"),
                Gap(20),
                NormalTextWidget(content: "이메일 계정"),
                Gap(6),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: userNameTextController,
                        onChanged: (value) {
                          formKey.currentState!.validate();
                          formKey.currentState!.save();
                        },
                        decoration: InputDecoration(
                          hintText: "이메일 입력",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey, // 기본 테두리 색상 (입력 전)
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.primary, // 입력 중일 때 테두리 색상
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(12),
                NormalTextWidget(content: "사용자 이름 입력"),
                Gap(6),
                TextFormField(
                  controller: userEmailTextController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "이름 예) 홍길동",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey, // 기본 테두리 색상 (입력 전)
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.primary, // 입력 중일 때 테두리 색상
                        width: 2.0,
                      ),
                    ),
                  ),
                  obscureText: false,
                  validator: (value) {
                    return null;
                  },
                ),
                Gap(24),
                SizedBox(
                  height: 50,
                  child: Center(child: Consumer(
                    builder: (context, ref, widget) {
                      final signupNotifier =
                          ref.read(SignUpPageViewModelProvider.notifier);

                      return GestureDetector(
                        onTap: () async {
                          final user = new User(
                              name: userNameTextController.text,
                              email: userEmailTextController.text);

                          final result = await signupNotifier.saveUser(user);
                          //TODO : 추후 로그인 및 가입 성공 로직 구현하기



                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(.55),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "가입",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
