
@available(iOS 3.2, *)
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributesAtIndex(location: Int, effectiveRange range: NSRangePointer) -> [String : AnyObject]
  init()
  @available(iOS 3.2, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.2, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.2, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(attrName: String, atIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func attributedSubstringFromRange(range: NSRange) -> NSAttributedString
  func attributesAtIndex(location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, atIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  func isEqualToAttributedString(other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
  @available(iOS 4.0, *)
  func enumerateAttributesInRange(enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateAttribute(attrName: String, inRange enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct NSAttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Reverse: NSAttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: NSAttributedStringEnumerationOptions { get }
}
@available(iOS 3.2, *)
class NSMutableAttributedString : NSAttributedString {
  func replaceCharactersInRange(range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]?, range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharactersInRange(range: NSRange, withAttributedString attrString: NSAttributedString)
  func insertAttributedString(attrString: NSAttributedString, atIndex loc: Int)
  func appendAttributedString(attrString: NSAttributedString)
  func deleteCharactersInRange(range: NSRange)
  func setAttributedString(attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
