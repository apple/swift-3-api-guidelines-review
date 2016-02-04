
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
