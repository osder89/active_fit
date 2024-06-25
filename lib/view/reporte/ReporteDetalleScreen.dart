import 'package:active_fit/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReporteDetalleScreen extends StatefulWidget {
  static const String name = '/reporteDetalleScreen';
  final String hora;
  final String fecha;
  final String texto;

  const ReporteDetalleScreen({
    Key? key,
    required this.hora,
    required this.fecha,
    required this.texto,
  }) : super(key: key);

  @override
  State<ReporteDetalleScreen> createState() => _ReporteDetalleScreenState();
}

class _ReporteDetalleScreenState extends State<ReporteDetalleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        //title: Text('Informe de Entrenamiento'),
        backgroundColor: AppTheme.scaffoldBbColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoItem(
              icon: Icons.access_time,
              label: 'Hora',
              value: widget.hora,
              color: Colors.orange,
            ),
            SizedBox(height: 20),
            _buildInfoItem(
              icon: Icons.calendar_today,
              label: 'Fecha',
              value: widget.fecha,
              color: Colors.orange,
            ),
            SizedBox(height: 20),
            Text(
              'Informe:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 10),
            
            Text(
              widget.texto,
              style: TextStyle(
                fontSize: 16.0,
                color: AppTheme.whiteTextColor,
              ),
            ),
            SizedBox(height: 40),
           
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 32.0,
          color: color,
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: AppTheme.whiteTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                value,
                style: TextStyle(
                  
                  fontSize: 18.0,
                  color: AppTheme.whiteTextColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
