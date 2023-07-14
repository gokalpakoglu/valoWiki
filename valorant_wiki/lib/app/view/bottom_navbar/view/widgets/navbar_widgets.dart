import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valorant_wiki/app/view/bottom_navbar/bloc/bottom_navbar_bloc.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      fixedColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) => context
          .read<BottomNavbarBloc>()
          .add(BottomNavbarEventChange(index: index)),
      currentIndex: context.watch<BottomNavbarBloc>().state.currentPage,
      //fixedColor: context.theme.primaryColor,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userNinja),
          label: 'Agents',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.gun),
          label: 'Weapons',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.map),
          label: 'Maps',
        ),
      ],
    );
  }
}
