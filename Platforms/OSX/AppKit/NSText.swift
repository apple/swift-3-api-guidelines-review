
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
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Center
  case Justified
  case Natural
}
enum NSWritingDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
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
  var string: String?
  func replaceCharactersInRange(_ range: NSRange, withString aString: String)
  func replaceCharactersInRange(_ range: NSRange, withRTF rtfData: NSData)
  func replaceCharactersInRange(_ range: NSRange, withRTFD rtfdData: NSData)
  func RTFFromRange(_ range: NSRange) -> NSData?
  func RTFDFromRange(_ range: NSRange) -> NSData?
  func writeRTFDToFile(_ path: String, atomically flag: Bool) -> Bool
  func readRTFDFromFile(_ path: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextDelegate?
  var editable: Bool
  var selectable: Bool
  var richText: Bool
  var importsGraphics: Bool
  var fieldEditor: Bool
  var usesFontPanel: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor?
  var rulerVisible: Bool { get }
  var selectedRange: NSRange
  func scrollRangeToVisible(_ range: NSRange)
  var font: NSFont?
  @NSCopying var textColor: NSColor?
  var alignment: NSTextAlignment
  var baseWritingDirection: NSWritingDirection
  func setTextColor(_ color: NSColor?, range range: NSRange)
  func setFont(_ font: NSFont, range range: NSRange)
  var maxSize: NSSize
  var minSize: NSSize
  var horizontallyResizable: Bool
  var verticallyResizable: Bool
  func sizeToFit()
  func copy(_ sender: AnyObject?)
  func copyFont(_ sender: AnyObject?)
  func copyRuler(_ sender: AnyObject?)
  func cut(_ sender: AnyObject?)
  func delete(_ sender: AnyObject?)
  func paste(_ sender: AnyObject?)
  func pasteFont(_ sender: AnyObject?)
  func pasteRuler(_ sender: AnyObject?)
  func alignLeft(_ sender: AnyObject?)
  func alignRight(_ sender: AnyObject?)
  func alignCenter(_ sender: AnyObject?)
  func `subscript`(_ sender: AnyObject?)
  func superscript(_ sender: AnyObject?)
  func underline(_ sender: AnyObject?)
  func unscript(_ sender: AnyObject?)
  func showGuessPanel(_ sender: AnyObject?)
  func checkSpelling(_ sender: AnyObject?)
  func toggleRuler(_ sender: AnyObject?)
  func changeSpelling(_ sender: AnyObject?)
  func ignoreSpelling(_ sender: AnyObject?)
}
protocol NSTextDelegate : NSObjectProtocol {
  optional func textShouldBeginEditing(_ textObject: NSText) -> Bool
  optional func textShouldEndEditing(_ textObject: NSText) -> Bool
  optional func textDidBeginEditing(_ notification: NSNotification)
  optional func textDidEndEditing(_ notification: NSNotification)
  optional func textDidChange(_ notification: NSNotification)
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
