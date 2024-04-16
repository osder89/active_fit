import 'package:flutter/material.dart';

class CardProgramacion extends StatelessWidget {
  final String imagePath;
  final String titulo;
  final VoidCallback onTap;
  final DateTime fechaInicio;
  final DateTime fechaFin;

  const CardProgramacion({
    Key? key,
    required this.imagePath,
    required this.titulo,
    required this.onTap,
    required this.fechaInicio,
    required this.fechaFin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white, // Cambia el color de fondo según sea necesario
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                width: 100, // Ancho de la imagen
                height: 100, // Alto de la imagen
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12), // Espacio entre la imagen y el texto
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8), // Espacio entre el nombre y la fecha de inicio
                  Text(
                    'Fecha de inicio: ${_formatDate(fechaInicio)}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4), // Espacio entre la fecha de inicio y la fecha de fin
                  Text(
                    'Fecha de fin: ${_formatDate(fechaFin)}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
