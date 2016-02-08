
class CTRubyAnnotation {
}
@available(OSX 10.10, *)
func CTRubyAnnotationGetTypeID() -> CFTypeID
@available(OSX 10.10, *)
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
@available(OSX 10.10, *)
enum CTRubyOverhang : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case invalid
  case auto
  case start
  case end
  case none
}
@available(OSX 10.10, *)
enum CTRubyPosition : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case before
  case after
  case interCharacter
  case inline
  case count
}
@available(OSX 10.10, *)
func CTRubyAnnotationCreate(alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation
@available(OSX 10.10, *)
func CTRubyAnnotationCreateCopy(rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation
@available(OSX 10.10, *)
func CTRubyAnnotationGetAlignment(rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment
@available(OSX 10.10, *)
func CTRubyAnnotationGetOverhang(rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang
@available(OSX 10.10, *)
func CTRubyAnnotationGetSizeFactor(rubyAnnotation: CTRubyAnnotation) -> CGFloat
@available(OSX 10.10, *)
func CTRubyAnnotationGetTextForPosition(rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
