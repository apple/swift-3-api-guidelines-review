
@available(OSX 10.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(OSX 10.0, *)
class NSTextTab : Object, Copying, Coding {
  @available(OSX 10.11, *)
  class func columnTerminatorsFor(aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(OSX 10.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.0, *)
enum NSLineBreakMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
@available(OSX 10.0, *)
class NSParagraphStyle : Object, Copying, MutableCopying, SecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirectionForLanguage(languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(OSX 10.0, *)
  var tabStops: [NSTextTab] { get }
  @available(OSX 10.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  var tighteningFactorForTruncation: Float { get }
  var textBlocks: [NSTextBlock] { get }
  var textLists: [NSTextList] { get }
  var headerLevel: Int { get }
  init()
  @available(OSX 10.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.0, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  @available(OSX 10.0, *)
  var tabStops: [NSTextTab]!
  @available(OSX 10.0, *)
  var defaultTabInterval: CGFloat
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(OSX 10.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(OSX 10.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(OSX 10.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  var tighteningFactorForTruncation: Float
  var textBlocks: [NSTextBlock]
  var textLists: [NSTextList]
  var headerLevel: Int
  init()
  init?(coder aDecoder: Coder)
}
enum NSTextTabType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LeftTabStopType
  case RightTabStopType
  case CenterTabStopType
  case DecimalTabStopType
}
extension NSTextTab {
  convenience init(type: NSTextTabType, location loc: CGFloat)
  var tabStopType: NSTextTabType { get }
}
