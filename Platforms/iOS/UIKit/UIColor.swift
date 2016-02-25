
@available(iOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white white: CGFloat, alpha alpha: CGFloat)
  init(hue hue: CGFloat, saturation saturation: CGFloat, brightness brightness: CGFloat, alpha alpha: CGFloat)
  init(red red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
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
  func getWhite(_ white: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 5.0, *)
  func getHue(_ hue: UnsafeMutablePointer<CGFloat>, saturation saturation: UnsafeMutablePointer<CGFloat>, brightness brightness: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 5.0, *)
  func getRed(_ red: UnsafeMutablePointer<CGFloat>, green green: UnsafeMutablePointer<CGFloat>, blue blue: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func colorWithAlphaComponent(_ alpha: CGFloat) -> UIColor
  var CGColor: CGColor { get }
  @available(iOS 5.0, *)
  var CIColor: CIColor { get }
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
}
extension CIColor {
  @available(iOS 5.0, *)
  convenience init(color color: UIColor)
}
