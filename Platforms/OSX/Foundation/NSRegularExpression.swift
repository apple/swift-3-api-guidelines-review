
struct RegularExpressionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitive: RegularExpressionOptions { get }
  static var AllowCommentsAndWhitespace: RegularExpressionOptions { get }
  static var IgnoreMetacharacters: RegularExpressionOptions { get }
  static var DotMatchesLineSeparators: RegularExpressionOptions { get }
  static var AnchorsMatchLines: RegularExpressionOptions { get }
  static var UseUnixLineSeparators: RegularExpressionOptions { get }
  static var UseUnicodeWordBoundaries: RegularExpressionOptions { get }
}
@available(OSX 10.7, *)
class RegularExpression : Object, Copying, Coding {
  init(pattern: String, options: RegularExpressionOptions = []) throws
  var pattern: String { get }
  var options: RegularExpressionOptions { get }
  var numberOfCaptureGroups: Int { get }
  class func escapedPatternFor(string: String) -> String
  convenience init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct MatchingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ReportProgress: MatchingOptions { get }
  static var ReportCompletion: MatchingOptions { get }
  static var Anchored: MatchingOptions { get }
  static var WithTransparentBounds: MatchingOptions { get }
  static var WithoutAnchoringBounds: MatchingOptions { get }
}
struct MatchingFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Progress: MatchingFlags { get }
  static var Completed: MatchingFlags { get }
  static var HitEnd: MatchingFlags { get }
  static var RequiredEnd: MatchingFlags { get }
  static var InternalError: MatchingFlags { get }
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
  func replacementStringFor(result: TextCheckingResult, in string: String, offset: Int, template templ: String) -> String
  class func escapedTemplateFor(string: String) -> String
}
@available(OSX 10.7, *)
class DataDetector : RegularExpression {
  init(types checkingTypes: TextCheckingTypes) throws
  var checkingTypes: TextCheckingTypes { get }
  convenience init(pattern: String, options: RegularExpressionOptions = []) throws
  convenience init()
  init?(coder aDecoder: Coder)
}
