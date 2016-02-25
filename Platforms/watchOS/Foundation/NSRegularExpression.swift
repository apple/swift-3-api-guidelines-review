
struct NSRegularExpressionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitive: NSRegularExpressionOptions { get }
  static var allowCommentsAndWhitespace: NSRegularExpressionOptions { get }
  static var ignoreMetacharacters: NSRegularExpressionOptions { get }
  static var dotMatchesLineSeparators: NSRegularExpressionOptions { get }
  static var anchorsMatchLines: NSRegularExpressionOptions { get }
  static var useUnixLineSeparators: NSRegularExpressionOptions { get }
  static var useUnicodeWordBoundaries: NSRegularExpressionOptions { get }
}
@available(watchOS 2.0, *)
class NSRegularExpression : NSObject, NSCopying, NSCoding {
  init(pattern pattern: String, options options: NSRegularExpressionOptions = []) throws
  var pattern: String { get }
  var options: NSRegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPattern(for string: String) -> String
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSMatchingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var reportProgress: NSMatchingOptions { get }
  static var reportCompletion: NSMatchingOptions { get }
  static var anchored: NSMatchingOptions { get }
  static var withTransparentBounds: NSMatchingOptions { get }
  static var withoutAnchoringBounds: NSMatchingOptions { get }
}
struct NSMatchingFlags : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var progress: NSMatchingFlags { get }
  static var completed: NSMatchingFlags { get }
  static var hitEnd: NSMatchingFlags { get }
  static var requiredEnd: NSMatchingFlags { get }
  static var internalError: NSMatchingFlags { get }
}
extension NSRegularExpression {
  func enumerateMatches(in string: String, options options: NSMatchingOptions = [], range range: NSRange, using block: (NSTextCheckingResult?, NSMatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matches(in string: String, options options: NSMatchingOptions = [], range range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatches(in string: String, options options: NSMatchingOptions = [], range range: NSRange) -> Int
  func firstMatch(in string: String, options options: NSMatchingOptions = [], range range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatch(in string: String, options options: NSMatchingOptions = [], range range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatches(in string: String, options options: NSMatchingOptions = [], range range: NSRange, withTemplate templ: String) -> String
  func replaceMatches(in string: NSMutableString, options options: NSMatchingOptions = [], range range: NSRange, withTemplate templ: String) -> Int
  func replacementString(for result: NSTextCheckingResult, in string: String, offset offset: Int, template templ: String) -> String
  class func escapedTemplate(for string: String) -> String
}
@available(watchOS 2.0, *)
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
}
