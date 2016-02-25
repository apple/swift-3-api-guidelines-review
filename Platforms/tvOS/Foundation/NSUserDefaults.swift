
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standard() -> NSUserDefaults
  class func resetStandardUserDefaults()
  @available(tvOS 7.0, *)
  init?(suiteName suitename: String?)
  func object(forKey defaultName: String) -> AnyObject?
  func setObject(_ value: AnyObject?, forKey defaultName: String)
  func removeObject(forKey defaultName: String)
  func string(forKey defaultName: String) -> String?
  func array(forKey defaultName: String) -> [AnyObject]?
  func dictionary(forKey defaultName: String) -> [String : AnyObject]?
  func data(forKey defaultName: String) -> NSData?
  func stringArray(forKey defaultName: String) -> [String]?
  func integer(forKey defaultName: String) -> Int
  func float(forKey defaultName: String) -> Float
  func double(forKey defaultName: String) -> Double
  func bool(forKey defaultName: String) -> Bool
  @available(tvOS 4.0, *)
  func url(forKey defaultName: String) -> NSURL?
  func setInteger(_ value: Int, forKey defaultName: String)
  func setFloat(_ value: Float, forKey defaultName: String)
  func setDouble(_ value: Double, forKey defaultName: String)
  func setBool(_ value: Bool, forKey defaultName: String)
  @available(tvOS 4.0, *)
  func setURL(_ url: NSURL?, forKey defaultName: String)
  func register(_ registrationDictionary: [String : AnyObject])
  func addSuiteNamed(_ suiteName: String)
  func removeSuiteNamed(_ suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomain(forName domainName: String) -> [String : AnyObject]
  func setVolatileDomain(_ domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomain(forName domainName: String)
  func persistentDomain(forName domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(_ domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomain(forName domainName: String)
  func synchronize() -> Bool
  func objectIsForced(forKey key: String) -> Bool
  func objectIsForced(forKey key: String, inDomain domain: String) -> Bool
}
let NSUserDefaultsDidChangeNotification: String
