import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:valorant_wiki/app/view/agents/view/agents_view.dart';
import 'package:valorant_wiki/app/view/home/view/home_view.dart';
import 'package:valorant_wiki/app/view/maps/view/maps_view.dart';
import 'package:valorant_wiki/app/view/weapons/view/weapons_view.dart';

part 'bottom_navbar_event.dart';
part 'bottom_navbar_state.dart';

class BottomNavbarBloc extends Bloc<BottomNavbarEvent, BottomNavbarInitial> {
  BottomNavbarBloc()
      : super(const BottomNavbarInitial(
          pages: [
            HomeView(),
            AgentsView(),
            WeaponsView(),
            MapsView(),
          ],
        )) {
    on<BottomNavbarInitialEvent>((event, emit) {
      emit(state.copyWith(currentPage: 0));
    });
    on<BottomNavbarEventChange>((event, emit) {
      emit(state.copyWith(currentPage: event.index));
    });
  }
}
