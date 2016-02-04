
struct NSSnapshotEventType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UndoInsertion: NSSnapshotEventType { get }
  static var UndoDeletion: NSSnapshotEventType { get }
  static var UndoUpdate: NSSnapshotEventType { get }
  static var Rollback: NSSnapshotEventType { get }
  static var Refresh: NSSnapshotEventType { get }
  static var MergePolicy: NSSnapshotEventType { get }
}
@available(OSX 10.4, *)
class NSManagedObject : NSObject {
  @available(OSX 10.6, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var inserted: Bool { get }
  var updated: Bool { get }
  var deleted: Bool { get }
  @available(OSX 10.7, *)
  var hasChanges: Bool { get }
  @available(OSX 10.9, *)
  var hasPersistentChangedValues: Bool { get }
  var fault: Bool { get }
  @available(OSX 10.5, *)
  func hasFaultForRelationshipNamed(key: String) -> Bool
  @available(OSX 10.11, *)
  func objectIDsForRelationshipNamed(key: String) -> [NSManagedObjectID]
  @available(OSX 10.5, *)
  var faultingState: Int { get }
  func willAccessValueForKey(key: String?)
  func didAccessValueForKey(key: String?)
  func willChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  func willChangeValueForKey(inKey: String, withSetMutation inMutationKind: NSKeyValueSetMutationKind, usingObjects inObjects: Set<NSObject>)
  func didChangeValueForKey(inKey: String, withSetMutation inMutationKind: NSKeyValueSetMutationKind, usingObjects inObjects: Set<NSObject>)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(OSX 10.6, *)
  func awakeFromSnapshotEvents(flags: NSSnapshotEventType)
  @available(OSX 10.6, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(OSX 10.5, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  func primitiveValueForKey(key: String) -> AnyObject?
  func setPrimitiveValue(value: AnyObject?, forKey key: String)
  func committedValuesForKeys(keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(OSX 10.7, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  func setObservationInfo(inObservationInfo: UnsafeMutablePointer<Void>)
  func observationInfo() -> UnsafeMutablePointer<Void>
  convenience init()
}
