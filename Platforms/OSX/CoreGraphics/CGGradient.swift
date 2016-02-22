
class CGGradient {
}
struct CGGradientDrawingOptions : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var drawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var drawsAfterEndLocation: CGGradientDrawingOptions { get }
}
@available(OSX 10.5, *)
func CGGradientGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CGGradientCreateWithColorComponents(_ space: CGColorSpace?, _ components: UnsafePointer<CGFloat>, _ locations: UnsafePointer<CGFloat>, _ count: Int) -> CGGradient?
@available(OSX 10.5, *)
func CGGradientCreateWithColors(_ space: CGColorSpace?, _ colors: CFArray?, _ locations: UnsafePointer<CGFloat>) -> CGGradient?
