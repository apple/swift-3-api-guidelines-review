
struct RegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitive: RegularExpressionOptions { get }
  static var allowCommentsAndWhitespace: RegularExpressionOptions { get }
  static var ignoreMetacharacters: RegularExpressionOptions { get }
  static var dotMatchesLineSeparators: RegularExpressionOptions { get }
  static var anchorsMatchLines: RegularExpressionOptions { get }
  static var useUnixLineSeparators: RegularExpressionOptions { get }
  static var useUnicodeWordBoundaries: RegularExpressionOptions { get }
}
@available(iOS 4.0, *)
class RegularExpression : Object, Copying, Coding {
  init(pattern: String, options: RegularExpressionOptions = []) throws
  var pattern: String { get }
  var options: RegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPattern(for string: String) -> String
  convenience init()
  @available(iOS 4.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct MatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var reportProgress: MatchingOptions { get }
  static var reportCompletion: MatchingOptions { get }
  static var anchored: MatchingOptions { get }
  static var withTransparentBounds: MatchingOptions { get }
  static var withoutAnchoringBounds: MatchingOptions { get }
}
struct MatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var progress: MatchingFlags { get }
  static var completed: MatchingFlags { get }
  static var hitEnd: MatchingFlags { get }
  static var requiredEnd: MatchingFlags { get }
  static var internalError: MatchingFlags { get }
}
extension RegularExpression {
  func enumerateMatches(in string: String, options: MatchingOptions = [], range: NSRange, using block: (TextCheckingResult?, MatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matches(in string: String, options: MatchingOptions = [], range: NSRange) -> [TextCheckingResult]
  func numberOfMatches(in string: String, options: MatchingOptions = [], range: NSRange) -> Int
  func firstMatch(in string: String, options: MatchingOptions = [], range: NSRange) -> TextCheckingResult?
  func rangeOfFirstMatch(in string: String, options: MatchingOptions = [], range: NSRange) -> NSRange
}
extension RegularExpression {
  func stringByReplacingMatches(in string: String, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> String
  func replaceMatches(in string: MutableString, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> Int
  func replacementString(for result: TextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplate(for string: String) -> String
}
@available(iOS 4.0, *)
class DataDetector : RegularExpression {
  init(types checkingTypes: TextCheckingTypes) throws
  var checkingTypes: TextCheckingTypes { get }
  convenience init(pattern: String, options: RegularExpressionOptions = []) throws
  convenience init()
  init?(coder aDecoder: Coder)
}
