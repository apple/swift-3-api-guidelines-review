
@available(iOS 5.0, *)
class UbiquitousKeyValueStore : Object {
  class func defaultStore() -> UbiquitousKeyValueStore
  func object(forKey aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObject(forKey aKey: String)
  func string(forKey aKey: String) -> String?
  func array(forKey aKey: String) -> [AnyObject]?
  func dictionary(forKey aKey: String) -> [String : AnyObject]?
  func data(forKey aKey: String) -> Data?
  func longLong(forKey aKey: String) -> Int64
  func double(forKey aKey: String) -> Double
  func bool(forKey aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: Data?, forKey aKey: String)
  func setArray(anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(value: Int64, forKey aKey: String)
  func setDouble(value: Double, forKey aKey: String)
  func setBool(value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
  init()
}
@available(iOS 5.0, *)
let ubiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(iOS 5.0, *)
let ubiquitousKeyValueStoreChangeReasonKey: String
@available(iOS 5.0, *)
let ubiquitousKeyValueStoreChangedKeysKey: String
@available(iOS 5.0, *)
var ubiquitousKeyValueStoreServerChange: Int { get }
@available(iOS 5.0, *)
var ubiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(iOS 5.0, *)
var ubiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(iOS 6.0, *)
var ubiquitousKeyValueStoreAccountChange: Int { get }
