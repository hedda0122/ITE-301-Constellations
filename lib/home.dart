/// Constellations
/// An application that shows pictures and information about the 7 major Constellations
///Programmers:
/// Laurence Jade Javier
/// Ernest Sacdal
/// John Ken Talusan
///Leslie Kate Pagaduan
/// October 28 2022

import 'package:flutter/material.dart';
import 'details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/canis.jpg',
    title: 'Canis Major',
    details:
        'Canis Major is a constellation in the southern sky. Its name means “the greater dog” in Latin. Canis Major represents the bigger dog following Orion, the hunter in Greek mythology. The dog is often depicted pursuing a hare, represented by the constellation Lepus. The smaller dog is represented by the neighboring constellation Canis Minor.',
  ),
  ImageDetails(
    imagePath: 'images/carina.jpg',
    title: 'Carina',
    details:
        'Carina constellation is located in the southern sky. Its name means “the keel” (keel of a ship) in Latin. Carina used to be part of the much larger constellation Argo Navis, along with the constellations Puppis (the stern) and Vela (the sails). The constellation represented the mythical ship Argo, on which Jason and the Argonauts sailed to get the Golden Fleece.',
  ),
  ImageDetails(
    imagePath: 'images/casio.jpg',
    title: 'Cassiopeia',
    details:
        'Cassiopeia is a large constellation located in the northern sky. It was named after Cassiopeia, the vain and boastful queen in Greek mythology. Nicknamed the W constellation, Cassiopeia is easily recognizable for the prominent W asterism formed by its five brightest stars. The constellation was first catalogued by the Greek astronomer Ptolemy in the 2nd century, along with other constellations in the Perseus family (except Lacerta).',
  ),
  ImageDetails(
    imagePath: 'images/centaur.jpg',
    title: 'Centaurus',
    details:
        'Centaurus is one of the largest constellations in the sky. It represents the centaur, the half man, half horse creature in Greek mythology. Sources tend to differ on which centaur the constellation represents, but usually it is taken to be Chiron, who mentored the Greek heroes Hercules, Peleus, Achilles, Theseus and Perseus.',
  ),
  ImageDetails(
    imagePath: 'images/crux.jpg',
    title: 'Crux',
    details:
        'Crux is the smallest of the 88 constellations, occupying an area of only 68 square degrees. It is located in the third quadrant of the southern hemisphere (SQ3) and can be seen at latitudes between +20° and -90°. The neighboring constellations are Centaurus and Musca.',
  ),
  ImageDetails(
    imagePath: 'images/orion.jpg',
    title: 'Orion',
    details:
        'Orions seven brightest stars form a distinctive hourglass-shaped asterism, or pattern, in the night sky. Four stars—Rigel, Betelgeuse, Bellatrix, and Saiph—form a large roughly rectangular shape, at the center of which lies the three stars of Orions Belt—Alnitak, Alnilam, and Mintaka.',
  ),
  ImageDetails(
    imagePath: 'images/ursa.jpg',
    title: 'Ursa Major',
    details:
        '.Ursa Major, the largest northern constellation, is one of the most recognizable constellations in the sky. The Big Dipper asterism makes it easy for northern observers to find at any time of year. Six of the stars that form the asterism are of second magnitude and easily seen even in less than ideal conditions. Ursa Major is circumpolar to northern observers, which means that it never sets below the horizon. However, it remains mostly invisible to observers living south of latitude 30°S.',
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              '7 MAJOR CONSTELLATION',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String title;
  final String details;

  ImageDetails({
    @required this.imagePath,
    @required this.title,
    @required this.details,
  });
}
