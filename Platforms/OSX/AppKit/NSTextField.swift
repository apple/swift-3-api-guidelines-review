
class NSTextField : NSControl, NSUserInterfaceValidations, NSAccessibilityNavigableStaticText {
  @available(OSX 10.10, *)
  var placeholderString: String?
  @available(OSX 10.10, *)
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  var isBordered: Bool
  var isBezeled: Bool
  var isEditable: Bool
  var isSelectable: Bool
  func selectText(_ sender: AnyObject?)
  unowned(unsafe) var delegate: @sil_unmanaged NSTextFieldDelegate?
  func textShouldBeginEditing(_ textObject: NSText) -> Bool
  func textShouldEndEditing(_ textObject: NSText) -> Bool
  func textDidBeginEditing(_ notification: NSNotification)
  func textDidEndEditing(_ notification: NSNotification)
  func textDidChange(_ notification: NSNotification)
  var acceptsFirstResponder: Bool { get }
  var bezelStyle: NSTextFieldBezelStyle
  @available(OSX 10.8, *)
  var preferredMaxLayoutWidth: CGFloat
  @available(OSX 10.11, *)
  var maximumNumberOfLines: Int
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool
  init(frame frameRect: NSRect)
  init?(coder coder: NSCoder)
  convenience init()
  func validate(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityString(for range: NSRange) -> String?
  func accessibilityLine(for index: Int) -> Int
  func accessibilityRange(forLine lineNumber: Int) -> NSRange
  func accessibilityFrame(for range: NSRange) -> NSRect
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  func accessibilityAttributedString(for range: NSRange) -> NSAttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextField {
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
protocol NSTextFieldDelegate : NSControlTextEditingDelegate {
}
extension NSTextField {
}
