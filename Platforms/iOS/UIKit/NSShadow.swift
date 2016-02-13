
@available(iOS 6.0, *)
class NSShadow : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(iOS 6.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func encode(with aCoder: Coder)
}
