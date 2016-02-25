
struct NSSnapshotEventType : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var UndoInsertion: NSSnapshotEventType { get }
  static var UndoDeletion: NSSnapshotEventType { get }
  static var UndoUpdate: NSSnapshotEventType { get }
  static var Rollback: NSSnapshotEventType { get }
  static var Refresh: NSSnapshotEventType { get }
  static var MergePolicy: NSSnapshotEventType { get }
}
@available(iOS 3.0, *)
class NSManagedObject : NSObject {
  @available(iOS 3.0, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var inserted: Bool { get }
  var updated: Bool { get }
  var deleted: Bool { get }
  @available(iOS 5.0, *)
  var hasChanges: Bool { get }
  @available(iOS 7.0, *)
  var hasPersistentChangedValues: Bool { get }
  var fault: Bool { get }
  @available(iOS 3.0, *)
  func hasFaultForRelationshipNamed(_ key: String) -> Bool
  @available(iOS 8.3, *)
  func objectIDsForRelationshipNamed(_ key: String) -> [NSManagedObjectID]
  @available(iOS 3.0, *)
  var faultingState: Int { get }
  func willAccessValueForKey(_ key: String?)
  func didAccessValueForKey(_ key: String?)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(iOS 3.0, *)
  func awakeFromSnapshotEvents(_ flags: NSSnapshotEventType)
  @available(iOS 3.0, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(iOS 3.0, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func primitiveValueForKey(_ key: String) -> AnyObject?
  func setPrimitiveValue(_ value: AnyObject?, forKey key: String)
  func committedValuesForKeys(_ keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(iOS 5.0, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
}
