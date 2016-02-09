
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
  class func escapedPatternFor(string: String) -> String
  convenience init()
  @available(iOS 4.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWith(aCoder: Coder)
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
  func enumerateMatchesIn(string: String, options: MatchingOptions = [], range: NSRange, usingBlock block: (TextCheckingResult?, MatchingFlags, UnsafeMutablePointer<ObjCBool>) -> Void)
  func matchesIn(string: String, options: MatchingOptions = [], range: NSRange) -> [TextCheckingResult]
  func numberOfMatchesIn(string: String, options: MatchingOptions = [], range: NSRange) -> Int
  func firstMatchIn(string: String, options: MatchingOptions = [], range: NSRange) -> TextCheckingResult?
  func rangeOfFirstMatchIn(string: String, options: MatchingOptions = [], range: NSRange) -> NSRange
}
extension RegularExpression {
  func stringByReplacingMatchesIn(string: String, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> String
  func replaceMatchesIn(string: MutableString, options: MatchingOptions = [], range: NSRange, withTemplate templ: String) -> Int
  func replacementString(forResult result: TextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateFor(string: String) -> String
}
@available(iOS 4.0, *)
class DataDetector : RegularExpression {
  init(types checkingTypes: TextCheckingTypes) throws
  var checkingTypes: TextCheckingTypes { get }
  convenience init(pattern: String, options: RegularExpressionOptions = []) throws
  convenience init()
  init?(coder aDecoder: Coder)
}
