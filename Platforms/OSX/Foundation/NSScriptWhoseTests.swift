
enum NSTestComparisonOperation : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(coder inCoder: NSCoder)
  func encodeWithCoder(_ aCoder: NSCoder)
}
class NSLogicalTest : NSScriptWhoseTest {
  init(andTestWithTests subTests: [NSSpecifierTest])
  init(orTestWithTests subTests: [NSSpecifierTest])
  init(notTestWithTest subTest: NSScriptWhoseTest)
}
class NSSpecifierTest : NSScriptWhoseTest {
  init(objectSpecifier obj1: NSScriptObjectSpecifier?, comparisonOperator compOp: NSTestComparisonOperation, testObject obj2: AnyObject?)
}
extension NSObject {
  class func isEqualTo(_ object: AnyObject?) -> Bool
  func isEqualTo(_ object: AnyObject?) -> Bool
  class func isLessThanOrEqualTo(_ object: AnyObject?) -> Bool
  func isLessThanOrEqualTo(_ object: AnyObject?) -> Bool
  class func isLessThan(_ object: AnyObject?) -> Bool
  func isLessThan(_ object: AnyObject?) -> Bool
  class func isGreaterThanOrEqualTo(_ object: AnyObject?) -> Bool
  func isGreaterThanOrEqualTo(_ object: AnyObject?) -> Bool
  class func isGreaterThan(_ object: AnyObject?) -> Bool
  func isGreaterThan(_ object: AnyObject?) -> Bool
  class func isNotEqualTo(_ object: AnyObject?) -> Bool
  func isNotEqualTo(_ object: AnyObject?) -> Bool
  class func doesContain(_ object: AnyObject) -> Bool
  func doesContain(_ object: AnyObject) -> Bool
  class func isLike(_ object: String) -> Bool
  func isLike(_ object: String) -> Bool
  class func isCaseInsensitiveLike(_ object: String) -> Bool
  func isCaseInsensitiveLike(_ object: String) -> Bool
}
extension NSObject {
  class func scriptingIsEqualTo(_ object: AnyObject) -> Bool
  func scriptingIsEqualTo(_ object: AnyObject) -> Bool
  class func scriptingIsLessThanOrEqualTo(_ object: AnyObject) -> Bool
  func scriptingIsLessThanOrEqualTo(_ object: AnyObject) -> Bool
  class func scriptingIsLessThan(_ object: AnyObject) -> Bool
  func scriptingIsLessThan(_ object: AnyObject) -> Bool
  class func scriptingIsGreaterThanOrEqualTo(_ object: AnyObject) -> Bool
  func scriptingIsGreaterThanOrEqualTo(_ object: AnyObject) -> Bool
  class func scriptingIsGreaterThan(_ object: AnyObject) -> Bool
  func scriptingIsGreaterThan(_ object: AnyObject) -> Bool
  class func scriptingBeginsWith(_ object: AnyObject) -> Bool
  func scriptingBeginsWith(_ object: AnyObject) -> Bool
  class func scriptingEndsWith(_ object: AnyObject) -> Bool
  func scriptingEndsWith(_ object: AnyObject) -> Bool
  class func scriptingContains(_ object: AnyObject) -> Bool
  func scriptingContains(_ object: AnyObject) -> Bool
}
