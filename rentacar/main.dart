import 'carss.dart';

void main() {
  Cars2 car = Cars2(
    carColor: "black",
    carModel: 2022.5,
    carSpeed: 350,
    carKilometr: 5000,
    carYear: 2021,
    carsName: "MercedesMaybach",
  );

  print("Car Name: ${car.carsName}");
  print("Car Color: ${car.carColor}");
  print("Car Model: ${car.carModel}");
  print("Car Speed: ${car.carSpeed}");
  print("Car Kilometers: ${car.carKilometr}");
  print("Car Year: ${car.carYear}");
}
