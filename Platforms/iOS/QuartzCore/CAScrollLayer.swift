
class CAScrollLayer : CALayer {
  func scroll(to p: CGPoint)
  func scroll(to r: CGRect)
  var scrollMode: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
extension CALayer {
  func scroll(p: CGPoint)
  func scrollRectToVisible(r: CGRect)
  var visibleRect: CGRect { get }
}
@available(iOS 2.0, *)
let kCAScrollNone: String
@available(iOS 2.0, *)
let kCAScrollVertically: String
@available(iOS 2.0, *)
let kCAScrollHorizontally: String
@available(iOS 2.0, *)
let kCAScrollBoth: String
