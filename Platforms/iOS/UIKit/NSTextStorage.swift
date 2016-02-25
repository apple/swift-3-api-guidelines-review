
@available(iOS 7.0, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
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
  func invalidateAttributesInRange(_ range: NSRange)
  func ensureAttributesAreFixedInRange(_ range: NSRange)
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
