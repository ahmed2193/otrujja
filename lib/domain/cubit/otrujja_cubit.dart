
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otrujja/domain/cubit/otrujja_state.dart';
import 'package:otrujja/domain/network/remote/dio_helper.dart';

class OtrujjaCubit extends Cubit<OtrujjaStates> {
  OtrujjaCubit() : super(OtrujjaInitialState());

  static OtrujjaCubit get(context) => BlocProvider.of(context);

    userlogin({

    String? email,
    String? password,
  }) {
    emit(OtrujjaLoadingloginState());
    DioHelper.postData(url: "https://midadeacademy.com/api/v1/users/login", data: {
      "mobile_token": 'test',
      "device_type": 'android',
      "email": email,
      "password": password
    }).then((value) {
      print(email);
      // registerModel = RegisterModel.fromJson(value.data);
      // print(registerModel!.data!.email!);

      emit(OtrujjaSuccessloginState());
    }).catchError((Error) {
      print(Error.toString());
      emit(OtrujjaErrorloginState());
    });
  }



}
