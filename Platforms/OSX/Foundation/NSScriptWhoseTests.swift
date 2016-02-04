
enum NSTestComparisonOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case EqualToComparison
  case LessThanOrEqualToComparison
  case LessThanComparison
  case GreaterThanOrEqualToComparison
  case GreaterThanComparison
  case BeginsWithComparison
  case EndsWithComparison
  case ContainsComparison
}
class NSScriptWhoseTest : NSObject, NSCoding {
  func isTrue() -> Bool
  init()
  init?(coder inCoder: NSCoder)
  func encodeWithCoder(aCoder: NSCoder)
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWithTests subTests: [NSSpecifierTest])
  init(orTestWithTests subTests: [NSSpecifierTest])
  init(notTestWithTest subTest: NSScriptWhoseTest)
  convenience init()
  init?(coder inCoder: NSCoder)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init?(coder inCoder: NSCoder)
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSTestComparisonOperation, testObject obj2: AnyObject?)
}
extension NSObject {
  class func isEqualTo(object: AnyObject?) -> Bool
  func isEqualTo(object: AnyObject?) -> Bool
  class func isLessThanOrEqualTo(object: AnyObject?) -> Bool
  func isLessThanOrEqualTo(object: AnyObject?) -> Bool
  class func isLessThan(object: AnyObject?) -> Bool
  func isLessThan(object: AnyObject?) -> Bool
  class func isGreaterThanOrEqualTo(object: AnyObject?) -> Bool
  func isGreaterThanOrEqualTo(object: AnyObject?) -> Bool
  class func isGreaterThan(object: AnyObject?) -> Bool
  func isGreaterThan(object: AnyObject?) -> Bool
  class func isNotEqualTo(object: AnyObject?) -> Bool
  func isNotEqualTo(object: AnyObject?) -> Bool
  class func doesContain(object: AnyObject) -> Bool
  func doesContain(object: AnyObject) -> Bool
  class func isLike(object: String) -> Bool
  func isLike(object: String) -> Bool
  class func isCaseInsensitiveLike(object: String) -> Bool
  func isCaseInsensitiveLike(object: String) -> Bool
}
extension NSObject {
  class func scriptingIsEqualTo(object: AnyObject) -> Bool
  func scriptingIsEqualTo(object: AnyObject) -> Bool
  class func scriptingIsLessThanOrEqualTo(object: AnyObject) -> Bool
  func scriptingIsLessThanOrEqualTo(object: AnyObject) -> Bool
  class func scriptingIsLessThan(object: AnyObject) -> Bool
  func scriptingIsLessThan(object: AnyObject) -> Bool
  class func scriptingIsGreaterThanOrEqualTo(object: AnyObject) -> Bool
  func scriptingIsGreaterThanOrEqualTo(object: AnyObject) -> Bool
  class func scriptingIsGreaterThan(object: AnyObject) -> Bool
  func scriptingIsGreaterThan(object: AnyObject) -> Bool
  class func scriptingBeginsWith(object: AnyObject) -> Bool
  func scriptingBeginsWith(object: AnyObject) -> Bool
  class func scriptingEndsWith(object: AnyObject) -> Bool
  func scriptingEndsWith(object: AnyObject) -> Bool
  class func scriptingContains(object: AnyObject) -> Bool
  func scriptingContains(object: AnyObject) -> Bool
}
