
struct NSRegularExpressionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init(pattern pattern: String, options options: NSRegularExpressionOptions) throws
  var pattern: String { get }
  var options: NSRegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternForString(_ string: String) -> String
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSMatchingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: NSMatchingOptions { get }
  static var ReportCompletion: NSMatchingOptions { get }
  static var Anchored: NSMatchingOptions { get }
  static var WithTransparentBounds: NSMatchingOptions { get }
  static var WithoutAnchoringBounds: NSMatchingOptions { get }
}
struct NSMatchingFlags : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Progress: NSMatchingFlags { get }
  static var Completed: NSMatchingFlags { get }
  static var HitEnd: NSMatchingFlags { get }
  static var RequiredEnd: NSMatchingFlags { get }
  static var InternalError: NSMatchingFlags { get }
}
extension NSRegularExpression {
  func enumerateMatchesInString(_ string: String, options options: NSMatchingOptions, range range: NSRange, usingBlock block: (NSTextCheckingResult?, NSMatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesInString(_ string: String, options options: NSMatchingOptions, range range: NSRange) -> [NSTextCheckingResult]
  func numberOfMatchesInString(_ string: String, options options: NSMatchingOptions, range range: NSRange) -> Int
  func firstMatchInString(_ string: String, options options: NSMatchingOptions, range range: NSRange) -> NSTextCheckingResult?
  func rangeOfFirstMatchInString(_ string: String, options options: NSMatchingOptions, range range: NSRange) -> NSRange
}
extension NSRegularExpression {
  func stringByReplacingMatchesInString(_ string: String, options options: NSMatchingOptions, range range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesInString(_ string: NSMutableString, options options: NSMatchingOptions, range range: NSRange, withTemplate templ: String) -> Int
  func replacementStringForResult(_ result: NSTextCheckingResult, inString string: String, offset offset: Int, template templ: String) -> String
  class func escapedTemplateForString(_ string: String) -> String
}
@available(watchOS 2.0, *)
class NSDataDetector : NSRegularExpression {
  init(types checkingTypes: NSTextCheckingTypes) throws
  var checkingTypes: NSTextCheckingTypes { get }
}
