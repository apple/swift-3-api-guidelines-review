
@available(iOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(CGColor cgColor: CGColor)
  init(patternImage image: UIImage)
  @available(iOS 5.0, *)
  init(CIColor ciColor: CIColor)
  class func blackColor() -> UIColor
  class func darkGrayColor() -> UIColor
  class func lightGrayColor() -> UIColor
  class func whiteColor() -> UIColor
  class func grayColor() -> UIColor
  class func redColor() -> UIColor
  class func greenColor() -> UIColor
  class func blueColor() -> UIColor
  class func cyanColor() -> UIColor
  class func yellowColor() -> UIColor
  class func magentaColor() -> UIColor
  class func orangeColor() -> UIColor
  class func purpleColor() -> UIColor
  class func brownColor() -> UIColor
  class func clearColor() -> UIColor
  func set()
  func setFill()
  func setStroke()
  @available(iOS 5.0, *)
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 5.0, *)
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 5.0, *)
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func colorWithAlphaComponent(alpha: CGFloat) -> UIColor
  var CGColor: CGColor { get }
  @available(iOS 5.0, *)
  var CIColor: CIColor { get }
  init()
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension CIColor {
  @available(iOS 5.0, *)
  convenience init(color: UIColor)
}