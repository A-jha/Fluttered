### http package

This package contains a set of high-level functions and classes that make it easy to consume HTTP resources. It's multi-platform, and supports mobile, desktop, and the browser.

- import http

```dart
import 'package:http/http.dart';
```

### Fetch the data

- Dart get function only takes Uri type value so covert your url to uri using **Uri.parse()**

```dart
 Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);
```

- it will retuen a string looks like JSON object

### Convert response into JSON object

1. import convert from dart

```dart
import 'dart:convert';
```

- Decode the response to JSON Object

```dart
Map data = jsonDecode(response.body);
```
