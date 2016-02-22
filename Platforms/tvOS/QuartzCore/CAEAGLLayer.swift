
class CAEAGLLayer : CALayer, EAGLDrawable {
  @available(tvOS 9.0, *)
  var presentsWithTransaction: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 2.0, *)
  var drawableProperties: [NSObject : AnyObject]!
}
