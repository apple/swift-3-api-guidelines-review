
@available(OSX 10.6, *)
let NSPasteboardTypeString: String
@available(OSX 10.6, *)
let NSPasteboardTypePDF: String
@available(OSX 10.6, *)
let NSPasteboardTypeTIFF: String
@available(OSX 10.6, *)
let NSPasteboardTypePNG: String
@available(OSX 10.6, *)
let NSPasteboardTypeRTF: String
@available(OSX 10.6, *)
let NSPasteboardTypeRTFD: String
@available(OSX 10.6, *)
let NSPasteboardTypeHTML: String
@available(OSX 10.6, *)
let NSPasteboardTypeTabularText: String
@available(OSX 10.6, *)
let NSPasteboardTypeFont: String
@available(OSX 10.6, *)
let NSPasteboardTypeRuler: String
@available(OSX 10.6, *)
let NSPasteboardTypeColor: String
@available(OSX 10.6, *)
let NSPasteboardTypeSound: String
@available(OSX 10.6, *)
let NSPasteboardTypeMultipleTextSelection: String
@available(OSX 10.7, *)
let NSPasteboardTypeTextFinderOptions: String
let NSGeneralPboard: String
let NSFontPboard: String
let NSRulerPboard: String
let NSFindPboard: String
let NSDragPboard: String
class NSPasteboard : Object {
  class func general() -> NSPasteboard
  /*not inherited*/ init(name: String)
  class func withUniqueName() -> NSPasteboard
  var name: String { get }
  var changeCount: Int { get }
  func releaseGlobally()
  @available(OSX 10.6, *)
  func clearContents() -> Int
  @available(OSX 10.6, *)
  func writeObjects(objects: [NSPasteboardWriting]) -> Bool
  @available(OSX 10.6, *)
  func readObjectsFor(classes classArray: [AnyClass], options: [String : AnyObject]? = [:]) -> [AnyObject]?
  @available(OSX 10.6, *)
  var pasteboardItems: [NSPasteboardItem]? { get }
  @available(OSX 10.6, *)
  func indexOf(pasteboardItem: NSPasteboardItem) -> Int
  @available(OSX 10.6, *)
  func canReadItemWithDataConformingTo(types types: [String]) -> Bool
  @available(OSX 10.6, *)
  func canReadObjectFor(classes classArray: [AnyClass], options: [String : AnyObject]? = [:]) -> Bool
  func declareTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  func addTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  var types: [String]? { get }
  func availableTypeFrom(types: [String]) -> String?
  func setData(data: Data?, forType dataType: String) -> Bool
  func setPropertyList(plist: AnyObject, forType dataType: String) -> Bool
  func setString(string: String, forType dataType: String) -> Bool
  func dataFor(type dataType: String) -> Data?
  func propertyListFor(type dataType: String) -> AnyObject?
  func stringFor(type dataType: String) -> String?
  init()
}
extension NSPasteboard {
  class func typesFilterableTo(type: String) -> [String]
  /*not inherited*/ init(byFilteringFile filename: String)
  /*not inherited*/ init(byFilteringData data: Data, ofType type: String)
  /*not inherited*/ init(byFilteringTypesIn pboard: NSPasteboard)
}
extension Object {
  class func pasteboard(sender: NSPasteboard, provideDataForType type: String)
  func pasteboard(sender: NSPasteboard, provideDataForType type: String)
  class func pasteboardChangedOwner(sender: NSPasteboard)
  func pasteboardChangedOwner(sender: NSPasteboard)
}
@available(OSX 10.6, *)
let NSPasteboardURLReadingFileURLsOnlyKey: String
@available(OSX 10.6, *)
let NSPasteboardURLReadingContentsConformToTypesKey: String
@available(OSX 10.6, *)
struct NSPasteboardWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var promised: NSPasteboardWritingOptions { get }
}
protocol NSPasteboardWriting : ObjectProtocol {
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional func writingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListFor(type type: String) -> AnyObject?
}
@available(OSX 10.6, *)
struct NSPasteboardReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var asData: NSPasteboardReadingOptions { get }
  static var asString: NSPasteboardReadingOptions { get }
  static var asPropertyList: NSPasteboardReadingOptions { get }
  static var asKeyedArchive: NSPasteboardReadingOptions { get }
}
protocol NSPasteboardReading : ObjectProtocol {
  static func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional static func readingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension URL : NSPasteboardWriting, NSPasteboardReading {
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func writeTo(pasteBoard: NSPasteboard)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListFor(type type: String) -> AnyObject?
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSString : NSPasteboardWriting, NSPasteboardReading {
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListFor(type type: String) -> AnyObject?
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
let NSStringPboardType: String
let NSFilenamesPboardType: String
let NSTIFFPboardType: String
let NSRTFPboardType: String
let NSTabularTextPboardType: String
let NSFontPboardType: String
let NSRulerPboardType: String
let NSColorPboardType: String
let NSRTFDPboardType: String
let NSHTMLPboardType: String
let NSURLPboardType: String
let NSPDFPboardType: String
@available(OSX 10.5, *)
let NSMultipleTextSelectionPboardType: String
let NSPostScriptPboardType: String
let NSVCardPboardType: String
let NSInkTextPboardType: String
let NSFilesPromisePboardType: String
@available(OSX 10.6, *)
let NSPasteboardTypeFindPanelSearchOptions: String
extension NSPasteboard {
  func writeFileContents(filename: String) -> Bool
  func readFileContentsType(type: String?, toFile filename: String) -> String?
  func write(wrapper: FileWrapper) -> Bool
  func readFileWrapper() -> FileWrapper?
}
let NSFileContentsPboardType: String
func NSCreateFilenamePboardType(fileType: String) -> String?
func NSCreateFileContentsPboardType(fileType: String) -> String?
func NSGetFileType(pboardType: String) -> String?
func NSGetFileTypes(pboardTypes: [String]) -> [String]?
