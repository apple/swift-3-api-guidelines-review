
var ABAddRecordsError: Int { get }
var ABRemoveRecordsError: Int { get }
var ABPropertyValueValidationError: Int { get }
var ABPropertyUnsupportedBySourceError: Int { get }
var ABPropertyReadOnlyError: Int { get }
@available(OSX 10.7, *)
let ABAddressBookErrorDomain: String
@available(OSX 10.7, *)
let ABMultiValueIdentifiersErrorKey: String
class ABAddressBook : Object {
  class func shared() -> ABAddressBook!
  func recordsMatching(search: ABSearchElement!) -> [AnyObject]!
  func save() -> Bool
  @available(OSX 10.5, *)
  func saveAndReturnError() throws
  func hasUnsavedChanges() -> Bool
  func me() -> ABPerson!
  func setMe(moi: ABPerson!)
  func recordForUniqueId(uniqueId: String!) -> ABRecord!
  @available(OSX 10.7, *)
  func add(record: ABRecord!, error: ()) throws
  func add(record: ABRecord!) -> Bool
  @available(OSX 10.7, *)
  func remove(record: ABRecord!, error: ()) throws
  func remove(record: ABRecord!) -> Bool
  func people() -> [AnyObject]!
  func groups() -> [AnyObject]!
  @available(OSX 10.3, *)
  func recordClassFromUniqueId(uniqueId: String!) -> String!
  @available(OSX 10.3, *)
  func formattedAddressFrom(address: [Object : AnyObject]!) -> AttributedString!
  @available(OSX 10.3, *)
  func defaultCountryCode() -> String!
  @available(OSX 10.3, *)
  func defaultNameOrdering() -> Int
  init()
}
struct __ABBookflags {
  var hasUnsavedChanges: UInt32
  var readOnly: UInt32
  var importMe: UInt32
  var needConversion: UInt32
  var cleanedUp: UInt32
  var importTips: UInt32
  var restoreFromMetaData: UInt32
  var prefsNeedSync: UInt32
  var waitingForReset: UInt32
  var enforcesConstraints: UInt32
  var tracksAllSources: UInt32
  var _reserved: UInt32
  init()
  init(hasUnsavedChanges: UInt32, readOnly: UInt32, importMe: UInt32, needConversion: UInt32, cleanedUp: UInt32, importTips: UInt32, restoreFromMetaData: UInt32, prefsNeedSync: UInt32, waitingForReset: UInt32, enforcesConstraints: UInt32, tracksAllSources: UInt32, _reserved: UInt32)
}
