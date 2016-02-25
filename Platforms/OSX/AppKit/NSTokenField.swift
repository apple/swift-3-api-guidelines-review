
class NSTokenField : NSTextField {
  func setDelegate(_ anObject: NSTokenFieldDelegate?)
  func delegate() -> NSTokenFieldDelegate?
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
}
protocol NSTokenFieldDelegate : NSTextFieldDelegate {
  optional func tokenField(_ tokenField: NSTokenField, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]?
  optional func tokenField(_ tokenField: NSTokenField, shouldAdd tokens: [AnyObject], at index: Int) -> [AnyObject]
  optional func tokenField(_ tokenField: NSTokenField, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(_ tokenField: NSTokenField, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(_ tokenField: NSTokenField, representedObjectForEditing editingString: String) -> AnyObject
  optional func tokenField(_ tokenField: NSTokenField, writeRepresentedObjects objects: [AnyObject], to pboard: NSPasteboard) -> Bool
  optional func tokenField(_ tokenField: NSTokenField, readFrom pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenField(_ tokenField: NSTokenField, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenField(_ tokenField: NSTokenField, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenField(_ tokenField: NSTokenField, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
