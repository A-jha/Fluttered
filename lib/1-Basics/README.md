# The Basics

- How a flutter app start and works
- Working with widget & binding custom widget
- Reacting to user events
- Stateless and statefull widget
- Dart Fundamentals

### Create Fluuter app

```bash
flutter create app-name
```

### Run the flutter app

```bash
flutter run
```

# DART

## Data Types in dart

- ### String
  - Text and String both ae consideres as string datatype.
  - daclared using `String`
  - concatinated two string
  ```dart
  add(String a, String b) {
      print(a + b);
  }
  ```
- ### Integer

  - It contains real number .
  - -10, 0 , 10, 11111
  - declared using `int `

  ```dart
  add(int a, int b) {
    print(a + b);
  }
  ```

- ### double
  - Floating point numbers are in double.
  - -2.34, +99.99, 0 ,1
  - declared with `double`
  ```dart
  add(double a, double b) {
      print(a + b);
  }
  ```
- ### anonymous Type
  - if we donot specify the type then it can be any one of the above.
  ```dart
  a = 10;
  a = "Ram"//this will not give an error
  ```

## Functions

- inline function

```dart
String greet() => "hello g";
int getAge() => 30;
```

- call inline function

```dart
void main(){
  String name  = "Avinash";
  String greetings = hello + greet();
  print(greetings);
}
```

## class and Object

Example:

```dart
class Person {
  String name = "default name";
  int age = 999;
}

void main() {
//instance of class
  var A = Person();
  A.age = 20;
  A.name = "lodu";
  print("${A.age} and ${A.name}");
}
```

**Sting interpolation** :

```dart
 print("${A.age} and ${A.name}");
```

## List

### Variable list

```dart
List name  = ["Avi". "Arpita", "Sam"];
print(name)
```

- Add new name

```dart
name.add('rachna');
```

- remove item

```dart
name.remove('rachna);
```

- ass 30 to the list AND we can add

```dart
name.add(14)//this will be added
```

### staticly typed list

- create a list of type sting

```dart
List<String|int> name = ["Arpit","Avinash","sam"];
```

- add new name

```dart
//Now we can not add anything other than String in list
name.add(40)//it will through error
```

- list of int type

```dart
void main(){
  List<int> nums = [1,21,3,4];
  nums.add(30);
  print(nums.reversed);
  nums.sort();
 nums.forEach((v)=>print('${v}'));
}
```

## Map datatype

```dart
void main(){
  List<String> names = ["Avinash","Arpita","sam"];
  List<int> age = [21,20,22];
  Map student = new Map();

  student[age[0]] = names[0];
  student[age[1]] = names[1];
  student[age[2]] = names[2];

  print(student);
  student.forEach((k,v)=>print("Name : $v and Age:$k"));
}
```

Output:

{21: Avinash, 20: Arpita, 22: sam}

Name : Avinash and Age:21

Name : Arpita and Age:20

Name : sam and Age:22

## class

```dart
//clsses
void main(){
 Student s1 = Student();
  s1.userName = "Avinash";
  s1.login();
  s1.age = 21;
  s1.languages = ["c","c++","dart"];
  s1.pref();
  s1.logOut();
}
class Student{
  String userName = "avi";
  List<String> languages = ["dart"];
  int age = 21;
  //method prints p[refered languages
  void pref(){
    print("======= \n Your preferences ${\n} =========");
    languages.forEach((v)=>print(v));
  }

  //methods login logout
  void login(){
    print("Welcome ${userName}");
  }
  void logOut(){
    print("Bye ${userName}");
  }
}
```

Output:

Welcome Avinash

======= Your preferences =========

c

c++

dart

Bye Avinash

## Crud Opreation using dart

```dart
void main(){
  User user1 = User("user1",1756,["c","c++"],"dark");
 //get info about user1
  user1.info();
  //update prfered languages
  user1.updatePref(["python","java","dart"]);
  //delete java
  user1.deletePref(["java"]);
    //get the info
    user1.info();
  SuperUser supUser1 = SuperUser("SuperUser1",12345,["c","c++","Node","javascript"],"light");
  supUser1.changeUserName("Avinash");
  supUser1.info();
}

class User {
  String name = "default_user";
  int id = 23;
  List<String> preferedLang = ["C","Pyhton"];
  String theme = "Dark";
  ///construtor is created  to get user input
  User(String name, int id, List<String> preferedLang,String theme){
    this.name = name;
    this.id = id;
    this.preferedLang = preferedLang;
    this.theme = theme;
    print("${this.name} is created succesfully");
  }

  //method to get the data
  void info(){
    print("This the info of user : ${name}");
    print("id : ${id}");
    print("Prefered Languages : ${preferedLang}");
  }
  //methods to update
  void updatePref(List<String> newPref){
    print("------------updating preferences---------");
    int count = 0;
    newPref.forEach((pref){
      if(! preferedLang.contains(pref)){
        preferedLang.add(pref);
        count++;
      }
    });
    print("${count} new entries");
  }
  //delete pref
  void deletePref(List<String> delPref){
    print('\n'+"--------preferenced is updated-------");
    int count = 0 ;
    delPref.forEach((pref){
      if(preferedLang.contains(pref)){
        preferedLang.remove(pref);
        count++;
      }
    });
    print("${count} prefs deleted");
  }
}

/// inheritance - suppose we want to create a SuperUser with lots
/// of access and functionality then we inherit User class and
/// then add some more functionality for SuperUser

class SuperUser extends User{

  SuperUser(String name, int id, List<String> preferedLang,String theme):super(name,id,preferedLang,theme);
  //super user can change user name
  void changeUserName(String newName){
    if(newName == name){
      print("Your NewName and OldName is same.");
    }else{
      name = newName;
    }
  }
  //super user can change theme too
  void changeTheme(){
    if(this.theme == "Dark"){
      print("theme changed to light");
    }else{
      print("Theme is change to dark(default)");
    }
  }
}
```
