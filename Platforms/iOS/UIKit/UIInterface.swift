
enum UIBarStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case black
  static var blackOpaque: UIBarStyle { get }
  case blackTranslucent
}
@available(iOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case compact
  case regular
}
extension UIColor {
  class func lightText() -> UIColor
  class func darkText() -> UIColor
  class func groupTableViewBackground() -> UIColor
}
extension UIFont {
  class func labelSize() -> CGFloat
  class func buttonFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func systemFontSize() -> CGFloat
}
