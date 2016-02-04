
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
@available(watchOS 2.0, *)
class NSManagedObject : Object {
  @available(watchOS 2.0, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  @available(watchOS 2.0, *)
  var hasChanges: Bool { get }
  @available(watchOS 2.0, *)
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  @available(watchOS 2.0, *)
  func hasFaultForRelationshipNamed(key: String) -> Bool
  @available(watchOS 2.0, *)
  func objectIDsForRelationshipNamed(key: String) -> [NSManagedObjectID]
  @available(watchOS 2.0, *)
  var faultingState: Int { get }
  func willAccessValueForKey(key: String?)
  func didAccessValueForKey(key: String?)
  func willChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  func willChangeValueForKey(inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func didChangeValueForKey(inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(watchOS 2.0, *)
  func awakeFromSnapshotEvents(flags: NSSnapshotEventType)
  @available(watchOS 2.0, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(watchOS 2.0, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  func primitiveValueForKey(key: String) -> AnyObject?
  func setPrimitiveValue(value: AnyObject?, forKey key: String)
  func committedValuesForKeys(keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(watchOS 2.0, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  convenience init()
}
