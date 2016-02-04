
enum UIBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  static var BlackOpaque: UIBarStyle { get }
  case BlackTranslucent
}
@available(iOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Compact
  case Regular
}
extension UIColor {
  class func lightTextColor() -> UIColor
  class func darkTextColor() -> UIColor
  class func groupTableViewBackgroundColor() -> UIColor
}
extension UIFont {
  class func labelFontSize() -> CGFloat
  class func buttonFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func systemFontSize() -> CGFloat
}
