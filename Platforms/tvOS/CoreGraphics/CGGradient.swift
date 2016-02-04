
class CGGradient {
}
@available(*, deprecated, renamed="CGGradient")
typealias CGGradientRef = CGGradient
struct CGGradientDrawingOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DrawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var DrawsAfterEndLocation: CGGradientDrawingOptions { get }
}
@available(tvOS 2.0, *)
func CGGradientGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGGradientCreateWithColorComponents(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>, _ locations: UnsafePointer<CGFloat>, _ count: Int) -> CGGradient?
@available(tvOS 2.0, *)
func CGGradientCreateWithColors(space: CGColorSpace?, _ colors: CFArray?, _ locations: UnsafePointer<CGFloat>) -> CGGradient?
