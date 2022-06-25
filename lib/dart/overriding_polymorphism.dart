
void main(){
  Person person = Person();
  person.breathing();
  print(person.color);
  //output will be color red, because it is in parent and it is not mentioned as super.
}

class People{
  String color = 'purple';
  void breathing(){
    print('people tend to breath');
  }
}

class Person extends People{
  String color = 'red';
  void eating (){
    print('People are tend to eat');
  }
  //overwriting here
void breathing (){
    print('aww he is not beathing'); //1st, because this is a class initializing as a parent
    super.breathing(); //2nd, because we want to call the super class's method here, by using key super
    print('he wants to eat');//3rd, it is parent class's method
}
}
// void eat(){
    // super.eat();
    //super says, the eat mathod of parent class must be executed first, and then code carry on here.
    // print('now dog is eating');
    // super.eat();
    // print('more food to eat');
    //in order 1st, 2nd and 3rd here
    //here, first eat method of dog class willbe called and then the Animal class's
