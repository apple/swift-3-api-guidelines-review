
@available(OSX 10.6, *)
class NSPasteboardItem : Object, NSPasteboardWriting, NSPasteboardReading {
  var types: [String] { get }
  func availableTypeFrom(types: [String]) -> String?
  func setDataProvider(dataProvider: NSPasteboardItemDataProvider, forTypes types: [AnyObject]) -> Bool
  func setData(data: Data?, forType type: String) -> Bool
  func setString(string: String?, forType type: String) -> Bool
  func setPropertyList(propertyList: AnyObject?, forType type: String) -> Bool
  func dataFor(type type: String) -> Data?
  func stringFor(type type: String) -> String?
  func propertyListFor(type type: String) -> AnyObject?
  init()
  @available(OSX 10.6, *)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.6, *)
  func pasteboardPropertyListFor(type type: String) -> AnyObject?
  @available(OSX 10.6, *)
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
protocol NSPasteboardItemDataProvider : ObjectProtocol {
  @available(OSX 10.6, *)
  func pasteboard(pasteboard: NSPasteboard?, item: NSPasteboardItem, provideDataForType type: String)
  optional func pasteboardFinishedWith(dataProvider pasteboard: NSPasteboard)
}
