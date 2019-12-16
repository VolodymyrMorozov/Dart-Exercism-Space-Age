class SpaceAge {
  Map<String, double> planets = {
    'Earth': 31557600,
    'Mercury': 0.2408467,
    'Venus': 0.61519726,
    'Mars': 1.8808158,
    'Jupiter': 11.862615,
    'Saturn': 29.447498,
    'Uranus': 84.016846,
    'Neptune': 164.79132
  };

  SpaceAge() {
    planets.forEach((String planet, double seconds) =>
        planet != 'Earth' ? planets[planet] = planets['Earth'] * seconds : '');
  }

  double age({String planet, int seconds}) =>
      (seconds / planets[planet] * 100).round() / 100;
}
