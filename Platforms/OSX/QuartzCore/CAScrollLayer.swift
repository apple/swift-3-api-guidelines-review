
class CAScrollLayer : CALayer {
  func scrollTo(p: CGPoint)
  func scrollTo(r: CGRect)
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
@available(OSX 10.5, *)
let kCAScrollNone: String
@available(OSX 10.5, *)
let kCAScrollVertically: String
@available(OSX 10.5, *)
let kCAScrollHorizontally: String
@available(OSX 10.5, *)
let kCAScrollBoth: String
