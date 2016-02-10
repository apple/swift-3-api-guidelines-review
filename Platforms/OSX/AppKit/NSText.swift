
var NSEnterCharacter: Int { get }
var NSBackspaceCharacter: Int { get }
var NSTabCharacter: Int { get }
var NSNewlineCharacter: Int { get }
var NSFormFeedCharacter: Int { get }
var NSCarriageReturnCharacter: Int { get }
var NSBackTabCharacter: Int { get }
var NSDeleteCharacter: Int { get }
var NSLineSeparatorCharacter: Int { get }
var NSParagraphSeparatorCharacter: Int { get }
enum NSTextAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case left
  case right
  case center
  case justified
  case natural
}
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case leftToRight
  case rightToLeft
}
var NSIllegalTextMovement: Int { get }
var NSReturnTextMovement: Int { get }
var NSTabTextMovement: Int { get }
var NSBacktabTextMovement: Int { get }
var NSLeftTextMovement: Int { get }
var NSRightTextMovement: Int { get }
var NSUpTextMovement: Int { get }
var NSDownTextMovement: Int { get }
var NSCancelTextMovement: Int { get }
var NSOtherTextMovement: Int { get }
class NSText : NSView, NSChangeSpelling, NSIgnoreMisspelledWords {
  init(frame frameRect: Rect)
  init?(coder: Coder)
  var string: String?
  func replaceCharacters(in range: NSRange, withString aString: String)
  func replaceCharacters(in range: NSRange, withRTF rtfData: Data)
  func replaceCharacters(in range: NSRange, withRTFD rtfdData: Data)
  func rtf(from range: NSRange) -> Data?
  func rtfd(from range: NSRange) -> Data?
  func writeRTFD(toFile path: String, atomically flag: Bool) -> Bool
  func readRTFD(fromFile path: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextDelegate?
  var isEditable: Bool
  var isSelectable: Bool
  var isRichText: Bool
  var importsGraphics: Bool
  var isFieldEditor: Bool
  var usesFontPanel: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor?
  var isRulerVisible: Bool { get }
  var selectedRange: NSRange
  func scrollRangeToVisible(range: NSRange)
  var font: NSFont?
  @NSCopying var textColor: NSColor?
  var alignment: NSTextAlignment
  var baseWritingDirection: NSWritingDirection
  func setTextColor(color: NSColor?, range: NSRange)
  func setFont(font: NSFont, range: NSRange)
  var maxSize: Size
  var minSize: Size
  var isHorizontallyResizable: Bool
  var isVerticallyResizable: Bool
  func sizeToFit()
  func copy(sender: AnyObject?)
  func copyFont(sender: AnyObject?)
  func copyRuler(sender: AnyObject?)
  func cut(sender: AnyObject?)
  func delete(sender: AnyObject?)
  func paste(sender: AnyObject?)
  func pasteFont(sender: AnyObject?)
  func pasteRuler(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
  func alignLeft(sender: AnyObject?)
  func alignRight(sender: AnyObject?)
  func alignCenter(sender: AnyObject?)
  func `subscript`(sender: AnyObject?)
  func superscript(sender: AnyObject?)
  func underline(sender: AnyObject?)
  func unscript(sender: AnyObject?)
  func showGuessPanel(sender: AnyObject?)
  func checkSpelling(sender: AnyObject?)
  func toggleRuler(sender: AnyObject?)
  convenience init()
  func changeSpelling(sender: AnyObject?)
  func ignoreSpelling(sender: AnyObject?)
}
protocol NSTextDelegate : ObjectProtocol {
  optional func textShouldBeginEditing(textObject: NSText) -> Bool
  optional func textShouldEndEditing(textObject: NSText) -> Bool
  optional func textDidBeginEditing(notification: Notification)
  optional func textDidEndEditing(notification: Notification)
  optional func textDidChange(notification: Notification)
}
let NSTextDidBeginEditingNotification: String
let NSTextDidEndEditingNotification: String
let NSTextDidChangeNotification: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSWritingDirectionEmbedding instead")
var NSTextWritingDirectionEmbedding: Int { get }
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSWritingDirectionOverride instead")
var NSTextWritingDirectionOverride: Int { get }
let NSLeftTextAlignment: NSTextAlignment
let NSRightTextAlignment: NSTextAlignment
let NSCenterTextAlignment: NSTextAlignment
let NSJustifiedTextAlignment: NSTextAlignment
let NSNaturalTextAlignment: NSTextAlignment
