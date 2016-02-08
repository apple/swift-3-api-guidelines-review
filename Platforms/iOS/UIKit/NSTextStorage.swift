
@available(iOS 7.0, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var editedAttributes: NSTextStorageEditActions { get }
  static var editedCharacters: NSTextStorageEditActions { get }
}
@available(iOS 7.0, *)
class NSTextStorage : MutableAttributedString {
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(aLayoutManager: NSLayoutManager)
  func removeLayoutManager(aLayoutManager: NSLayoutManager)
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSTextStorageDelegate?
  func edited(editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributesIn(range: NSRange)
  func ensureAttributesAreFixedIn(range: NSRange)
  init()
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: URL, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
}
protocol NSTextStorageDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(iOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
@available(iOS 7.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(iOS 7.0, *)
let NSTextStorageDidProcessEditingNotification: String
