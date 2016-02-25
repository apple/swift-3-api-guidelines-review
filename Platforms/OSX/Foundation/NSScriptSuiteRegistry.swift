
class NSScriptSuiteRegistry : NSObject {
  class func sharedScriptSuiteRegistry() -> NSScriptSuiteRegistry
  class func setSharedScriptSuiteRegistry(_ registry: NSScriptSuiteRegistry)
  func loadSuitesFromBundle(_ bundle: NSBundle)
  func loadSuiteWithDictionary(_ suiteDeclaration: [NSObject : AnyObject], fromBundle bundle: NSBundle)
  func registerClassDescription(_ classDescription: NSScriptClassDescription)
  func registerCommandDescription(_ commandDescription: NSScriptCommandDescription)
  var suiteNames: [String] { get }
  func appleEventCodeForSuite(_ suiteName: String) -> FourCharCode
  func bundleForSuite(_ suiteName: String) -> NSBundle?
  func classDescriptionsInSuite(_ suiteName: String) -> [String : NSScriptClassDescription]?
  func commandDescriptionsInSuite(_ suiteName: String) -> [String : NSScriptCommandDescription]?
  func suiteForAppleEventCode(_ appleEventCode: FourCharCode) -> String?
  func classDescriptionWithAppleEventCode(_ appleEventCode: FourCharCode) -> NSScriptClassDescription?
  func commandDescriptionWithAppleEventClass(_ appleEventClassCode: FourCharCode, andAppleEventCode appleEventIDCode: FourCharCode) -> NSScriptCommandDescription?
  func aeteResource(_ languageName: String) -> NSData?
}
