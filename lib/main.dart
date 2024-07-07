import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
             
              TitleSection(
                name: 'El Panecillo',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
              image: 'images/panecillo.jpg',),
              ButtonSection(),
              TextSection(
                description:
                    'El Panecillo es una elevación natural en medio de la ciudad que, en lengua originaria, llevaba el nombre de «Yavirac»; era un sitio sagrado para las culturas precolombinas de Quito que más tarde fue rebautizado por los españoles como «panecillo», por parecerse a un pan, redondo y simétrico.',
              ),
              TitleSection(
                name: 'La Ronda',
                location: 'Quito, Ecuador',
              ),
              ImageSection(image: 'images/ronda.jpg',),
              ButtonSection(),
              TextSection(description: "Antes de la época de los conquistadores españoles, La Ronda solía ser un camino inca que los habitantes usaban para obtener agua de un arroyo cercano. Poco después del desarrollo de las colonias en la ciudad de Quito, que también era la capital norteña de los incas, el arroyo comenzó a contaminarse."),
              TitleSection(
                name: 'Cuenca',
                location: 'Azuay, Ecuador',
              ),
              ImageSection(image: 'images/cuenca.jpg',),
              ButtonSection(),
              TextSection(description: "La historia de Cuenca se remonta al Paleolítico Superior, aunque no es hasta la conquista musulmana cuando se construye la fortaleza de Qūnka, que dio origen a la ciudad actual. Ésta se contaba en origen entre las otras tantas de la cora de Santaver (Ercávica), pero fue ganando importancia paulatinamente."),
              TitleSection(
                name: 'Galapagos',
                location: 'Galapagos, Ecuador',
              ),
              ImageSection(image: 'images/galapagos.jpg',),
              ButtonSection(),
              TextSection(description: "Fueron descubiertas por los españoles en 1535 y luego utilizadas como escala por los piratas ingleses durante sus travesías de ataque a los galeones españoles que llevaban oro y plata hacia España. Las islas fueron anexadas al territorio de Ecuador en 1832, bautizándolas como Archipiélago de Colón."),
              TitleSection(
                name: 'Baños',
                location: 'Tungurahua, Ecuador',
              ),
              ImageSection(image: 'images/tungurahua.jpg',),
              ButtonSection(),
              TextSection(description: "El nombre de Baños de Agua Santa se debe a la presencia de las agua termales que existen en la zona, mismas que se considera tienen propiedades curativas. En Baños hay muchos sitios, privados y públicos, en donde puedes ir a disfrutar de las aguas termales que se encuentran sobre los volcanes o a sus pies."),



            ],
          ),
        ),
        // #enddocregion add-widget
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}