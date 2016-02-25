
let OSAScriptErrorMessageKey: String
let OSAScriptErrorBriefMessageKey: String
let OSAScriptErrorNumberKey: String
let OSAScriptErrorPartialResultKey: String
let OSAScriptErrorOffendingObjectKey: String
let OSAScriptErrorExpectedTypeKey: String
let OSAScriptErrorAppAddressKey: String
let OSAScriptErrorAppNameKey: String
let OSAScriptErrorRangeKey: String
let OSAScriptErrorMessage: String
let OSAScriptErrorNumber: String
let OSAScriptErrorAppName: String
let OSAScriptErrorBriefMessage: String
let OSAScriptErrorRange: String
let OSAStorageScriptType: String
let OSAStorageScriptBundleType: String
let OSAStorageApplicationType: String
let OSAStorageApplicationBundleType: String
let OSAStorageTextType: String
struct OSAStorageOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Null: OSAStorageOptions { get }
  static var PreventGetSource: OSAStorageOptions { get }
  static var CompileIntoContext: OSAStorageOptions { get }
  static var DontSetScriptLocation: OSAStorageOptions { get }
  static var StayOpenApplet: OSAStorageOptions { get }
  static var ShowStartupScreen: OSAStorageOptions { get }
}
class OSAScript : NSObject, NSCopying {
  @available(OSX 10.6, *)
  class func scriptDataDescriptorWithContentsOfURL(_ url: NSURL) -> NSAppleEventDescriptor?
  init(source source: String)
  init(source source: String, language language: OSALanguage?)
  @available(OSX 10.6, *)
  init(source source: String, fromURL url: NSURL?, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions)
  init?(contentsOfURL url: NSURL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX 10.6, *)
  init(contentsOfURL url: NSURL, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions) throws
  @available(OSX 10.6, *)
  init(compiledData data: NSData, fromURL url: NSURL?, usingStorageOptions storageOptions: OSAStorageOptions) throws
  @available(OSX 10.6, *)
  init(scriptDataDescriptor data: NSAppleEventDescriptor, fromURL url: NSURL?, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions) throws
  var source: String { get }
  @NSCopying var url: NSURL? { get }
  var language: OSALanguage
  @available(OSX 10.6, *)
  var languageInstance: OSALanguageInstance
  var compiled: Bool { get }
  func compileAndReturnError(_ errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(_ errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  func executeAppleEvent(_ event: NSAppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  func executeAndReturnDisplayValue(_ displayValue: AutoreleasingUnsafeMutablePointer<NSAttributedString?>, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  func executeHandlerWithName(_ name: String, arguments arguments: [AnyObject], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  @NSCopying var richTextSource: NSAttributedString? { get }
  func richTextFromDescriptor(_ descriptor: NSAppleEventDescriptor) -> NSAttributedString?
  func writeToURL(_ url: NSURL, ofType type: String, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func writeToURL(_ url: NSURL, ofType type: String, usingStorageOptions storageOptions: OSAStorageOptions, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func compiledDataForType(_ type: String, usingStorageOptions storageOptions: OSAStorageOptions, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSData?
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
