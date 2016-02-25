
enum NSTestComparisonOperation : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(coder inCoder: NSCoder)
  func encode(with aCoder: NSCoder)
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWith subTests: [NSSpecifierTest])
  init(orTestWith subTests: [NSSpecifierTest])
  init(notTestWith subTest: NSScriptWhoseTest)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSTestComparisonOperation, test obj2: AnyObject?)
}
extension NSObject {
  class func isEqual(to object: AnyObject?) -> Bool
  func isEqual(to object: AnyObject?) -> Bool
  class func isLessThanOrEqual(to object: AnyObject?) -> Bool
  func isLessThanOrEqual(to object: AnyObject?) -> Bool
  class func isLessThan(_ object: AnyObject?) -> Bool
  func isLessThan(_ object: AnyObject?) -> Bool
  class func isGreaterThanOrEqual(to object: AnyObject?) -> Bool
  func isGreaterThanOrEqual(to object: AnyObject?) -> Bool
  class func isGreaterThan(_ object: AnyObject?) -> Bool
  func isGreaterThan(_ object: AnyObject?) -> Bool
  class func isNotEqual(to object: AnyObject?) -> Bool
  func isNotEqual(to object: AnyObject?) -> Bool
  class func doesContain(_ object: AnyObject) -> Bool
  func doesContain(_ object: AnyObject) -> Bool
  class func isLike(_ object: String) -> Bool
  func isLike(_ object: String) -> Bool
  class func isCaseInsensitiveLike(_ object: String) -> Bool
  func isCaseInsensitiveLike(_ object: String) -> Bool
}
extension NSObject {
  class func scriptingIsEqual(to object: AnyObject) -> Bool
  func scriptingIsEqual(to object: AnyObject) -> Bool
  class func scriptingIsLessThanOrEqual(to object: AnyObject) -> Bool
  func scriptingIsLessThanOrEqual(to object: AnyObject) -> Bool
  class func scriptingIsLessThan(_ object: AnyObject) -> Bool
  func scriptingIsLessThan(_ object: AnyObject) -> Bool
  class func scriptingIsGreaterThanOrEqual(to object: AnyObject) -> Bool
  func scriptingIsGreaterThanOrEqual(to object: AnyObject) -> Bool
  class func scriptingIsGreaterThan(_ object: AnyObject) -> Bool
  func scriptingIsGreaterThan(_ object: AnyObject) -> Bool
  class func scriptingBegins(with object: AnyObject) -> Bool
  func scriptingBegins(with object: AnyObject) -> Bool
  class func scriptingEnds(with object: AnyObject) -> Bool
  func scriptingEnds(with object: AnyObject) -> Bool
  class func scriptingContains(_ object: AnyObject) -> Bool
  func scriptingContains(_ object: AnyObject) -> Bool
}
