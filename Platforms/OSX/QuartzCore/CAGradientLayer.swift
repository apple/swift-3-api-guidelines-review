
class CAGradientLayer : CALayer {
  var colors: [AnyObject]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.6, *)
let kCAGradientLayerAxial: String
