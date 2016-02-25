
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standardUserDefaults() -> NSUserDefaults
  class func resetStandardUserDefaults()
  @available(OSX 10.9, *)
  init?(suiteName suitename: String?)
  func objectForKey(_ defaultName: String) -> AnyObject?
  func setObject(_ value: AnyObject?, forKey defaultName: String)
  func removeObjectForKey(_ defaultName: String)
  func stringForKey(_ defaultName: String) -> String?
  func arrayForKey(_ defaultName: String) -> [AnyObject]?
  func dictionaryForKey(_ defaultName: String) -> [String : AnyObject]?
  func dataForKey(_ defaultName: String) -> NSData?
  func stringArrayForKey(_ defaultName: String) -> [String]?
  func integerForKey(_ defaultName: String) -> Int
  func floatForKey(_ defaultName: String) -> Float
  func doubleForKey(_ defaultName: String) -> Double
  func boolForKey(_ defaultName: String) -> Bool
  @available(OSX 10.6, *)
  func URLForKey(_ defaultName: String) -> NSURL?
  func setInteger(_ value: Int, forKey defaultName: String)
  func setFloat(_ value: Float, forKey defaultName: String)
  func setDouble(_ value: Double, forKey defaultName: String)
  func setBool(_ value: Bool, forKey defaultName: String)
  @available(OSX 10.6, *)
  func setURL(_ url: NSURL?, forKey defaultName: String)
  func registerDefaults(_ registrationDictionary: [String : AnyObject])
  func addSuiteNamed(_ suiteName: String)
  func removeSuiteNamed(_ suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomainForName(_ domainName: String) -> [String : AnyObject]
  func setVolatileDomain(_ domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomainForName(_ domainName: String)
  func persistentDomainForName(_ domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(_ domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomainForName(_ domainName: String)
  func synchronize() -> Bool
  func objectIsForcedForKey(_ key: String) -> Bool
  func objectIsForcedForKey(_ key: String, inDomain domain: String) -> Bool
}
let NSUserDefaultsDidChangeNotification: String
