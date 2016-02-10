
@available(watchOS 2.0, *)
class UIColor : Object, SecureCoding, Copying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  init(patternImage image: UIImage)
  class func black() -> UIColor
  class func darkGray() -> UIColor
  class func lightGray() -> UIColor
  class func white() -> UIColor
  class func gray() -> UIColor
  class func red() -> UIColor
  class func green() -> UIColor
  class func blue() -> UIColor
  class func cyan() -> UIColor
  class func yellow() -> UIColor
  class func magenta() -> UIColor
  class func orange() -> UIColor
  class func purple() -> UIColor
  class func brown() -> UIColor
  class func clear() -> UIColor
  func set()
  func setFill()
  func setStroke()
  @available(watchOS 2.0, *)
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(watchOS 2.0, *)
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(watchOS 2.0, *)
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func withAlphaComponent(alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
