
class CAScrollLayer : CALayer {
  func scrollToPoint(_ p: CGPoint)
  func scrollToRect(_ r: CGRect)
  var scrollMode: String
}
extension CALayer {
  func scrollPoint(_ p: CGPoint)
  func scrollRectToVisible(_ r: CGRect)
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
