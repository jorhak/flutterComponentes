import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componenetes en Flutter'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptions[i].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(
                    menuOptions[i].name,
                    style: const TextStyle(color: AppTheme.primary),
                  ),
                  onTap: () {
                    //Navigator.pushNamed(context, 'card');

                    // final route = MaterialPageRoute(
                    //   builder: (context) => const Listview1Screen(),
                    // );
                    // Navigator.push(context, route);
                    //Para logins o si no deseamos volver atras
                    //Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
