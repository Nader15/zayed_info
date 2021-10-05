abstract class MainStates {}

// Get User
class MainInitialState extends MainStates {}

class MainGetUserLoadingState extends MainStates {}

class MainGetUserSuccessState extends MainStates {}

class MainGetUserErrorState extends MainStates {
  String error;

  MainGetUserErrorState({this.error});
}