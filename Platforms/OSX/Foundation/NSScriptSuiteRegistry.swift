
class NSScriptSuiteRegistry : NSObject {
  class func shared() -> NSScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: NSScriptSuiteRegistry)
  func loadSuites(from bundle: NSBundle)
  func loadSuite(suiteDeclaration: [NSObject : AnyObject], from bundle: NSBundle)
  func register(classDescription: NSScriptClassDescription)
  func register(commandDescription: NSScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCode(forSuite suiteName: String) -> FourCharCode
  func bundle(forSuite suiteName: String) -> NSBundle?
  func classDescriptions(inSuite suiteName: String) -> [String : NSScriptClassDescription]?
  func commandDescriptions(inSuite suiteName: String) -> [String : NSScriptCommandDescription]?
  func suite(forAppleEventCode appleEventCode: FourCharCode) -> String?
  func classDescription(withAppleEventCode appleEventCode: FourCharCode) -> NSScriptClassDescription?
  func commandDescription(appleEventClass appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> NSScriptCommandDescription?
  func aeteResource(languageName: String) -> NSData?
  init()
}
