
class NSTokenField : NSTextField {
  func setDelegate(anObject: NSTokenFieldDelegate?)
  func delegate() -> NSTokenFieldDelegate?
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSTokenFieldDelegate : NSTextFieldDelegate {
  optional func tokenField(tokenField: NSTokenField, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, shouldAddObjects tokens: [AnyObject], atIndex index: Int) -> [AnyObject]
  optional func tokenField(tokenField: NSTokenField, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, representedObjectForEditingString editingString: String) -> AnyObject
  optional func tokenField(tokenField: NSTokenField, writeRepresentedObjects objects: [AnyObject], toPasteboard pboard: NSPasteboard) -> Bool
  optional func tokenField(tokenField: NSTokenField, readFromPasteboard pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenField(tokenField: NSTokenField, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenField(tokenField: NSTokenField, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
