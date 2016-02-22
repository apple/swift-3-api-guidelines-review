
class CGGradient {
}
struct CGGradientDrawingOptions : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var drawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var drawsAfterEndLocation: CGGradientDrawingOptions { get }
}
@available(iOS 2.0, *)
func CGGradientGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CGGradientCreateWithColorComponents(_ space: CGColorSpace?, _ components: UnsafePointer<CGFloat>, _ locations: UnsafePointer<CGFloat>, _ count: Int) -> CGGradient?
@available(iOS 2.0, *)
func CGGradientCreateWithColors(_ space: CGColorSpace?, _ colors: CFArray?, _ locations: UnsafePointer<CGFloat>) -> CGGradient?
