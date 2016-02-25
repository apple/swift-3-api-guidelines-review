
@available(OSX 10.6, *)
class NSPasteboardItem : NSObject, NSPasteboardWriting, NSPasteboardReading {
  var types: [String] { get }
  func availableTypeFromArray(_ types: [String]) -> String?
  func setDataProvider(_ dataProvider: NSPasteboardItemDataProvider, forTypes types: [AnyObject]) -> Bool
  func setData(_ data: NSData?, forType type: String) -> Bool
  func setString(_ string: String?, forType type: String) -> Bool
  func setPropertyList(_ propertyList: AnyObject?, forType type: String) -> Bool
  func dataForType(_ type: String) -> NSData?
  func stringForType(_ type: String) -> String?
  func propertyListForType(_ type: String) -> AnyObject?
  @available(OSX 10.6, *)
  func writableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.6, *)
  func pasteboardPropertyListForType(_ type: String) -> AnyObject?
  @available(OSX 10.6, *)
  class func readableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
protocol NSPasteboardItemDataProvider : NSObjectProtocol {
  @available(OSX 10.6, *)
  func pasteboard(_ pasteboard: NSPasteboard?, item item: NSPasteboardItem, provideDataForType type: String)
  optional func pasteboardFinishedWithDataProvider(_ pasteboard: NSPasteboard)
}
