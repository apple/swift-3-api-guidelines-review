
@available(watchOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(watchOS 2.0, *)
  class func preferredFontForTextStyle(_ style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(_ familyName: String) -> [String]
  class func systemFontOfSize(_ fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(_ fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(_ fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func systemFontOfSize(_ fontSize: CGFloat, weight weight: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func monospacedDigitSystemFontOfSize(_ fontSize: CGFloat, weight weight: CGFloat) -> UIFont
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
  func fontWithSize(_ fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  /*not inherited*/ init(descriptor descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(watchOS 2.0, *)
  func fontDescriptor() -> UIFontDescriptor
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
