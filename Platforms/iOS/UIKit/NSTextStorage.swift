
@available(iOS 7.0, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
@available(iOS 7.0, *)
class NSTextStorage : NSMutableAttributedString {
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
  func invalidateAttributesInRange(range: NSRange)
  func ensureAttributesAreFixedInRange(range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(iOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
@available(iOS 7.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(iOS 7.0, *)
let NSTextStorageDidProcessEditingNotification: String
