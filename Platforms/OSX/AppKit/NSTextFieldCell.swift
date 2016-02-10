
enum NSTextFieldBezelStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case squareBezel
  case roundedBezel
}
class NSTextFieldCell : NSActionCell {
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  func setUpFieldEditorAttributes(textObj: NSText) -> NSText
  var bezelStyle: NSTextFieldBezelStyle
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: AttributedString?
  @available(OSX 10.5, *)
  func setWantsNotificationForMarkedText(flag: Bool)
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __tfFlags {
  var drawsBackground: UInt32
  var bezelStyle: UInt32
  var thcSortDirection: UInt32
  var thcSortPriority: UInt32
  var mini: UInt32
  var textColorIgnoresNormalDisableFlag: UInt32
  var textColorDisableFlag: UInt32
  var thcForceHighlightForSort: UInt32
  var invalidTextColor: UInt32
  var notificationForMarkedText: UInt32
  var inToolbar: UInt32
  var hasTextLayer: UInt32
  var isButtonTitle: UInt32
  var allowTightening: UInt32
  var thcHighlighted: UInt32
  var shouldNotClipToBounds: UInt32
  var allowsDefaultTightening: UInt32
  var reservedTextFieldCell: UInt32
  init()
  init(drawsBackground: UInt32, bezelStyle: UInt32, thcSortDirection: UInt32, thcSortPriority: UInt32, mini: UInt32, textColorIgnoresNormalDisableFlag: UInt32, textColorDisableFlag: UInt32, thcForceHighlightForSort: UInt32, invalidTextColor: UInt32, notificationForMarkedText: UInt32, inToolbar: UInt32, hasTextLayer: UInt32, isButtonTitle: UInt32, allowTightening: UInt32, thcHighlighted: UInt32, shouldNotClipToBounds: UInt32, allowsDefaultTightening: UInt32, reservedTextFieldCell: UInt32)
}
