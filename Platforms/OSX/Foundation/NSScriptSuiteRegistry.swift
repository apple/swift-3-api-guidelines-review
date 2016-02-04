
class ScriptSuiteRegistry : Object {
  class func shared() -> ScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: ScriptSuiteRegistry)
  func loadSuitesFrom(bundle: Bundle)
  func loadSuiteWith(suiteDeclaration: [Object : AnyObject], from bundle: Bundle)
  func register(classDescription: ScriptClassDescription)
  func register(commandDescription: ScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeForSuite(suiteName: String) -> FourCharCode
  func bundleForSuite(suiteName: String) -> Bundle?
  func classDescriptionsInSuite(suiteName: String) -> [String : ScriptClassDescription]?
  func commandDescriptionsInSuite(suiteName: String) -> [String : ScriptCommandDescription]?
  func suiteForAppleEventCode(appleEventCode: FourCharCode) -> String?
  func classDescriptionWithAppleEventCode(appleEventCode: FourCharCode) -> ScriptClassDescription?
  func commandDescriptionWithAppleEventClass(appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> ScriptCommandDescription?
  func aeteResource(languageName: String) -> Data?
  init()
}
