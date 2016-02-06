
class ScriptSuiteRegistry : Object {
  class func shared() -> ScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: ScriptSuiteRegistry)
  func loadSuitesFrom(bundle: Bundle)
  func loadSuite(suiteDeclaration: [Object : AnyObject], from bundle: Bundle)
  func register(classDescription: ScriptClassDescription)
  func register(commandDescription: ScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeFor(suite suiteName: String) -> FourCharCode
  func bundleFor(suite suiteName: String) -> Bundle?
  func classDescriptionsIn(suite suiteName: String) -> [String : ScriptClassDescription]?
  func commandDescriptionsIn(suite suiteName: String) -> [String : ScriptCommandDescription]?
  func suiteFor(appleEventCode appleEventCode: FourCharCode) -> String?
  func classDescriptionWith(appleEventCode appleEventCode: FourCharCode) -> ScriptClassDescription?
  func commandDescription(appleEventClass appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> ScriptCommandDescription?
  func aeteResource(languageName: String) -> Data?
  init()
}
