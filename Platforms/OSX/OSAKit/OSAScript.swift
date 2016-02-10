
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
  static var null: OSAStorageOptions { get }
  static var preventGetSource: OSAStorageOptions { get }
  static var compileIntoContext: OSAStorageOptions { get }
  static var dontSetScriptLocation: OSAStorageOptions { get }
  static var stayOpenApplet: OSAStorageOptions { get }
  static var showStartupScreen: OSAStorageOptions { get }
}
class OSAScript : Object, Copying {
  @available(OSX 10.6, *)
  class func scriptDataDescriptorWithContents(of url: URL) -> AppleEventDescriptor?
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
  func richText(from descriptor: AppleEventDescriptor) -> AttributedString?
  func write(to url: URL, ofType type: String, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func write(to url: URL, ofType type: String, usingStorageOptions storageOptions: OSAStorageOptions = [], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func compiledData(forType type: String, usingStorageOptions storageOptions: OSAStorageOptions = [], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Data?
  init()
  func copy(withZone zone: Zone = nil) -> AnyObject
}
