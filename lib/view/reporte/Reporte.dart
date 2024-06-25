import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/reporte/ReporteDetalleScreen.dart';
import 'package:active_fit/view/widget/card_report.dart';
import 'package:active_fit/view/widget/menu_de_navegacion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class ReporteScreen extends StatefulWidget {
  static const name = '/reporteScreen';
  @override
  _ReporteScreenState createState() => _ReporteScreenState();
}

class _ReporteScreenState extends State<ReporteScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 2;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      bottomNavigationBar: MenuDeNavegacion(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.textFieldBgColor,
        elevation: 0,
        title: Text(
          'Reportes',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CardReporte(
                      usuario: 'Carlos Perez',
                      fecha: '2024-06-15',
                      hora: '11:00 AM',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReporteDetalleScreen(
                              hora: '11:00 AM',
                              fecha: '2024-06-15',
                              texto:
                                  'Informe de Ejercicios:\n\nSe realizó una revisión detallada del ejercicio de levantamiento de pesas. A continuación se presentan los hallazgos:\n\n- Puntos positivos:\n  1. Excelente técnica al levantar y bajar las pesas.\n  2. Buena estabilidad y control durante todo el movimiento.\n  3. Correcta respiración al realizar el ejercicio.\n\n- Áreas de mejora:\n  1. Aumentar la carga gradualmente para desafiar más los músculos.\n  2. Prestar atención a la postura de la espalda para evitar lesiones.\n  3. Variar los ejercicios para trabajar diferentes grupos musculares.\n\nSe recomienda seguir con el entrenamiento y realizar ajustes según sea necesario para lograr mejores resultados.',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardReporte(
                      usuario: 'Carlos Perez',
                      fecha: '2024-06-16',
                      hora: '03:00 PM',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReporteDetalleScreen(
                              hora: '03:00 PM',
                              fecha: '2024-06-16',
                              texto:
                                  'Informe de Ejercicios:\n\nDurante la observación del ejercicio de flexiones, se identificaron los siguientes aspectos:\n\n- Puntos positivos:\n  1. Buena alineación del cuerpo durante las flexiones.\n  2. Ritmo constante y controlado en cada repetición.\n  3. Mantenimiento de la postura adecuada durante todo el ejercicio.\n\n- Áreas de mejora:\n  1. Incrementar el número de repeticiones para mejorar resistencia.\n  2. Variar la anchura de las manos para trabajar diferentes músculos.\n  3. Prestar atención a la respiración para optimizar el rendimiento.\n\nSe sugiere realizar seguimiento regular para evaluar el progreso y realizar ajustes según sea necesario.',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardReporte(
                      usuario: 'Carlos Perez',
                      fecha: '2024-06-17',
                      hora: '06:00 PM',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReporteDetalleScreen(
                              hora: '06:00 PM',
                              fecha: '2024-06-17',
                              texto:
                                  'Informe de Ejercicios:\n\nSegún la observación del video, se identificaron los siguientes aspectos:\n\n- Puntos positivos:\n  1. Correcta alineación del cuerpo durante el ejercicio.\n  2. Ritmo constante y controlado en la ejecución.\n  3. Buena amplitud de movimiento en las articulaciones.\n\n- Áreas de mejora:\n  1. Puede mejorar la estabilidad al levantar peso.\n  2. Prestar atención a la respiración para evitar fatiga prematura.\n  3. Mantener la concentración en la técnica para evitar lesiones.\n\nSe recomienda realizar seguimiento y ajustes en futuras sesiones para mejorar el rendimiento y prevenir lesiones.',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardReporte(
                      usuario: 'Carlos Perez',
                      fecha: '2024-06-18',
                      hora: '10:00 AM',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReporteDetalleScreen(
                              hora: '10:00 AM',
                              fecha: '2024-06-18',
                              texto:
                                  'Informe de Ejercicios:\n\nSe analizó el ejercicio de estiramientos con especial atención en la técnica y la ejecución. A continuación se detallan las observaciones:\n\n- Puntos positivos:\n  1. Excelente rango de movimiento en los estiramientos.\n  2. Buena duración en cada estiramiento para optimizar la flexibilidad.\n  3. Control adecuado de la respiración durante el ejercicio.\n\n- Áreas de mejora:\n  1. Incorporar estiramientos específicos para los grupos musculares trabajados.\n  2. Mantener la posición de estiramiento por un tiempo más prolongado.\n  3. Combinar estiramientos estáticos con dinámicos para mayor efectividad.\n\nSe recomienda continuar con la práctica regular de estiramientos y ajustar la rutina según sea necesario.',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(
      BuildContext context, String image, Widget destinationScreen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: const EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
