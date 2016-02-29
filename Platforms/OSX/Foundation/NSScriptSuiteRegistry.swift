
class NSScriptSuiteRegistry : NSObject {
  class func shared() -> NSScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(_ registry: NSScriptSuiteRegistry)
  func loadSuites(from bundle: NSBundle)
  func loadSuite(with suiteDeclaration: [NSObject : AnyObject], from bundle: NSBundle)
  func register(_ classDescription: NSScriptClassDescription)
  func register(_ commandDescription: NSScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCode(forSuite suiteName: String) -> FourCharCode
  func bundle(forSuite suiteName: String) -> NSBundle?
  func classDescriptions(inSuite suiteName: String) -> [String : NSScriptClassDescription]?
  func commandDescriptions(inSuite suiteName: String) -> [String : NSScriptCommandDescription]?
  func suite(forAppleEventCode appleEventCode: FourCharCode) -> String?
  func classDescription(withAppleEventCode appleEventCode: FourCharCode) -> NSScriptClassDescription?
  func commandDescription(withAppleEventClass appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> NSScriptCommandDescription?
  func aeteResource(_ languageName: String) -> NSData?
}
