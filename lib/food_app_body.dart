import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/homeview.dart';
import 'package:foodapp/Features/auth/Presentaion/manger/AuthCubit/auth_cubit.dart';
import 'package:foodapp/Features/auth/Presentaion/repo/auth_repo.dart';
import 'package:foodapp/Features/auth/Presentaion/views/cahange_password.dart';
import 'package:foodapp/Features/auth/Presentaion/views/login_screen.dart';
import 'package:foodapp/Features/auth/Presentaion/views/send_code_screen.dart';
import 'package:foodapp/Features/auth/Presentaion/views/signup_screen.dart';
import 'package:foodapp/core/utils/app/Theme/app_theme.dart';
import 'package:foodapp/core/utils/app/appcubit/app_cubit.dart';
import 'package:foodapp/core/utils/service/service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AuthCubit(ServiceLocator().getIt.get<AuthRepo>()),
        ),
        BlocProvider(
          create: (context) => AppCubit(),
        ),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            theme: AppTheme().lightTheme,
            darkTheme: AppTheme().darkTheme,
            themeMode: BlocProvider.of<AppCubit>(context).isDark
                ? ThemeMode.dark
                : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'FoodMo App',
            home: const Homeview(),
            routes: {
              '/login': (context) => const LoginScreen(),
              '/signup': (context) => const SignUpScreen(),
              '/send_code': (context) => const SendCodeScreen(),
              '/change_password': (context) => const CahangePassword(),
            },
          );
        },
      ),
    );
  }
}
