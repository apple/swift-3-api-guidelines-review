
struct OSALanguageFeatures : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SupportsCompiling: OSALanguageFeatures { get }
  static var SupportsGetSource: OSALanguageFeatures { get }
  static var SupportsAECoercion: OSALanguageFeatures { get }
  static var SupportsAESending: OSALanguageFeatures { get }
  static var SupportsRecording: OSALanguageFeatures { get }
  static var SupportsConvenience: OSALanguageFeatures { get }
  static var SupportsDialects: OSALanguageFeatures { get }
  static var SupportsEventHandling: OSALanguageFeatures { get }
}
class OSALanguage : Object {
  class func availableLanguages() -> [OSALanguage]
  /*not inherited*/ init?(forName name: String)
  @available(OSX 10.6, *)
  /*not inherited*/ init?(forScriptDataDescriptor descriptor: AppleEventDescriptor)
  class func defaultLanguage() -> OSALanguage?
  class func setDefaultLanguage(defaultLanguage: OSALanguage)
  init(component: Component)
  @available(OSX 10.6, *)
  func sharedLanguageInstance() -> OSALanguageInstance
  var componentInstance: ComponentInstance { get }
  var name: String? { get }
  var info: String? { get }
  var version: String? { get }
  var type: OSType { get }
  var subType: OSType { get }
  var manufacturer: OSType { get }
  var features: OSALanguageFeatures { get }
  @available(OSX 10.6, *)
  var isThreadSafe: Bool { get }
  init()
}
class OSALanguageInstance : Object {
  init(language: OSALanguage)
  var language: OSALanguage { get }
  var componentInstance: ComponentInstance { get }
  @available(OSX 10.10, *)
  var defaultTarget: AppleEventDescriptor?
  @available(OSX 10.10, *)
  func richTextFrom(descriptor: AppleEventDescriptor) -> AttributedString?
  init()
}
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
  func executeHandlerWithName(name: String, arguments: [AnyObject], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor?
  @NSCopying var richTextSource: AttributedString? { get }
  func richTextFrom(descriptor: AppleEventDescriptor) -> AttributedString?
  func writeTo(url: URL, ofType type: String, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func writeTo(url: URL, ofType type: String, usingStorageOptions storageOptions: OSAStorageOptions = [], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func compiledDataForType(type: String, usingStorageOptions storageOptions: OSAStorageOptions = [], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Data?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
enum OSAScriptState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Running
  case Recording
}
class OSAScriptController : NSController {
  var scriptView: OSAScriptView?
  var resultView: NSTextView?
  @NSCopying var script: OSAScript?
  var language: OSALanguage?
  var scriptState: OSAScriptState { get }
  var isCompiling: Bool { get }
  @IBAction func compileScript(sender: AnyObject?)
  @IBAction func recordScript(sender: AnyObject?)
  @IBAction func runScript(sender: AnyObject?)
  @IBAction func stopScript(sender: AnyObject?)
  init()
  init?(coder: Coder)
}
class OSAScriptView : NSTextView {
  var source: String?
  var usesScriptAssistant: Bool
  var usesTabs: Bool
  var tabWidth: Int
  var wrapsLines: Bool
  var indentsWrappedLines: Bool
  var indentWidth: Int

  /**************************** Initializing ****************************/
  init(frame frameRect: Rect, textContainer container: NSTextContainer?)
  init?(coder: Coder)
  convenience init(frame frameRect: Rect)
  convenience init()
}
