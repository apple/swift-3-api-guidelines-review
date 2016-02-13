
enum TestComparisonOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case equalToComparison
  case lessThanOrEqualToComparison
  case lessThanComparison
  case greaterThanOrEqualToComparison
  case greaterThanComparison
  case beginsWithComparison
  case endsWithComparison
  case containsComparison
}
class ScriptWhoseTest : Object, Coding {
  func isTrue() -> Bool
  init()
  init?(coder inCoder: Coder)
  func encode(aCoder: Coder)
}
class LogicalTest : ScriptWhoseTest {
  init(andTestWith subTests: [SpecifierTest])
  init(orTestWith subTests: [SpecifierTest])
  init(notTestWith subTest: ScriptWhoseTest)
  convenience init()
  init?(coder inCoder: Coder)
}
class SpecifierTest : ScriptWhoseTest {
  init?(coder inCoder: Coder)
  init(objectSpecifier obj1: ScriptObjectSpecifier?, comparisonOperator compOp: TestComparisonOperation, test obj2: AnyObject?)
}
extension Object {
  class func isEqual(to object: AnyObject?) -> Bool
  func isEqual(to object: AnyObject?) -> Bool
  class func isLessThanOrEqual(to object: AnyObject?) -> Bool
  func isLessThanOrEqual(to object: AnyObject?) -> Bool
  class func isLessThan(object: AnyObject?) -> Bool
  func isLessThan(object: AnyObject?) -> Bool
  class func isGreaterThanOrEqual(to object: AnyObject?) -> Bool
  func isGreaterThanOrEqual(to object: AnyObject?) -> Bool
  class func isGreaterThan(object: AnyObject?) -> Bool
  func isGreaterThan(object: AnyObject?) -> Bool
  class func isNotEqual(to object: AnyObject?) -> Bool
  func isNotEqual(to object: AnyObject?) -> Bool
  class func doesContain(object: AnyObject) -> Bool
  func doesContain(object: AnyObject) -> Bool
  class func isLike(object: String) -> Bool
  func isLike(object: String) -> Bool
  class func isCaseInsensitiveLike(object: String) -> Bool
  func isCaseInsensitiveLike(object: String) -> Bool
}
extension Object {
  class func scriptingIsEqual(to object: AnyObject) -> Bool
  func scriptingIsEqual(to object: AnyObject) -> Bool
  class func scriptingIsLessThanOrEqual(to object: AnyObject) -> Bool
  func scriptingIsLessThanOrEqual(to object: AnyObject) -> Bool
  class func scriptingIsLessThan(object: AnyObject) -> Bool
  func scriptingIsLessThan(object: AnyObject) -> Bool
  class func scriptingIsGreaterThanOrEqual(to object: AnyObject) -> Bool
  func scriptingIsGreaterThanOrEqual(to object: AnyObject) -> Bool
  class func scriptingIsGreaterThan(object: AnyObject) -> Bool
  func scriptingIsGreaterThan(object: AnyObject) -> Bool
  class func scriptingBegins(object: AnyObject) -> Bool
  func scriptingBegins(object: AnyObject) -> Bool
  class func scriptingEnds(object: AnyObject) -> Bool
  func scriptingEnds(object: AnyObject) -> Bool
  class func scriptingContains(object: AnyObject) -> Bool
  func scriptingContains(object: AnyObject) -> Bool
}
