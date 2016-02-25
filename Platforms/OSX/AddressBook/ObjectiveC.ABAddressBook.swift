
var ABAddRecordsError: Int { get }
var ABRemoveRecordsError: Int { get }
var ABPropertyValueValidationError: Int { get }
var ABPropertyUnsupportedBySourceError: Int { get }
var ABPropertyReadOnlyError: Int { get }
@available(OSX 10.7, *)
let ABAddressBookErrorDomain: String
@available(OSX 10.7, *)
let ABMultiValueIdentifiersErrorKey: String
class ABAddressBook : NSObject {
  class func shared() -> ABAddressBook!
  func records(matching search: ABSearchElement!) -> [AnyObject]!
  func save() -> Bool
  @available(OSX 10.5, *)
  func saveAndReturnError() throws
  func hasUnsavedChanges() -> Bool
  func me() -> ABPerson!
  func setMe(_ moi: ABPerson!)
  func record(forUniqueId uniqueId: String!) -> ABRecord!
  @available(OSX 10.7, *)
  func add(_ record: ABRecord!, error error: ()) throws
  func add(_ record: ABRecord!) -> Bool
  @available(OSX 10.7, *)
  func remove(_ record: ABRecord!, error error: ()) throws
  func remove(_ record: ABRecord!) -> Bool
  func people() -> [AnyObject]!
  func groups() -> [AnyObject]!
  @available(OSX 10.3, *)
  func recordClass(fromUniqueId uniqueId: String!) -> String!
  @available(OSX 10.3, *)
  func formattedAddress(from address: [NSObject : AnyObject]!) -> NSAttributedString!
  @available(OSX 10.3, *)
  func defaultCountryCode() -> String!
  @available(OSX 10.3, *)
  func defaultNameOrdering() -> Int
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
  init(hasUnsavedChanges hasUnsavedChanges: UInt32, readOnly readOnly: UInt32, importMe importMe: UInt32, needConversion needConversion: UInt32, cleanedUp cleanedUp: UInt32, importTips importTips: UInt32, restoreFromMetaData restoreFromMetaData: UInt32, prefsNeedSync prefsNeedSync: UInt32, waitingForReset waitingForReset: UInt32, enforcesConstraints enforcesConstraints: UInt32, tracksAllSources tracksAllSources: UInt32, _reserved _reserved: UInt32)
}
