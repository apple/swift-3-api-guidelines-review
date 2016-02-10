
@available(watchOS 2.0, *)
class UIFont : Object, Copying {
  @available(watchOS 2.0, *)
  class func preferredFont(forTextStyle style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNames(forFamilyName familyName: String) -> [String]
  class func systemFont(ofSize fontSize: CGFloat) -> UIFont
  class func boldSystemFont(ofSize fontSize: CGFloat) -> UIFont
  class func italicSystemFont(ofSize fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func systemFont(ofSize fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func monospacedDigitSystemFont(ofSize fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(watchOS 2.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(watchOS 2.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
