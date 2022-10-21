import 'package:flutter/material.dart';

import 'modals/planet_modal.dart';

class Global {
  static late Planet selected;

  static Color appColor = const Color(0xff3E3963);
  static Color appColor2 = const Color(0xff434273);

  static List<Planet> planets = <Planet>[
    Planet(
      image: 'assets/images/mars.png',
      image2: 'assets/images/mars_bg.jpg',
      name: 'Mars',
      distance: '54.6m',
      charge: 2.8,
      distanceSun: 66.818,
      distanceEarth: 226.14,
      speed: 3.711,
      description:
      "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape.",
    ),
    Planet(
      image: 'assets/images/earth.png',
      image2: 'assets/images/earth_bg.jpg',
      name: 'Earth',
      distance: '45.6m',
      charge: 3.2,
      distanceSun: 56.818,
      distanceEarth: 253.14,
      speed: 5.562,
      description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    ),
    Planet(
      image: 'assets/images/mercury.png',
      image2: 'assets/images/mer_bg.jpg',
      name: 'Mercury',
      distance: '65.6m',
      charge: 5.6,
      distanceSun: 89.818,
      distanceEarth: 225.14,
      speed: 6.856,
      description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    ),
    Planet(
      image: 'assets/images/moon.png',
      image2: 'assets/images/moon_bg.jpg',
      name: 'Moon',
      distance: '25.6m',
      charge: 5.5,
      distanceSun: 25.818,
      distanceEarth: 532.14,
      speed: 5.652,
      description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    ),
    Planet(
      image: 'assets/images/neptune.png',
      image2: 'assets/images/nep_bg.jpg',
      name: 'Neptune',
      distance: '26.6m',
      charge: 2.5,
      distanceSun: 20.818,
      distanceEarth: 304.14,
      speed: 9.521,
      description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    ),
  ];
}
