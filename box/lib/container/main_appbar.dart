import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
      leading: IconButton(
        icon: Image(
          image: AssetImage('assets/images/appbarLeading.png'),
        ),
        onPressed: null,
      ),
    );
  }
}
