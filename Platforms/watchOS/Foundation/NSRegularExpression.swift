
struct NSRegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitive: NSRegularExpressionOptions { get }
  static var AllowCommentsAndWhitespace: NSRegularExpressionOptions { get }
  static var IgnoreMetacharacters: NSRegularExpressionOptions { get }
  static var DotMatchesLineSeparators: NSRegularExpressionOptions { get }
  static var AnchorsMatchLines: NSRegularExpressionOptions { get }
  static var UseUnixLineSeparators: NSRegularExpressionOptions { get }
  static var UseUnicodeWordBoundaries: NSRegularExpressionOptions { get }
}
@available(watchOS 2.0, *)
class NSRegularExpression : NSObject, NSCopying, NSCoding {
  init(pattern: String, options: NSRegularExpressionOptions) throws
  var pattern: String { get }
  var options: NSRegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternForString(string: String) -> String
  convenience init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSMatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: NSMatchingOptions { get }
  static var ReportCompletion: NSMatchingOptions { get }
  static var Anchored: NSMatchingOptions { get }
  static var WithTransparentBounds: NSMatchingOptions { get }
  static var WithoutAnchoringBounds: NSMatchingOptions { get }
}
struct NSMatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Progress: NSMatchingFlags { get }
  static var Completed: NSMatchingFlags { get }
  static var HitEnd: NSMatchingFlags { get }
  static var RequiredEnd: NSMatchingFlags { get }
  static var InternalError: NSMatchingFlags { get }
}
extension NSRegularExpression {
  func enumerateMatchesInString(string: String, options: NSMatchingOptions, range: NSRange, usingBlock block: (NSTextCheckingResult?, NSMatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesInString(string: String, options: NSMatchingOptions, range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatchesInString(string: String, options: NSMatchingOptions, range: NSRange) -> Int
  func firstMatchInString(string: String, options: NSMatchingOptions, range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatchInString(string: String, options: NSMatchingOptions, range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatchesInString(string: String, options: NSMatchingOptions, range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesInString(string: NSMutableString, options: NSMatchingOptions, range: NSRange, withTemplate templ: String) -> Int
  func replacementStringForResult(result: NSTextCheckingResult, inString string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateForString(string: String) -> String
}
@available(watchOS 2.0, *)
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
  convenience init(pattern: String, options: NSRegularExpressionOptions) throws
  convenience init()
  init?(coder aDecoder: NSCoder)
}
