
@available(OSX 10.7, *)
class NSUbiquitousKeyValueStore : NSObject {
  class func defaultStore() -> NSUbiquitousKeyValueStore
  func object(forKey aKey: String) -> AnyObject?
  func setObject(_ anObject: AnyObject?, forKey aKey: String)
  func removeObject(forKey aKey: String)
  func string(forKey aKey: String) -> String?
  func array(forKey aKey: String) -> [AnyObject]?
  func dictionary(forKey aKey: String) -> [String : AnyObject]?
  func data(forKey aKey: String) -> NSData?
  func longLong(forKey aKey: String) -> Int64
  func double(forKey aKey: String) -> Double
  func bool(forKey aKey: String) -> Bool
  func setString(_ aString: String?, forKey aKey: String)
  func setData(_ aData: NSData?, forKey aKey: String)
  func setArray(_ anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(_ aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(_ value: Int64, forKey aKey: String)
  func setDouble(_ value: Double, forKey aKey: String)
  func setBool(_ value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
}
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(OSX 10.7, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(OSX 10.7, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(OSX 10.8, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
