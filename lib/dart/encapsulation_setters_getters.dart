class People {
  String name;
  int _age;
  bool _isYoung;
  People(this.name, this._age, this._isYoung);

  void printName(){
    print(name);
  }

  void _setStatus (int age){
    if (age < 0){
      throw Exception('wow you aint even born yet');
    }
    if (age < 20){
      _isYoung = true;
      print('glad to know, u re still young');
    }else{
      _isYoung = false;
      print('nuh getting old');
    }
  }
  int get age => _age;
  bool get isYoung => _isYoung;
  Function get setStatus => _setStatus;
}

//setter allows us to change varibales
//getter show the private variable
//we are accessing to private _gpa from other file through getter
