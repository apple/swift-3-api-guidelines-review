
class CTRubyAnnotation {
}
@available(*, deprecated, renamed="CTRubyAnnotation")
typealias CTRubyAnnotationRef = CTRubyAnnotation
@available(iOS 8.0, *)
func CTRubyAnnotationGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
enum CTRubyAlignment : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case Center
  case End
  case DistributeLetter
  case DistributeSpace
  case LineEdge
}
@available(iOS 8.0, *)
enum CTRubyOverhang : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case End
  case None
}
@available(iOS 8.0, *)
enum CTRubyPosition : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Before
  case After
  case InterCharacter
  case Inline
  case Count
}
@available(iOS 8.0, *)
func CTRubyAnnotationCreate(_ alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation
@available(iOS 8.0, *)
func CTRubyAnnotationCreateCopy(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation
@available(iOS 8.0, *)
func CTRubyAnnotationGetAlignment(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment
@available(iOS 8.0, *)
func CTRubyAnnotationGetOverhang(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang
@available(iOS 8.0, *)
func CTRubyAnnotationGetSizeFactor(_ rubyAnnotation: CTRubyAnnotation) -> CGFloat
@available(iOS 8.0, *)
func CTRubyAnnotationGetTextForPosition(_ rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
