//if we make the class, we cant instantiate it.
//void callSomeone(); this is a abstract method
//abstract class People is a abstract class and it cant be initiated as People person = People(), it wont work like this.

void main(){
  Person person = Person();
  person.breathing();
}

abstract class People {
  void breathing();
}

class Person extends People {
  //we should override abstract method here
@override
  void breathing() {
    print('People are breathing');
  }
}

//abstract method only exist inside the abstract class, thus, we cant leave void callSomeone(); inside normal class
//abstract method ends with semicolon instead of method's body
// abstract method must be override in subclass
//the abstract class cant be instantiated, so we cant access its objects by instatiating
//abstract classes create by the key abstract