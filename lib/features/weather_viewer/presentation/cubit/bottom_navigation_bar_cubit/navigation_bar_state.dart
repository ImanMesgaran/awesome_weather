part of 'navigation_bar_cubit.dart';

class NavigationBarState extends Equatable {
  final int tabIndex;

  NavigationBarState({
    required this.tabIndex,
  });

  factory NavigationBarState.initial() => NavigationBarState(tabIndex: 0);

  factory NavigationBarState.changeTab({required int selectedTab}) {
    return NavigationBarState(
      tabIndex: selectedTab,
    );
  }

  NavigationBarState copyWith({
    int? selectedTab,
  }) {
    return NavigationBarState(tabIndex: selectedTab ?? this.tabIndex);
  }

  @override
  List<Object?> get props => [tabIndex];
}
