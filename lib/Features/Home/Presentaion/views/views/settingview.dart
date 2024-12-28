import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/core/utils/app/appcubit/app_cubit.dart';

class Settingview extends StatelessWidget {
  const Settingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff1a522),
        title: const Text(
          "Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Spacer(flex: 1),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Delicious ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "food",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
          const Spacer(flex: 1),
          // Dark Mode Toggle
          BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              final appCubit = BlocProvider.of<AppCubit>(context);
              return ListTile(
                title: const Text(
                  "Dark Mode",
                ),
                leading: const Icon(Icons.dark_mode),
                trailing: Switch(
                  value: appCubit.isDark,
                  onChanged: (value) {
                    appCubit.changeTheme();
                  },
                ),
              );
            },
          ),

          const SizedBox(height: 5),
          const Spacer(flex: 1),

          // About Us Section
          const Text(
            "About Us",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Facebook Button
              MaterialButton(
                onPressed: () {},
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: ClipOval(
                    child: Image.asset(
                      "assets/image/logo/feacebook.png",
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error, color: Colors.red);
                      },
                    ),
                  ),
                ),
              ),
              // GitHub Button
              MaterialButton(
                onPressed: () {},
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: ClipOval(
                    child: Image.asset(
                      "assets/image/logo/githup.png",
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error, color: Colors.red);
                      },
                    ),
                  ),
                ),
              ),
              // LinkedIn Button
              MaterialButton(
                onPressed: () {},
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: ClipOval(
                    child: Image.asset(
                      "assets/image/logo/linkedin.png",
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error, color: Colors.red);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
