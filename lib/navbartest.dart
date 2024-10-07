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
          _buildListTile('Education', Colors.green),
          _buildDivider(),
          _buildListTile('Skills', Colors.orange),
          _buildDivider(),
          _buildListTile('Projects', Colors.red),
          _buildDivider(),
          _buildListTile('Experience', Colors.purple),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, Color circleColor) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12), // Adjust padding as needed
          child: Container(
            width: 30, // Circle diameter
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: circleColor,
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(title),
            onTap: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(){
    return Divider(
      color: Colors.black.withOpacity(0.5),
      thickness: 0.5,
    );
  }
}

