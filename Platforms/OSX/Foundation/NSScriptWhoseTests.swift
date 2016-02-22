
enum NSTestComparisonOperation : UInt {
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
class NSScriptWhoseTest : NSObject, NSCoding {
  func isTrue() -> Bool
  init()
  init?(coder inCoder: NSCoder)
  func encode(with aCoder: NSCoder)
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWith subTests: [NSSpecifierTest])
  init(orTestWith subTests: [NSSpecifierTest])
  init(notTestWith subTest: NSScriptWhoseTest)
  convenience init()
  init?(coder inCoder: NSCoder)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init?(coder inCoder: NSCoder)
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSTestComparisonOperation, test obj2: AnyObject?)
}
extension NSObject {
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
extension NSObject {
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
  class func scriptingBegins(with object: AnyObject) -> Bool
  func scriptingBegins(with object: AnyObject) -> Bool
  class func scriptingEnds(with object: AnyObject) -> Bool
  func scriptingEnds(with object: AnyObject) -> Bool
  class func scriptingContains(object: AnyObject) -> Bool
  func scriptingContains(object: AnyObject) -> Bool
}
