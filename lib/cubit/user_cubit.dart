import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learn_api_in_flutter/core/api/api_consuomer.dart';
import 'package:learn_api_in_flutter/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final ApiConsuomer api;
  UserCubit(this.api) : super(UserInitial());
  //! Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //! Sign in email
  TextEditingController signInEmail = TextEditingController();
  //! Sign in password
  TextEditingController signInPassword = TextEditingController();
  //! Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //! Profile Pic
  XFile? profilePic;
  //! Sign up name
  TextEditingController signUpName = TextEditingController();
  //! Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  //! Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //! Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //! Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();
  
}
