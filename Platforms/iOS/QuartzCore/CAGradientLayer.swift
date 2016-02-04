
class CAGradientLayer : CALayer {
  var colors: [AnyObject]?
  var locations: [Number]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
@available(iOS 3.0, *)
let kCAGradientLayerAxial: String
