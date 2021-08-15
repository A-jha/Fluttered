# worldtime

A new Flutter project.

## Getting Started

## Widget Life Cycle in Stateful widget

### setState()

- State can change over time
- setState() triggers the build function

### initState()

- Called only once when widget is created
- Subscribe to stream or any object that could change our widget

### builds()

- Build the widget tree
- A build is triggered every time we use set state

### dispose()

- when the Widget/state object is removed

```dart
class _ChooseLocationState extends State<ChooseLocation> {
  int a = 1;
  void inc() {
    setState(() {
      a++;
    });
  }
  @override
  void initState() {
    super.initState();
    print("state initiated");
  }
  Widget build(BuildContext context) {
    print("buiding called");
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose Location"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text("$a"),
        ),
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () => inc(),
          child: Icon(
            Icons.add,
          ),
        ));
  }
}
```

# Async Await in Dart

## Async

- Asyc means execution started now and finishes some time later in future
- Example could be interacting with API end points to fetch data or any other operations
- It start the request but it took some time to finish it
- Async code means we have to implement a method such that the time consuming process runs and we shold not have to wait
- To implement these pattern dart provides Future, async, await functionalities
- Future is very similar to promise in javascript

- Implementing a async function

```dart
   void getData() {
    //simulate a network request
    Future.delayed(
        Duration(seconds: 8), () => {print("getData after 8 second")});
    //simulate another network request
    Future.delayed(Duration(seconds: 5),
        () => {print("I am getBio function after 5 sec")});
  }
```

- Call this function inside initState()

```dart
 void initState() {
    super.initState();
    getData();
    print("state initiated");
  }
```

- Output

```
state initiated
I am getBio function after 5 sec
getData after 8 second
```

Here we can observe that we are calling getBio function after getData function but get bio function comes first.

so here is what we want to do

- we want a code such that in which order matters
- first get the data then implement the getBio function
- These pattern is called asyncronous function
- asynchronous means wait untill the execution

**After Implementing Async await**

```dart
  void getData() async {
    //simulate a networj request
    await Future.delayed(Duration(seconds: 8), () {
      print("getData after 8 second");
    });
    //simulate another network request
    Future.delayed(Duration(seconds: 5), () {
      print("I am getBio function after 5 sec");
    });
  }
```

Output:

```
state initiated
getData after 8 second
I am getBio function after 5 sec
```
