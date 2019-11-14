void main(){
  //list
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  //maps
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
  };

  //sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  //Classes
  Dog d = new Dog('Duffy', 2);
  print(d.name);
}
 
  class Dog {
    String name;
    int age;
  
    Dog(String name, String age) {
      this.name = name;
      this.age = age;
  } 
  //generics
  DataHolder<String> dataHolder = new DataHolder('Some data');
  print(dataHolder.getData());
  dataHolder.setData('New Data');
  print(dataHolder.getData());
}
 
class DataHolder<T> {
  T data;
 
  DataHolder(this.data);
 
  getData() {
    return data;
  }
 
  setData(data) {
    this.data = data;
  }
}