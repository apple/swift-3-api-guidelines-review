
@available(watchOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white white: CGFloat, alpha alpha: CGFloat)
  init(hue hue: CGFloat, saturation saturation: CGFloat, brightness brightness: CGFloat, alpha alpha: CGFloat)
  init(red red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  init(cgColor cgColor: CGColor)
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
  func getWhite(_ white: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(watchOS 2.0, *)
  func getHue(_ hue: UnsafeMutablePointer<CGFloat>, saturation saturation: UnsafeMutablePointer<CGFloat>, brightness brightness: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(watchOS 2.0, *)
  func getRed(_ red: UnsafeMutablePointer<CGFloat>, green green: UnsafeMutablePointer<CGFloat>, blue blue: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func withAlphaComponent(_ alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
}
