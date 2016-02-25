
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
class NSPasteboard : NSObject {
  class func general() -> NSPasteboard
  /*not inherited*/ init(name name: String)
  class func withUniqueName() -> NSPasteboard
  var name: String { get }
  var changeCount: Int { get }
  func releaseGlobally()
  @available(OSX 10.6, *)
  func clearContents() -> Int
  @available(OSX 10.6, *)
  func writeObjects(_ objects: [NSPasteboardWriting]) -> Bool
  @available(OSX 10.6, *)
  func readObjects(forClasses classArray: [AnyClass], options options: [String : AnyObject]? = [:]) -> [AnyObject]?
  @available(OSX 10.6, *)
  var pasteboardItems: [NSPasteboardItem]? { get }
  @available(OSX 10.6, *)
  func index(of pasteboardItem: NSPasteboardItem) -> Int
  @available(OSX 10.6, *)
  func canReadItemWithDataConforming(toTypes types: [String]) -> Bool
  @available(OSX 10.6, *)
  func canReadObject(forClasses classArray: [AnyClass], options options: [String : AnyObject]? = [:]) -> Bool
  func declareTypes(_ newTypes: [String], owner newOwner: AnyObject?) -> Int
  func addTypes(_ newTypes: [String], owner newOwner: AnyObject?) -> Int
  var types: [String]? { get }
  func availableType(from types: [String]) -> String?
  func setData(_ data: NSData?, forType dataType: String) -> Bool
  func setPropertyList(_ plist: AnyObject, forType dataType: String) -> Bool
  func setString(_ string: String, forType dataType: String) -> Bool
  func data(forType dataType: String) -> NSData?
  func propertyList(forType dataType: String) -> AnyObject?
  func string(forType dataType: String) -> String?
}
extension NSPasteboard {
  class func typesFilterable(to type: String) -> [String]
  /*not inherited*/ init(byFilteringFile filename: String)
  /*not inherited*/ init(byFilteringData data: NSData, ofType type: String)
  /*not inherited*/ init(byFilteringTypesIn pboard: NSPasteboard)
}
extension NSObject {
  class func pasteboard(_ sender: NSPasteboard, provideDataForType type: String)
  func pasteboard(_ sender: NSPasteboard, provideDataForType type: String)
  class func pasteboardChangedOwner(_ sender: NSPasteboard)
  func pasteboardChangedOwner(_ sender: NSPasteboard)
}
@available(OSX 10.6, *)
let NSPasteboardURLReadingFileURLsOnlyKey: String
@available(OSX 10.6, *)
let NSPasteboardURLReadingContentsConformToTypesKey: String
@available(OSX 10.6, *)
struct NSPasteboardWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var promised: NSPasteboardWritingOptions { get }
}
protocol NSPasteboardWriting : NSObjectProtocol {
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional func writingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
}
@available(OSX 10.6, *)
struct NSPasteboardReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var asData: NSPasteboardReadingOptions { get }
  static var asString: NSPasteboardReadingOptions { get }
  static var asPropertyList: NSPasteboardReadingOptions { get }
  static var asKeyedArchive: NSPasteboardReadingOptions { get }
}
protocol NSPasteboardReading : NSObjectProtocol {
  static func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional static func readingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSURL : NSPasteboardWriting, NSPasteboardReading {
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func write(to pasteBoard: NSPasteboard)
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
  class func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSString : NSPasteboardWriting, NSPasteboardReading {
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
  class func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
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
  func writeFileContents(_ filename: String) -> Bool
  func readFileContentsType(_ type: String?, toFile filename: String) -> String?
  func write(_ wrapper: NSFileWrapper) -> Bool
  func readFileWrapper() -> NSFileWrapper?
}
let NSFileContentsPboardType: String
func NSCreateFilenamePboardType(_ fileType: String) -> String?
func NSCreateFileContentsPboardType(_ fileType: String) -> String?
func NSGetFileType(_ pboardType: String) -> String?
func NSGetFileTypes(_ pboardTypes: [String]) -> [String]?
