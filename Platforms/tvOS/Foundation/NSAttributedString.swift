
@available(tvOS 3.2, *)
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributesAtIndex(_ location: Int, effectiveRange range: NSRangePointer) -> [String : AnyObject]
  @available(tvOS 3.2, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 3.2, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 3.2, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 3.2, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(_ attrName: String, atIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func attributedSubstringFromRange(_ range: NSRange) -> NSAttributedString
  func attributesAtIndex(_ location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(_ attrName: String, atIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  func isEqualToAttributedString(_ other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
  @available(tvOS 4.0, *)
  func enumerateAttributesInRange(_ enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateAttribute(_ attrName: String, inRange enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions, usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct NSAttributedStringEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Reverse: NSAttributedStringEnumerationOptions { get }
  static var LongestEffectiveRangeNotRequired: NSAttributedStringEnumerationOptions { get }
}
@available(tvOS 3.2, *)
class NSMutableAttributedString : NSAttributedString {
  func replaceCharactersInRange(_ range: NSRange, withString str: String)
  func setAttributes(_ attrs: [String : AnyObject]?, range range: NSRange)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(_ name: String, value value: AnyObject, range range: NSRange)
  func addAttributes(_ attrs: [String : AnyObject], range range: NSRange)
  func removeAttribute(_ name: String, range range: NSRange)
  func replaceCharactersInRange(_ range: NSRange, withAttributedString attrString: NSAttributedString)
  func insertAttributedString(_ attrString: NSAttributedString, atIndex loc: Int)
  func appendAttributedString(_ attrString: NSAttributedString)
  func deleteCharactersInRange(_ range: NSRange)
  func setAttributedString(_ attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
