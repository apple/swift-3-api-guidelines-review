
@available(OSX 10.11, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var editedAttributes: NSTextStorageEditActions { get }
  static var editedCharacters: NSTextStorageEditActions { get }
}
@available(OSX 10.0, *)
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
  func invalidateAttributes(in range: NSRange)
  func ensureAttributesAreFixed(in range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  init(url: NSURL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  init(data: NSData, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init?(rtf data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfd data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, baseURL base: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, options: [NSObject : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfdFileWrapper wrapper: NSFileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(url: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: NSAttributedString)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(OSX 10.11, *)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
@available(OSX 10.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(OSX 10.0, *)
let NSTextStorageDidProcessEditingNotification: String
typealias NSTextStorageEditedOptions = Int
extension NSObject {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:willProcessEditing:range:changeInLength: instead.")
  class func textStorageWillProcessEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:willProcessEditing:range:changeInLength: instead.")
  func textStorageWillProcessEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:DidProcessEditing:range:changeInLength: instead.")
  class func textStorageDidProcessEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:DidProcessEditing:range:changeInLength: instead.")
  func textStorageDidProcessEditing(notification: NSNotification)
}
