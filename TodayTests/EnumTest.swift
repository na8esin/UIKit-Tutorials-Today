import XCTest

enum Row: Hashable {
  case header(String)
  case date
}

class EnumTest: XCTestCase {
  func testEnum() {
    print(Row.header("hello"))
    print(Row.date)
    print(Row.header("welcome"))
    
    print(Row.header("hello") == Row.header("welcome")) //false
    print(Row.header("hello") == Row.header("hello")) //true
  }
}
