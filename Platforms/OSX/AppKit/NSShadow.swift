
class NSShadow : Object, Copying, Coding {
  init()
  var shadowOffset: Size
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
