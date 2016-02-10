
@available(iOS 2.0, *)
class UIFont : Object, Copying {
  @available(iOS 7.0, *)
  class func preferredFontFor(textStyle style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesFor(familyName familyName: String) -> [String]
  class func systemFontOf(size fontSize: CGFloat) -> UIFont
  class func boldSystemFontOf(size fontSize: CGFloat) -> UIFont
  class func italicSystemFontOf(size fontSize: CGFloat) -> UIFont
  @available(iOS 8.2, *)
  class func systemFontOf(size fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(iOS 9.0, *)
  class func monospacedDigitSystemFontOf(size fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(iOS 4.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(fontSize: CGFloat) -> UIFont
  @available(iOS 7.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(iOS 7.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(iOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
