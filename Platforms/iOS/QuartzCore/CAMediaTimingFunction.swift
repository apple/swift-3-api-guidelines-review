
class CAMediaTimingFunction : NSObject, NSCoding {
  convenience init(name name: String)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPointAtIndex(_ idx: Int, values ptr: UnsafeMutablePointer<Float>)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
let kCAMediaTimingFunctionLinear: String
@available(iOS 2.0, *)
let kCAMediaTimingFunctionEaseIn: String
@available(iOS 2.0, *)
let kCAMediaTimingFunctionEaseOut: String
@available(iOS 2.0, *)
let kCAMediaTimingFunctionEaseInEaseOut: String
@available(iOS 3.0, *)
let kCAMediaTimingFunctionDefault: String
