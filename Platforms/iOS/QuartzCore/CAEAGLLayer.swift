
class CAEAGLLayer : CALayer, EAGLDrawable {
  @available(iOS 9.0, *)
  var presentsWithTransaction: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
  @available(iOS 2.0, *)
  var drawableProperties: [Object : AnyObject]!
}
