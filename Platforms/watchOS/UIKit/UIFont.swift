
@available(watchOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(watchOS 2.0, *)
  class func preferredFontForTextStyle(style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(familyName: String) -> [String]
  class func systemFontOfSize(fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
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
  func fontWithSize(fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(watchOS 2.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
