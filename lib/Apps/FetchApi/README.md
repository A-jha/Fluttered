# Fetching Data

- Add http package to pubspec.yaml
```
dependencies:
  http: ^0.13.3
```

- Import http package
```dart
import 'package:http/http.dart';
```

```dart
//how async works
  void getData(){
    Future.delayed(Duration(seconds: 5),(){
      print("delayed by 5 second");
    });
    Future.delayed(Duration(seconds: 2),(){
      print("delayed for 2 second");
    });
    print("i am at last but comes first");
  }
  //async-await
  void getDataAsync()async{
   String one =  await Future.delayed(Duration(seconds: 5),(){
      return "async delayed by 5 second";
    });
    String two =  await Future.delayed(Duration(seconds: 2),(){
      return "async delayed for 2 second";
    });
    print("$one and $two");
  }

```