
@available(OSX 10.6, *)
class NSPasteboardItem : NSObject, NSPasteboardWriting, NSPasteboardReading {
  var types: [String] { get }
  func availableType(from types: [String]) -> String?
  func setDataProvider(_ dataProvider: NSPasteboardItemDataProvider, forTypes types: [AnyObject]) -> Bool
  func setData(_ data: NSData?, forType type: String) -> Bool
  func setString(_ string: String?, forType type: String) -> Bool
  func setPropertyList(_ propertyList: AnyObject?, forType type: String) -> Bool
  func data(forType type: String) -> NSData?
  func string(forType type: String) -> String?
  func propertyList(forType type: String) -> AnyObject?
  @available(OSX 10.6, *)
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.6, *)
  func pasteboardPropertyList(forType type: String) -> AnyObject?
  @available(OSX 10.6, *)
  class func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
protocol NSPasteboardItemDataProvider : NSObjectProtocol {
  @available(OSX 10.6, *)
  func pasteboard(_ pasteboard: NSPasteboard?, item item: NSPasteboardItem, provideDataForType type: String)
  optional func pasteboardFinished(withDataProvider pasteboard: NSPasteboard)
}
