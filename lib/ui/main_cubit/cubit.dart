import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zayed_info/models/users_model.dart';
import 'package:zayed_info/ui/main_cubit/states.dart';
import 'package:zayed_info/ui/utils/constants.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitialState());

  static MainCubit get(context) => BlocProvider.of(context);

  UsersModel user = usersModel;
}
