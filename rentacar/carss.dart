class Cars {
  String carsName;
  int carKilometr;
  double carYear;

  Cars({
    required this.carKilometr,
    required this.carYear,
    required this.carsName,
  });
}

class Cars2 extends Cars {
  String carColor;
  int carSpeed;
  double carModel;

  Cars2({
    required this.carColor,
    required this.carModel,
    required this.carSpeed,
    required int carKilometr,
    required double carYear,
    required String carsName,
  }) : super(carKilometr: carKilometr, carYear: carYear, carsName: carsName);
}
