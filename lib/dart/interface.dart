//we can use several classes with implements, ulikely to extends, we can inherit from more than one class
// to have an interface, we implements the class to other class, not extends, but still interface in dart is a normal class
//so there is nothing special to declare it in dart
//we use interface, only when we need to use all the methods of parent class in subclass, so while all methods should be override
// we can implement more than one or more classes but can inherit only one class with extends

void main(){
ElectricCar electricCar = ElectricCar();
electricCar.turnOnHeadLight();
electricCar.turnOffHeadLight();
electricCar.openPetrolTank();
}

class Car {
  void turnOnHeadLight (){
    print('Headlight is turning on');
  }
  void turnOffHeadLight(){
    print('Head light is turning off');
  }
}

class Hyundai {
  void openPetrolTank(){
    print('petrol tank is opening');
  }
}

class ElectricCar implements Car, Hyundai{
  @override
  void turnOnHeadLight(){
    print('Electric car\'s light is turning on');
  }
  @override
  void turnOffHeadLight(){
    print('Electric car\'s light is turning off');
  }

  @override
  void openPetrolTank(){
    print('opening the electric charger');
  }
}