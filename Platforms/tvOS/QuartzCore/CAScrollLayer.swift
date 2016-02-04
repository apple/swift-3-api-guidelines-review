
class CAScrollLayer : CALayer {
  func scrollToPoint(p: CGPoint)
  func scrollToRect(r: CGRect)
  var scrollMode: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
extension CALayer {
  func scrollPoint(p: CGPoint)
  func scrollRectToVisible(r: CGRect)
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
