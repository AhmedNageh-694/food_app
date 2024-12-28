import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/core/utils/service/prefkey.dart';
import 'package:foodapp/core/utils/service/shared_pref.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial()) {
    _loadTheme();
  }

  final SharedPref sharedPref = SharedPref();
  bool isDark = false;

  Future<void> _loadTheme() async {
    await sharedPref.initPreferences();
    isDark = sharedPref.getBoolean(SharedKeys.themeMode) ?? false;
    emit(ThemeChangedState());
  }

  // Toggle Theme
  void changeTheme() {
    isDark = !isDark;
    sharedPref.setBoolean(SharedKeys.themeMode, isDark);
    emit(ThemeChangedState());
  }

  // Toggle Theme
}
