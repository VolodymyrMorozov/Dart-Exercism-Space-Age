import 'package:test/test.dart';
import 'package:space_age/space_age.dart';

final SpaceAge spaceAge = SpaceAge();

void main() {
  group("SpaceAge", ageOnPlanetTests);
}

void ageOnPlanetTests() {
  test("age on Earth", () {
    expect(spaceAge.age(planet: "Earth", seconds: 1000000000), equals(31.69));
  }, skip: false);

  test("age on Mercury", () {
    expect(
        spaceAge.age(planet: "Mercury", seconds: 2134835688), equals(280.88));
  }, skip: false);

  test("age on Venus", () {
    expect(spaceAge.age(planet: "Venus", seconds: 189839836), equals(9.78));
  }, skip: false);

  test("age on Mars", () {
    expect(spaceAge.age(planet: "Mars", seconds: 2329871239), equals(39.25));
  }, skip: false);

  test("age on Jupiter", () {
    expect(spaceAge.age(planet: "Jupiter", seconds: 901876382), equals(2.41));
  }, skip: false);

  test("age on Saturn", () {
    expect(spaceAge.age(planet: "Saturn", seconds: 3000000000), equals(3.23));
  }, skip: false);

  test("age on Uranus", () {
    expect(spaceAge.age(planet: "Uranus", seconds: 3210123456), equals(1.21));
  }, skip: false);

  test("age on Neptune", () {
    expect(spaceAge.age(planet: "Neptune", seconds: 8210123456), equals(1.58));
  }, skip: false);
}
