
@available(tvOS 6.0, *)
class NSShadow : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(tvOS 6.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 6.0, *)
  func encode(aCoder: Coder)
}
