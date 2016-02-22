
class CAScrollLayer : CALayer {
  func scroll(to p: CGPoint)
  func scroll(to r: CGRect)
  var scrollMode: String
  init()
  init(layer layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
extension CALayer {
  func scroll(_ p: CGPoint)
  func scrollRectToVisible(_ r: CGRect)
  var visibleRect: CGRect { get }
}
@available(tvOS 2.0, *)
let kCAScrollNone: String
@available(tvOS 2.0, *)
let kCAScrollVertically: String
@available(tvOS 2.0, *)
let kCAScrollHorizontally: String
@available(tvOS 2.0, *)
let kCAScrollBoth: String
