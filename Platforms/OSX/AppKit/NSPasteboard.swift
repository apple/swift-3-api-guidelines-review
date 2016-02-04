
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
  class func generalPasteboard() -> NSPasteboard
  /*not inherited*/ init(name: String)
  class func pasteboardWithUniqueName() -> NSPasteboard
  var name: String { get }
  var changeCount: Int { get }
  func releaseGlobally()
  @available(OSX 10.6, *)
  func clearContents() -> Int
  @available(OSX 10.6, *)
  func writeObjects(objects: [NSPasteboardWriting]) -> Bool
  @available(OSX 10.6, *)
  func readObjectsForClasses(classArray: [AnyClass], options: [String : AnyObject]?) -> [AnyObject]?
  @available(OSX 10.6, *)
  var pasteboardItems: [NSPasteboardItem]? { get }
  @available(OSX 10.6, *)
  func indexOfPasteboardItem(pasteboardItem: NSPasteboardItem) -> Int
  @available(OSX 10.6, *)
  func canReadItemWithDataConformingToTypes(types: [String]) -> Bool
  @available(OSX 10.6, *)
  func canReadObjectForClasses(classArray: [AnyClass], options: [String : AnyObject]?) -> Bool
  func declareTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  func addTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  var types: [String]? { get }
  func availableTypeFromArray(types: [String]) -> String?
  func setData(data: NSData?, forType dataType: String) -> Bool
  func setPropertyList(plist: AnyObject, forType dataType: String) -> Bool
  func setString(string: String, forType dataType: String) -> Bool
  func dataForType(dataType: String) -> NSData?
  func propertyListForType(dataType: String) -> AnyObject?
  func stringForType(dataType: String) -> String?
  init()
}
extension NSPasteboard {
  class func typesFilterableTo(type: String) -> [String]
  /*not inherited*/ init(byFilteringFile filename: String)
  /*not inherited*/ init(byFilteringData data: NSData, ofType type: String)
  /*not inherited*/ init(byFilteringTypesInPasteboard pboard: NSPasteboard)
}
extension NSObject {
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
  static var Promised: NSPasteboardWritingOptions { get }
}
protocol NSPasteboardWriting : NSObjectProtocol {
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
@available(OSX 10.6, *)
struct NSPasteboardReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AsData: NSPasteboardReadingOptions { get }
  static var AsString: NSPasteboardReadingOptions { get }
  static var AsPropertyList: NSPasteboardReadingOptions { get }
  static var AsKeyedArchive: NSPasteboardReadingOptions { get }
}
protocol NSPasteboardReading : NSObjectProtocol {
  static func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional static func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSURL : NSPasteboardWriting, NSPasteboardReading {
  /*not inherited*/ init?(fromPasteboard pasteBoard: NSPasteboard)
  func writeToPasteboard(pasteBoard: NSPasteboard)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSString : NSPasteboardWriting, NSPasteboardReading {
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
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
  func writeFileWrapper(wrapper: NSFileWrapper) -> Bool
  func readFileWrapper() -> NSFileWrapper?
}
let NSFileContentsPboardType: String
func NSCreateFilenamePboardType(fileType: String) -> String?
func NSCreateFileContentsPboardType(fileType: String) -> String?
func NSGetFileType(pboardType: String) -> String?
func NSGetFileTypes(pboardTypes: [String]) -> [String]?
