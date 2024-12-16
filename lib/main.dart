import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api_in_flutter/cubit/user_cubit.dart';
import 'package:learn_api_in_flutter/screens/sign_in_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => UserCubit(),
      child: const LearnAndUsingApi(),
    ),
  );
}

class LearnAndUsingApi extends StatelessWidget {
  const LearnAndUsingApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
