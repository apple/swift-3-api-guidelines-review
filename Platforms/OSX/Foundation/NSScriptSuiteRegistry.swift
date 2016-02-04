
class NSScriptSuiteRegistry : NSObject {
  class func sharedScriptSuiteRegistry() -> NSScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(registry: NSScriptSuiteRegistry)
  func loadSuitesFromBundle(bundle: NSBundle)
  func loadSuiteWithDictionary(suiteDeclaration: [NSObject : AnyObject], fromBundle bundle: NSBundle)
  func registerClassDescription(classDescription: NSScriptClassDescription)
  func registerCommandDescription(commandDescription: NSScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeForSuite(suiteName: String) -> FourCharCode
  func bundleForSuite(suiteName: String) -> NSBundle?
  func classDescriptionsInSuite(suiteName: String) -> [String : NSScriptClassDescription]?
  func commandDescriptionsInSuite(suiteName: String) -> [String : NSScriptCommandDescription]?
  func suiteForAppleEventCode(appleEventCode: FourCharCode) -> String?
  func classDescriptionWithAppleEventCode(appleEventCode: FourCharCode) -> NSScriptClassDescription?
  func commandDescriptionWithAppleEventClass(appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> NSScriptCommandDescription?
  func aeteResource(languageName: String) -> NSData?
  init()
}
