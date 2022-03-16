import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otrujja/domain/constant/constant.dart';
import 'package:otrujja/domain/cubit/otrujja_cubit.dart';
import 'package:otrujja/domain/cubit/otrujja_state.dart';
import 'package:otrujja/presentation/main/main_view.dart';
import 'package:otrujja/presentation/resources/app_responsive.dart';
import 'package:otrujja/presentation/resources/assets_manager.dart';
import 'package:otrujja/presentation/resources/color_manager.dart';
import 'package:otrujja/presentation/resources/styles_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordcntrl = TextEditingController();
    var emailcntrl = TextEditingController();
    var form = GlobalKey<FormState>();
    var socialMediaIcon = [
      ImageAssets.faceBookIcon,
      ImageAssets.twitterIcon,
      ImageAssets.gmailIcon,
    ];

    return BlocProvider<OtrujjaCubit>(
        create: (BuildContext context) => OtrujjaCubit(),
        child: BlocConsumer<OtrujjaCubit, OtrujjaStates>(
            listener: (context, state) {
          if (state is OtrujjaSuccessloginState) {
            Fluttertoast.showToast(
                msg: "تم تسجيل الدخول بنجاح",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0);

            Navigator.push(
                context, MaterialPageRoute(builder: (_) => MainView(
                 
                )));
          }
          if (state is OtrujjaErrorloginState) {
            Fluttertoast.showToast(
                msg: "يرجي التاكد من البيانات",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }
        }, builder: (context, state) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: SafeArea(
              child: Form(
                key: form,
                child: Scaffold(
                  body: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      ImageAssets.backGroundImage,
                    ))),
                    child: ListView(
                      // itemExtent: 0.6,
                      padding: const EdgeInsets.all(15),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Image.asset(
                          ImageAssets.LoginImage,
                          scale: 1.5,
                        ),
                        textformfield(
                            context: context,
                            name: "Email",
                            prefixIcon: Icons.email,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            TextEditingController: emailcntrl,
                            validator: 'validator'),
                        SizedBox(
                          height: getheight(context: context, height: 0.05),
                        ),
                        textformfield(
                            context: context,
                            name: "password",
                            prefixIcon: Icons.lock,
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            TextEditingController: passwordcntrl,
                            validator: 'validator'),
                        SizedBox(
                          height: getheight(context: context, height: 0.08),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'تذكرني',
                              style: getRegularStyle(
                                  color: ColorManager.grey, fontSize: 14),
                            ),
                            Text(
                              'نسيت كلمة المرور؟',
                              style: getRegularStyle(
                                  color: ColorManager.grey, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getheight(context: context, height: 0.05),
                        ),
                        FlatButton(
                          padding:
                              const EdgeInsets.fromLTRB(4, 10.4, 4, 10.4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          color: ColorManager.primary,
                          onPressed: () async {
                            if (form.currentState!.validate()) {
                              await OtrujjaCubit.get(context).userlogin(
                                  email: emailcntrl.text,
                                  password: passwordcntrl.text);
                            }
                          },
                          child: state is OtrujjaLoadingloginState
                              ? Center(
                                  child: CircularProgressIndicator(
                                  color: Theme.of(context).primaryColor,
                                ))
                              : Text(
                                  "تسجيل دخول",
                                  style: getBoldStyle(
                                      color: ColorManager.white, fontSize: 18),
                                ),
                        ),
                        SizedBox(
                          height: getheight(context: context, height: 0.05),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'لا يوجد لديك حساب؟',
                              style: getRegularStyle(
                                  color: ColorManager.grey, fontSize: 14),
                            ),
                            SizedBox(
                              width: getwidth(context: context, width: 0.03),
                            ),
                            Text(
                              'انشاء حساب',
                              style: getBoldStyle(
                                  color: ColorManager.grey, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getheight(context: context, height: 0.065),
                        ),
                        Text(
                          'يمكنك التسجيل بحساب التواصل الاجتماعى',
                          textAlign: TextAlign.center,
                          style: getBoldStyle(
                              color: ColorManager.titleColor, fontSize: 16),
                        ),
                        SizedBox(
                          height: getheight(context: context, height: 0.05),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: socialMediaIcon.map((e) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(e),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
