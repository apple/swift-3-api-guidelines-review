
@available(iOS 5.0, *)
class NSUbiquitousKeyValueStore : NSObject {
  class func defaultStore() -> NSUbiquitousKeyValueStore
  func objectForKey(_ aKey: String) -> AnyObject?
  func setObject(_ anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(_ aKey: String)
  func stringForKey(_ aKey: String) -> String?
  func arrayForKey(_ aKey: String) -> [AnyObject]?
  func dictionaryForKey(_ aKey: String) -> [String : AnyObject]?
  func dataForKey(_ aKey: String) -> NSData?
  func longLongForKey(_ aKey: String) -> Int64
  func doubleForKey(_ aKey: String) -> Double
  func boolForKey(_ aKey: String) -> Bool
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
@available(iOS 5.0, *)
let NSUbiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(iOS 5.0, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(iOS 5.0, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(iOS 5.0, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(iOS 5.0, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(iOS 5.0, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(iOS 6.0, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
