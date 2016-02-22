
@available(OSX 10.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(OSX 10.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding {
  @available(OSX 10.11, *)
  class func columnTerminators(for aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(OSX 10.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.0, *)
enum NSLineBreakMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case byWordWrapping
  case byCharWrapping
  case byClipping
  case byTruncatingHead
  case byTruncatingTail
  case byTruncatingMiddle
}
@available(OSX 10.0, *)
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirection(forLanguage languageName: String?) -> NSWritingDirection
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
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  init?(coder aDecoder: NSCoder)
}
enum NSTextTabType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case leftTabStopType
  case rightTabStopType
  case centerTabStopType
  case decimalTabStopType
}
extension NSTextTab {
  convenience init(type: NSTextTabType, location loc: CGFloat)
  var tabStopType: NSTextTabType { get }
}
