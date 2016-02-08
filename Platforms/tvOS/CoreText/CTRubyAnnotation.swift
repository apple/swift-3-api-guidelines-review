
class CTRubyAnnotation {
}
@available(tvOS 8.0, *)
func CTRubyAnnotationGetTypeID() -> CFTypeID
@available(tvOS 8.0, *)
enum CTRubyAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case invalid
  case auto
  case start
  case center
  case end
  case distributeLetter
  case distributeSpace
  case lineEdge
}
@available(tvOS 8.0, *)
enum CTRubyOverhang : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case invalid
  case auto
  case start
  case end
  case none
}
@available(tvOS 8.0, *)
enum CTRubyPosition : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case before
  case after
  case interCharacter
  case inline
  case count
}
@available(tvOS 8.0, *)
func CTRubyAnnotationCreate(alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation
@available(tvOS 8.0, *)
func CTRubyAnnotationCreateCopy(rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation
@available(tvOS 8.0, *)
func CTRubyAnnotationGetAlignment(rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment
@available(tvOS 8.0, *)
func CTRubyAnnotationGetOverhang(rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang
@available(tvOS 8.0, *)
func CTRubyAnnotationGetSizeFactor(rubyAnnotation: CTRubyAnnotation) -> CGFloat
@available(tvOS 8.0, *)
func CTRubyAnnotationGetTextForPosition(rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
