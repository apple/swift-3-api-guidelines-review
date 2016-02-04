
@available(OSX, introduced=10.9, deprecated=10.11, message="Use MKPinAnnotationView's pinTintColor instead")
enum MKPinAnnotationColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Red
  case Green
  case Purple
}
@available(OSX 10.9, *)
class MKPinAnnotationView : MKAnnotationView {
  @available(OSX 10.11, *)
  class func redPinColor() -> NSColor
  @available(OSX 10.11, *)
  class func greenPinColor() -> NSColor
  @available(OSX 10.11, *)
  class func purplePinColor() -> NSColor
  @available(OSX 10.11, *)
  var pinTintColor: NSColor!
  var animatesDrop: Bool
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use pinTintColor instead")
  var pinColor: MKPinAnnotationColor
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
