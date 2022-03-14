
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otrujja/domain/cubit/otrujja_state.dart';

class OtrujjaCubit extends Cubit<OtrujjaStates> {
  OtrujjaCubit() : super(OtrujjaInitialState());

  static OtrujjaCubit get(context) => BlocProvider.of(context);



}
