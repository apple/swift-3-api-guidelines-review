
class CTParagraphStyle {
}
@available(OSX 10.5, *)
func CTParagraphStyleGetTypeID() -> CFTypeID
enum CTTextAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  @available(OSX 10.8, *)
  case Left
  @available(OSX 10.8, *)
  case Right
  @available(OSX 10.8, *)
  case Center
  @available(OSX 10.8, *)
  case Justified
  @available(OSX 10.8, *)
  case Natural
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTLeftTextAlignment: CTTextAlignment { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTRightTextAlignment: CTTextAlignment { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTCenterTextAlignment: CTTextAlignment { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTJustifiedTextAlignment: CTTextAlignment { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTNaturalTextAlignment: CTTextAlignment { get }
}
enum CTLineBreakMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
enum CTWritingDirection : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum CTParagraphStyleSpecifier : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Alignment
  case FirstLineHeadIndent
  case HeadIndent
  case TailIndent
  case TabStops
  case DefaultTabInterval
  case LineBreakMode
  case LineHeightMultiple
  case MaximumLineHeight
  case MinimumLineHeight
  case LineSpacing
  case ParagraphSpacing
  case ParagraphSpacingBefore
  case BaseWritingDirection
  case MaximumLineSpacing
  case MinimumLineSpacing
  case LineSpacingAdjustment
  case LineBoundsOptions
  case Count
}
struct CTParagraphStyleSetting {
  var spec: CTParagraphStyleSpecifier
  var valueSize: Int
  var value: UnsafePointer<Void>
}
@available(OSX 10.5, *)
func CTParagraphStyleCreate(settings: UnsafePointer<CTParagraphStyleSetting>, _ settingCount: Int) -> CTParagraphStyle
@available(OSX 10.5, *)
func CTParagraphStyleCreateCopy(paragraphStyle: CTParagraphStyle) -> CTParagraphStyle
@available(OSX 10.5, *)
func CTParagraphStyleGetValueForSpecifier(paragraphStyle: CTParagraphStyle, _ spec: CTParagraphStyleSpecifier, _ valueBufferSize: Int, _ valueBuffer: UnsafeMutablePointer<Void>) -> Bool
