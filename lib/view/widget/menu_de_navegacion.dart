import 'package:active_fit/view/HomeScreen.dart';
import 'package:active_fit/view/Usuario/HomeScreenUsuario.dart';
import 'package:active_fit/view/Programacion/ProgramacionScreen.dart';
import 'package:active_fit/view/Usuario/PerfilScreen.dart';
import 'package:active_fit/view/reporte/Reporte.dart';
import 'package:flutter/material.dart';

class MenuDeNavegacion extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const MenuDeNavegacion(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<MenuDeNavegacion> createState() => _MenuDeNavegacionState();
}

class _MenuDeNavegacionState extends State<MenuDeNavegacion> {
  
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProgramacionScreen(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReporteScreen(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PerfilScreen(),
          ),
        );
        break;
      default:
        break;
    }

    widget.onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          
          elevation: 0,
           type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          currentIndex: widget.selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Programación',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined),
              label: 'Reportes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBarItem(IconData iconData, String label, int index) {
    return GestureDetector(
      onTap: () {
        widget.onItemTapped(index);
      },
      child: Container(
        padding: EdgeInsets.all(8), 
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: widget.selectedIndex == index
                  ? Colors.grey
                  : Colors
                      .white, 
            ),
            Text(
              label,
              style: TextStyle(
                color: widget.selectedIndex == index
                    ? Colors.grey
                    : Colors
                        .white, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
