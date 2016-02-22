
@available(tvOS 3.2, *)
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributes(at location: Int, effectiveRange range: NSRangePointer) -> [String : AnyObject]
  init()
  @available(tvOS 3.2, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 3.2, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 3.2, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 3.2, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(attrName: String, at location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func attributedSubstring(from range: NSRange) -> NSAttributedString
  func attributes(at location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, at location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> AnyObject?
  func isEqual(to other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: NSAttributedString)
  @available(tvOS 4.0, *)
  func enumerateAttributes(in enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions = [], using block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateAttribute(attrName: String, in enumerationRange: NSRange, options opts: NSAttributedStringEnumerationOptions = [], using block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct NSAttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var reverse: NSAttributedStringEnumerationOptions { get }
  static var longestEffectiveRangeNotRequired: NSAttributedStringEnumerationOptions { get }
}
@available(tvOS 3.2, *)
class NSMutableAttributedString : NSAttributedString {
  func replaceCharacters(in range: NSRange, with str: String)
  func setAttributes(attrs: [String : AnyObject]?, range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: NSAttributedString)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject] = [:], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharacters(in range: NSRange, with attrString: NSAttributedString)
  func insert(attrString: NSAttributedString, at loc: Int)
  func append(attrString: NSAttributedString)
  func deleteCharacters(in range: NSRange)
  func setAttributedString(attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
