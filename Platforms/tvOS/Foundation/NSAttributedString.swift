
@available(tvOS 3.2, *)
class AttributedString : Object, Copying, MutableCopying, SecureCoding {
  var string: String { get }
  func attributes(at location: Int, effectiveRange range: RangePointer) -> [String : AnyObject]
  init()
  @available(tvOS 3.2, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 3.2, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
  @available(tvOS 3.2, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 3.2, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  var length: Int { get }
  func attribute(attrName: String, at location: Int, effectiveRange range: RangePointer) -> AnyObject?
  func attributedSubstring(from range: NSRange) -> AttributedString
  func attributes(at location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, at location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> AnyObject?
  func isEqual(to other: AttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
  @available(tvOS 4.0, *)
  func enumerateAttributes(in enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], using block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateAttribute(attrName: String, in enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], using block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct AttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var reverse: AttributedStringEnumerationOptions { get }
  static var longestEffectiveRangeNotRequired: AttributedStringEnumerationOptions { get }
}
@available(tvOS 3.2, *)
class MutableAttributedString : AttributedString {
  func replaceCharacters(in range: NSRange, with str: String)
  func setAttributes(attrs: [String : AnyObject]? = [:], range: NSRange)
  init()
  init?(coder aDecoder: Coder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
}
extension MutableAttributedString {
  var mutableString: MutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject] = [:], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharacters(in range: NSRange, with attrString: AttributedString)
  func insert(attrString: AttributedString, at loc: Int)
  func append(attrString: AttributedString)
  func deleteCharacters(in range: NSRange)
  func setAttributedString(attrString: AttributedString)
  func beginEditing()
  func endEditing()
}
