import 'package:explorer/utils/app_routes.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, void Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            alignment: Alignment.bottomRight,
            child: Text(
              'Vamos Almoçar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.pink,
              ),
            ),
          ),
          SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Refeições',
              () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
          _createItem(
              Icons.settings,
              'Configurações',
              () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.SETTINGS)),
        ],
      ),
    );
  }
}
