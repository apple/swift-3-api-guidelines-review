
class CAEAGLLayer : CALayer, EAGLDrawable {
  @available(iOS 9.0, *)
  var presentsWithTransaction: Bool
  init()
  init(layer layer: AnyObject)
  init?(coder aDecoder: NSCoder)
  @available(iOS 2.0, *)
  var drawableProperties: [NSObject : AnyObject]!
}
