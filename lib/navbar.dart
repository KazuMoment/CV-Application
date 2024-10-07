import 'package:cv/bullet.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'CV Sections',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          ListTile(
            leading: const Bullet(), 
            title: const Text('Education'),
            onTap: (){},
          ),
          const Divider(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            thickness: 0.5
          ),
          ListTile(
            leading: const Bullet(), 
            title: const Text('Skills'),
            onTap: (){},
          ),
          const Divider(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            thickness: 0.5
          ),
          ListTile(
            leading: const Bullet(), 
            title: const Text('Projects'),
            onTap: (){},
          ),
          const Divider(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            thickness: 0.5
          ),
          ListTile(
            leading: const Bullet(), 
            title: const Text('Experience'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}


