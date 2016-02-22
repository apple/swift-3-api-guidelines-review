
@available(iOS 7.0, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var editedAttributes: NSTextStorageEditActions { get }
  static var editedCharacters: NSTextStorageEditActions { get }
}
@available(iOS 7.0, *)
class NSTextStorage : NSMutableAttributedString {
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(_ aLayoutManager: NSLayoutManager)
  func removeLayoutManager(_ aLayoutManager: NSLayoutManager)
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSTextStorageDelegate?
  func edited(_ editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributes(in range: NSRange)
  func ensureAttributesAreFixed(in range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  init(url url: NSURL, options options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  init(data data: NSData, options options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: NSURL, options options: [NSObject : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: NSAttributedString)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func textStorage(_ textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(iOS 7.0, *)
  optional func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
@available(iOS 7.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(iOS 7.0, *)
let NSTextStorageDidProcessEditingNotification: String
