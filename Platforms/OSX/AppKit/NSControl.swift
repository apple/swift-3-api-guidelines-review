
class NSControl : NSView {
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var ignoresMultiClick: Bool
  var isContinuous: Bool
  var isEnabled: Bool
  var refusesFirstResponder: Bool
  @available(OSX 10.10, *)
  var isHighlighted: Bool
  @available(OSX 10.10, *)
  var controlSize: NSControlSize
  var formatter: Formatter?
  var stringValue: String
  @NSCopying var attributedStringValue: AttributedString
  @NSCopying var objectValue: AnyObject?
  var intValue: Int32
  var integerValue: Int
  var floatValue: Float
  var doubleValue: Double
  @available(OSX 10.10, *)
  func sizeThatFits(size: Size) -> Size
  init(frame frameRect: Rect)
  init?(coder: Coder)
  func sizeToFit()
  func sendAction(on mask: Int) -> Int
  func sendAction(theAction: Selector, to theTarget: AnyObject?) -> Bool
  func takeIntValueFrom(sender: AnyObject?)
  func takeFloatValueFrom(sender: AnyObject?)
  func takeDoubleValueFrom(sender: AnyObject?)
  func takeStringValueFrom(sender: AnyObject?)
  func takeObjectValueFrom(sender: AnyObject?)
  @available(OSX 10.5, *)
  func takeIntegerValueFrom(sender: AnyObject?)
  func mouseDown(theEvent: NSEvent)
  convenience init()
}
struct __conFlags {
  var enabled: UInt32
  var ignoreMultiClick: UInt32
  var calcSize: UInt32
  var drawingAncestor: UInt32
  var ibReserved: UInt32
  var updateCellFocus: UInt32
  var allowsLogicalLayoutDirection: UInt32
  var asmlwidth: UInt32
  var hsmlwidth: UInt32
  var dontValidate: UInt32
  var reserved: UInt32
  init()
  init(enabled: UInt32, ignoreMultiClick: UInt32, calcSize: UInt32, drawingAncestor: UInt32, ibReserved: UInt32, updateCellFocus: UInt32, allowsLogicalLayoutDirection: UInt32, asmlwidth: UInt32, hsmlwidth: UInt32, dontValidate: UInt32, reserved: UInt32)
}
extension NSControl {
  func performClick(sender: AnyObject?)
}
extension NSControl {
  var alignment: NSTextAlignment
  @NSCopying var font: NSFont?
  @available(OSX 10.10, *)
  var lineBreakMode: NSLineBreakMode
  @available(OSX 10.10, *)
  var usesSingleLineMode: Bool
  var baseWritingDirection: NSWritingDirection
  @available(OSX 10.8, *)
  var allowsExpansionToolTips: Bool
  @available(OSX 10.10, *)
  func expansionFrame(frame contentFrame: Rect) -> Rect
  @available(OSX 10.10, *)
  func draw(expansionFrame contentFrame: Rect, in view: NSView)
}
extension NSControl {
  func currentEditor() -> NSText?
  func abortEditing() -> Bool
  func validateEditing()
  @available(OSX 10.10, *)
  func edit(frame aRect: Rect, editor textObj: NSText, delegate anObject: AnyObject?, event theEvent: NSEvent)
  @available(OSX 10.10, *)
  func select(frame aRect: Rect, editor textObj: NSText, delegate anObject: AnyObject?, start selStart: Int, length selLength: Int)
  @available(OSX 10.10, *)
  func endEditing(textObj: NSText)
}
extension Object {
  class func controlTextDidBeginEditing(obj: Notification)
  func controlTextDidBeginEditing(obj: Notification)
  class func controlTextDidEndEditing(obj: Notification)
  func controlTextDidEndEditing(obj: Notification)
  class func controlTextDidChange(obj: Notification)
  func controlTextDidChange(obj: Notification)
}
protocol NSControlTextEditingDelegate : ObjectProtocol {
  optional func control(control: NSControl, textShouldBeginEditing fieldEditor: NSText) -> Bool
  optional func control(control: NSControl, textShouldEndEditing fieldEditor: NSText) -> Bool
  optional func control(control: NSControl, didFailToFormatString string: String, errorDescription error: String?) -> Bool
  optional func control(control: NSControl, didFailToValidatePartialString string: String, errorDescription error: String?)
  optional func control(control: NSControl, isValidObject obj: AnyObject) -> Bool
  optional func control(control: NSControl, textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  optional func control(control: NSControl, textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
}
let NSControlTextDidBeginEditingNotification: String
let NSControlTextDidEndEditingNotification: String
let NSControlTextDidChangeNotification: String
extension NSControl {
  class func setCellClass(factoryId: AnyClass?)
  class func cellClass() -> AnyClass?
  var cell: NSCell?
  func selectedCell() -> NSCell?
  func selectedTag() -> Int
  func setNeedsDisplay()
  func calcSize()
  func updateCell(aCell: NSCell)
  func updateCell(inside aCell: NSCell)
  func drawCell(inside aCell: NSCell)
  func drawCell(aCell: NSCell)
  func selectCell(aCell: NSCell)
}
