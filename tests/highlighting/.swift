func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Anna"))
// Prints "Hello, Anna!"
print(greet(person: "Brian"))
// Prints "Hello, Brian!"

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
// Prints "Hello again, Anna!"

enum CompassPoint {
  case north
  case south
  case east
  case west
}

class Counter {
  var count = 0
  func increment() {
    count += 1
  }
  func increment(by amount: Int) {
    count += amount
  }
  func reset() {
    count = 0
  }
}