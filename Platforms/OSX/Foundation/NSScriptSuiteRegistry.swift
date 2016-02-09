
class ScriptSuiteRegistry : Object {
  class func shared() -> ScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: ScriptSuiteRegistry)
  func loadSuites(from bundle: Bundle)
  func loadSuite(withDictionary suiteDeclaration: [Object : AnyObject], from bundle: Bundle)
  func register(classDescription: ScriptClassDescription)
  func register(commandDescription: ScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCode(forSuite suiteName: String) -> FourCharCode
  func bundle(forSuite suiteName: String) -> Bundle?
  func classDescriptions(inSuite suiteName: String) -> [String : ScriptClassDescription]?
  func commandDescriptions(inSuite suiteName: String) -> [String : ScriptCommandDescription]?
  func suite(forAppleEventCode appleEventCode: FourCharCode) -> String?
  func classDescription(withAppleEventCode appleEventCode: FourCharCode) -> ScriptClassDescription?
  func commandDescription(withAppleEventClass appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> ScriptCommandDescription?
  func aeteResource(languageName: String) -> Data?
  init()
}
