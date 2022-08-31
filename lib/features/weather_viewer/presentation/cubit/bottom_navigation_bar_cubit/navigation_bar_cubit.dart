import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarState.initial());

  void changeNavigationTab({required int selectedTab}) async {
    emit(NavigationBarState.changeTab(selectedTab: selectedTab));
  }
}
