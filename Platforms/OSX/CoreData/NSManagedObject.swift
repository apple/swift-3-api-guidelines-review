
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
@available(OSX 10.4, *)
class NSManagedObject : NSObject {
  @available(OSX 10.6, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?)
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
  func hasFaultForRelationshipNamed(_ key: String) -> Bool
  @available(OSX 10.11, *)
  func objectIDsForRelationshipNamed(_ key: String) -> [NSManagedObjectID]
  @available(OSX 10.5, *)
  var faultingState: Int { get }
  func willAccessValueForKey(_ key: String?)
  func didAccessValueForKey(_ key: String?)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(OSX 10.6, *)
  func awakeFromSnapshotEvents(_ flags: NSSnapshotEventType)
  @available(OSX 10.6, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(OSX 10.5, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func primitiveValueForKey(_ key: String) -> AnyObject?
  func setPrimitiveValue(_ value: AnyObject?, forKey key: String)
  func committedValuesForKeys(_ keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(OSX 10.7, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  func setObservationInfo(_ inObservationInfo: UnsafeMutablePointer<Void>)
  func observationInfo() -> UnsafeMutablePointer<Void>
}
