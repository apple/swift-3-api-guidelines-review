
class CTRubyAnnotation {
}
@available(*, deprecated, renamed="CTRubyAnnotation")
typealias CTRubyAnnotationRef = CTRubyAnnotation
@available(OSX 10.10, *)
func CTRubyAnnotationGetTypeID() -> CFTypeID
@available(OSX 10.10, *)
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
@available(OSX 10.10, *)
enum CTRubyOverhang : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case End
  case None
}
@available(OSX 10.10, *)
enum CTRubyPosition : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Before
  case After
  case InterCharacter
  case Inline
  case Count
}
@available(OSX 10.10, *)
func CTRubyAnnotationCreate(_ alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation
@available(OSX 10.10, *)
func CTRubyAnnotationCreateCopy(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation
@available(OSX 10.10, *)
func CTRubyAnnotationGetAlignment(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment
@available(OSX 10.10, *)
func CTRubyAnnotationGetOverhang(_ rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang
@available(OSX 10.10, *)
func CTRubyAnnotationGetSizeFactor(_ rubyAnnotation: CTRubyAnnotation) -> CGFloat
@available(OSX 10.10, *)
func CTRubyAnnotationGetTextForPosition(_ rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
