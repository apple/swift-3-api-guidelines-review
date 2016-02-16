
@available(OSX 10.6, *)
class NSPasteboardItem : Object, NSPasteboardWriting, NSPasteboardReading {
  var types: [String] { get }
  func availableType(from types: [String]) -> String?
  func setDataProvider(dataProvider: NSPasteboardItemDataProvider, forTypes types: [AnyObject]) -> Bool
  func setData(data: Data?, forType type: String) -> Bool
  func setString(string: String?, forType type: String) -> Bool
  func setPropertyList(propertyList: AnyObject?, forType type: String) -> Bool
  func data(forType type: String) -> Data?
  func string(forType type: String) -> String?
  func propertyList(forType type: String) -> AnyObject?
  init()
  @available(OSX 10.6, *)
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.6, *)
  func pasteboardPropertyList(forType type: String) -> AnyObject?
  @available(OSX 10.6, *)
  class func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
protocol NSPasteboardItemDataProvider : ObjectProtocol {
  @available(OSX 10.6, *)
  func pasteboard(pasteboard: NSPasteboard?, item: NSPasteboardItem, provideDataForType type: String)
  optional func pasteboardFinished(dataProvider pasteboard: NSPasteboard)
}
