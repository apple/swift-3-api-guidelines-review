
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standardUserDefaults() -> NSUserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  @available(tvOS 7.0, *)
  init?(suiteName suitename: String?)
  func objectForKey(defaultName: String) -> AnyObject?
  func setObject(value: AnyObject?, forKey defaultName: String)
  func removeObjectForKey(defaultName: String)
  func stringForKey(defaultName: String) -> String?
  func arrayForKey(defaultName: String) -> [AnyObject]?
  func dictionaryForKey(defaultName: String) -> [String : AnyObject]?
  func dataForKey(defaultName: String) -> NSData?
  func stringArrayForKey(defaultName: String) -> [String]?
  func integerForKey(defaultName: String) -> Int
  func floatForKey(defaultName: String) -> Float
  func doubleForKey(defaultName: String) -> Double
  func boolForKey(defaultName: String) -> Bool
  @available(tvOS 4.0, *)
  func URLForKey(defaultName: String) -> NSURL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  @available(tvOS 4.0, *)
  func setURL(url: NSURL?, forKey defaultName: String)
  func registerDefaults(registrationDictionary: [String : AnyObject])
  func addSuiteNamed(suiteName: String)
  func removeSuiteNamed(suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomainForName(domainName: String) -> [String : AnyObject]
  func setVolatileDomain(domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomainForName(domainName: String)
  func persistentDomainForName(domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomainForName(domainName: String)
  func synchronize() -> Bool
  func objectIsForcedForKey(key: String) -> Bool
  func objectIsForcedForKey(key: String, inDomain domain: String) -> Bool
}
let NSUserDefaultsDidChangeNotification: String
