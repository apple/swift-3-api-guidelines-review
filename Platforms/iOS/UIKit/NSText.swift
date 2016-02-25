
@available(iOS 6.0, *)
enum NSTextAlignment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
  case Justified
  case Natural
}
@available(iOS 6.0, *)
func NSTextAlignmentToCTTextAlignment(_ nsTextAlignment: NSTextAlignment) -> CTTextAlignment
@available(iOS 6.0, *)
func NSTextAlignmentFromCTTextAlignment(_ ctTextAlignment: CTTextAlignment) -> NSTextAlignment
@available(iOS 6.0, *)
enum NSWritingDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
