
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
class OSALanguage : NSObject {
  class func availableLanguages() -> [OSALanguage]
  /*not inherited*/ init?(forName name: String)
  @available(OSX 10.6, *)
  /*not inherited*/ init?(forScriptDataDescriptor descriptor: NSAppleEventDescriptor)
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
  var threadSafe: Bool { get }
  init()
}
class OSALanguageInstance : NSObject {
  init(language: OSALanguage)
  var language: OSALanguage { get }
  var componentInstance: ComponentInstance { get }
  @available(OSX 10.10, *)
  var defaultTarget: NSAppleEventDescriptor?
  @available(OSX 10.10, *)
  func richTextFromDescriptor(descriptor: NSAppleEventDescriptor) -> NSAttributedString?
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
class OSAScript : NSObject, NSCopying {
  @available(OSX 10.6, *)
  class func scriptDataDescriptorWithContentsOfURL(url: NSURL) -> NSAppleEventDescriptor?
  init(source: String)
  init(source: String, language: OSALanguage?)
  @available(OSX 10.6, *)
  init(source: String, fromURL url: NSURL?, languageInstance instance: OSALanguageInstance?, usingStorageOptions storageOptions: OSAStorageOptions)
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
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  func executeAppleEvent(event: NSAppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  func executeAndReturnDisplayValue(displayValue: AutoreleasingUnsafeMutablePointer<NSAttributedString?>, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  func executeHandlerWithName(name: String, arguments: [AnyObject], error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor?
  @NSCopying var richTextSource: NSAttributedString? { get }
  func richTextFromDescriptor(descriptor: NSAppleEventDescriptor) -> NSAttributedString?
  func writeToURL(url: NSURL, ofType type: String, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func writeToURL(url: NSURL, ofType type: String, usingStorageOptions storageOptions: OSAStorageOptions, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func compiledDataForType(type: String, usingStorageOptions storageOptions: OSAStorageOptions, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSData?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
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
  var compiling: Bool { get }
  @IBAction func compileScript(sender: AnyObject?)
  @IBAction func recordScript(sender: AnyObject?)
  @IBAction func runScript(sender: AnyObject?)
  @IBAction func stopScript(sender: AnyObject?)
  init()
  init?(coder: NSCoder)
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
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  init?(coder: NSCoder)
  convenience init(frame frameRect: NSRect)
  convenience init()
}
