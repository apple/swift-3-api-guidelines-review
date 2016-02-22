
enum NSTokenStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case none
  case rounded
  @available(OSX 10.10, *)
  case squared
  @available(OSX 10.10, *)
  case plainSquared
}
let NSDefaultTokenStyle: NSTokenStyle
let NSPlainTextTokenStyle: NSTokenStyle
let NSRoundedTokenStyle: NSTokenStyle
class NSTokenFieldCell : NSTextFieldCell {
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
  unowned(unsafe) var delegate: @sil_unmanaged NSTokenFieldCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
protocol NSTokenFieldCellDelegate : NSObjectProtocol {
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, shouldAdd tokens: [AnyObject], at index: Int) -> [AnyObject]
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, representedObjectForEditing editingString: String) -> AnyObject
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, writeRepresentedObjects objects: [AnyObject], to pboard: NSPasteboard) -> Bool
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, readFrom pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
