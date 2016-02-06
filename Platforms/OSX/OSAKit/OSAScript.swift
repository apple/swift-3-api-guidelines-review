
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
  init(rawValue: UInt)
  let rawValue: UInt
  static var Null: OSAStorageOptions { get }
  static var PreventGetSource: OSAStorageOptions { get }
  static var CompileIntoContext: OSAStorageOptions { get }
  static var DontSetScriptLocation: OSAStorageOptions { get }
  static var StayOpenApplet: OSAStorageOptions { get }
  static var ShowStartupScreen: OSAStorageOptions { get }
}
class OSAScript : Object, Copying {
  @available(OSX 10.6, *)
  class func scriptDataDescriptorWithContentsOf(url: URL) -> AppleEventDescriptor?
  init(source: String)
  init(source: String, language: OSALanguage?)
  @available(OSX 10.6, *)
  init(source: String, from url: URL?, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions = [])
  init?(contentsOf url: URL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX 10.6, *)
  init(contentsOf url: URL, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions = []) throws
  @available(OSX 10.6, *)
  init(compiledData data: Data, from url: URL?, usingStorageOptions storageOptions: OSAStorageOptions = []) throws
  @available(OSX 10.6, *)
  init(scriptDataDescriptor data: AppleEventDescriptor, from url: URL?, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions = []) throws
  var source: String { get }
  @NSCopying var url: URL? { get }
  var language: OSALanguage
  @available(OSX 10.6, *)
  var languageInstance: OSALanguageInstance
  var isCompiled: Bool { get }
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor?
  func executeAppleEvent(event: AppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor?
  func executeAndReturnDisplayValue(displayValue: AutoreleasingUnsafeMutablePointer<AttributedString?>, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor?
  func executeHandler(name name: String, arguments: [AnyObject], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor?
  @NSCopying var richTextSource: AttributedString? { get }
  func richTextFrom(descriptor: AppleEventDescriptor) -> AttributedString?
  func writeTo(url: URL, ofType type: String, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func writeTo(url: URL, ofType type: String, usingStorageOptions storageOptions: OSAStorageOptions = [], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func compiledDataFor(type type: String, usingStorageOptions storageOptions: OSAStorageOptions = [], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Data?
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
}
