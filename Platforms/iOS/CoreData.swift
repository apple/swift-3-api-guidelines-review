
var NSCoreDataVersionNumber: Double
var NSCoreDataVersionNumber10_4: Double { get }
var NSCoreDataVersionNumber10_4_3: Double { get }
var NSCoreDataVersionNumber10_5: Double { get }
var NSCoreDataVersionNumber10_5_3: Double { get }
var NSCoreDataVersionNumber10_6: Double { get }
var NSCoreDataVersionNumber10_6_2: Double { get }
var NSCoreDataVersionNumber10_6_3: Double { get }
var NSCoreDataVersionNumber10_7: Double { get }
var NSCoreDataVersionNumber10_7_2: Double { get }
var NSCoreDataVersionNumber10_7_3: Double { get }
var NSCoreDataVersionNumber10_7_4: Double { get }
var NSCoreDataVersionNumber10_8: Double { get }
var NSCoreDataVersionNumber10_8_2: Double { get }
var NSCoreDataVersionNumber10_9: Double { get }
var NSCoreDataVersionNumber10_9_2: Double { get }
var NSCoreDataVersionNumber10_9_3: Double { get }
var NSCoreDataVersionNumber10_10: Double { get }
var NSCoreDataVersionNumber10_10_2: Double { get }
var NSCoreDataVersionNumber10_10_3: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_3_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_3_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_3_2: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_2: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_3: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_5_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_5_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_6_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_6_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_7_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_7_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_8_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_8_3: Double { get }
@available(iOS 3.0, *)
let NSDetailedErrorsKey: String
@available(iOS 3.0, *)
let NSValidationObjectErrorKey: String
@available(iOS 3.0, *)
let NSValidationKeyErrorKey: String
@available(iOS 3.0, *)
let NSValidationPredicateErrorKey: String
@available(iOS 3.0, *)
let NSValidationValueErrorKey: String
@available(iOS 3.0, *)
let NSAffectedStoresErrorKey: String
@available(iOS 3.0, *)
let NSAffectedObjectsErrorKey: String
@available(iOS 5.0, *)
let NSPersistentStoreSaveConflictsErrorKey: String
@available(iOS 3.0, *)
let NSSQLiteErrorDomain: String
var NSManagedObjectValidationError: Int { get }
var NSManagedObjectConstraintValidationError: Int { get }
var NSValidationMultipleErrorsError: Int { get }
var NSValidationMissingMandatoryPropertyError: Int { get }
var NSValidationRelationshipLacksMinimumCountError: Int { get }
var NSValidationRelationshipExceedsMaximumCountError: Int { get }
var NSValidationRelationshipDeniedDeleteError: Int { get }
var NSValidationNumberTooLargeError: Int { get }
var NSValidationNumberTooSmallError: Int { get }
var NSValidationDateTooLateError: Int { get }
var NSValidationDateTooSoonError: Int { get }
var NSValidationInvalidDateError: Int { get }
var NSValidationStringTooLongError: Int { get }
var NSValidationStringTooShortError: Int { get }
var NSValidationStringPatternMatchingError: Int { get }
var NSManagedObjectContextLockingError: Int { get }
var NSPersistentStoreCoordinatorLockingError: Int { get }
var NSManagedObjectReferentialIntegrityError: Int { get }
var NSManagedObjectExternalRelationshipError: Int { get }
var NSManagedObjectMergeError: Int { get }
var NSManagedObjectConstraintMergeError: Int { get }
var NSPersistentStoreInvalidTypeError: Int { get }
var NSPersistentStoreTypeMismatchError: Int { get }
var NSPersistentStoreIncompatibleSchemaError: Int { get }
var NSPersistentStoreSaveError: Int { get }
var NSPersistentStoreIncompleteSaveError: Int { get }
var NSPersistentStoreSaveConflictsError: Int { get }
var NSCoreDataError: Int { get }
var NSPersistentStoreOperationError: Int { get }
var NSPersistentStoreOpenError: Int { get }
var NSPersistentStoreTimeoutError: Int { get }
var NSPersistentStoreUnsupportedRequestTypeError: Int { get }
var NSPersistentStoreIncompatibleVersionHashError: Int { get }
var NSMigrationError: Int { get }
var NSMigrationConstraintViolationError: Int { get }
var NSMigrationCancelledError: Int { get }
var NSMigrationMissingSourceModelError: Int { get }
var NSMigrationMissingMappingModelError: Int { get }
var NSMigrationManagerSourceStoreError: Int { get }
var NSMigrationManagerDestinationStoreError: Int { get }
var NSEntityMigrationPolicyError: Int { get }
var NSSQLiteError: Int { get }
var NSInferredMappingModelError: Int { get }
var NSExternalRecordImportError: Int { get }
@available(iOS 3.0, *)
class NSAtomicStore : NSPersistentStore {
  init(persistentStoreCoordinator coordinator: NSPersistentStoreCoordinator?, configurationName: String?, url: NSURL, options: [NSObject : AnyObject]?)
  func load() throws
  func save() throws
  func newCacheNodeFor(managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(node: NSAtomicStoreCacheNode, from managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNodeFor(objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectIDForEntity(entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func newReferenceObjectFor(managedObject: NSManagedObject) -> AnyObject
  func referenceObjectFor(objectID: NSManagedObjectID) -> AnyObject
}
@available(iOS 3.0, *)
class NSAtomicStoreCacheNode : NSObject {
  init(objectID moid: NSManagedObjectID)
  var objectID: NSManagedObjectID { get }
  var propertyCache: NSMutableDictionary?
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  init()
}
enum NSAttributeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UndefinedAttributeType
  case Integer16AttributeType
  case Integer32AttributeType
  case Integer64AttributeType
  case DecimalAttributeType
  case DoubleAttributeType
  case FloatAttributeType
  case StringAttributeType
  case BooleanAttributeType
  case DateAttributeType
  case BinaryDataAttributeType
  @available(iOS 3.0, *)
  case TransformableAttributeType
  @available(iOS 3.0, *)
  case ObjectIDAttributeType
}
@available(iOS 3.0, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: AnyObject?
  @available(iOS 3.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(iOS 3.0, *)
  var valueTransformerName: String?
  @available(iOS 5.0, *)
  var allowsExternalBinaryDataStorage: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct __attributeDescriptionFlags {
  var _hasMaxValueInExtraIvars: UInt32
  var _hasMinValueInExtraIvars: UInt32
  var _storeBinaryDataExternally: UInt32
  var _reservedAttributeDescription: UInt32
  init()
  init(_hasMaxValueInExtraIvars: UInt32, _hasMinValueInExtraIvars: UInt32, _storeBinaryDataExternally: UInt32, _reservedAttributeDescription: UInt32)
}
@available(iOS 9.0, *)
class NSBatchDeleteRequest : NSPersistentStoreRequest {
  init(fetchRequest fetch: NSFetchRequest)
  convenience init(objectIDs objects: [NSManagedObjectID])
  var resultType: NSBatchDeleteRequestResultType
  @NSCopying var fetchRequest: NSFetchRequest { get }
}
@available(iOS 8.0, *)
class NSBatchUpdateRequest : NSPersistentStoreRequest {
  init(entityName: String)
  init(entity: NSEntityDescription)
  var entityName: String { get }
  var entity: NSEntityDescription { get }
  var predicate: NSPredicate?
  var includesSubentities: Bool
  var resultType: NSBatchUpdateRequestResultType
  var propertiesToUpdate: [NSObject : AnyObject]?
  init()
}
struct _requestFlags {
  var includesSubentities: UInt32
  var resultType: UInt32
  var entityIsName: UInt32
  var _RESERVED: UInt32
  init()
  init(includesSubentities: UInt32, resultType: UInt32, entityIsName: UInt32, _RESERVED: UInt32)
}
@available(iOS 3.0, *)
class NSEntityDescription : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func entityForName(entityName: String, `in` context: NSManagedObjectContext) -> NSEntityDescription?
  class func insertNewObjectForEntityForName(entityName: String, `in` context: NSManagedObjectContext) -> NSManagedObject
  unowned(unsafe) var managedObjectModel: @sil_unmanaged NSManagedObjectModel { get }
  var managedObjectClassName: String!
  var name: String?
  var isAbstract: Bool
  var subentitiesByName: [String : NSEntityDescription] { get }
  var subentities: [NSEntityDescription]
  unowned(unsafe) var superentity: @sil_unmanaged NSEntityDescription? { get }
  var propertiesByName: [String : NSPropertyDescription] { get }
  var properties: [NSPropertyDescription]
  var userInfo: [NSObject : AnyObject]?
  var attributesByName: [String : NSAttributeDescription] { get }
  var relationshipsByName: [String : NSRelationshipDescription] { get }
  func relationshipsWithDestinationEntity(entity: NSEntityDescription) -> [NSRelationshipDescription]
  @available(iOS 3.0, *)
  func isKindOfEntity(entity: NSEntityDescription) -> Bool
  @available(iOS 3.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(iOS 3.0, *)
  var versionHashModifier: String?
  @available(iOS 3.0, *)
  var renamingIdentifier: String?
  @available(iOS 5.0, *)
  var compoundIndexes: [[AnyObject]]
  @available(iOS 9.0, *)
  var uniquenessConstraints: [[AnyObject]]
  init()
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 3.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __entityDescriptionFlags {
  var _isAbstract: UInt32
  var _shouldValidateOnSave: UInt32
  var _isImmutable: UInt32
  var _isFlattened: UInt32
  var _skipValidation: UInt32
  var _hasPropertiesIndexedBySpotlight: UInt32
  var _hasPropertiesStoredInTruthFile: UInt32
  var _rangesAreInDataBlob: UInt32
  var _hasAttributesWithExternalDataReferences: UInt32
  var _hasNonstandardPrimitiveProperties: UInt32
  var _hasUniqueProperties: UInt32
  var _validationUniqueProperties: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isAbstract: UInt32, _shouldValidateOnSave: UInt32, _isImmutable: UInt32, _isFlattened: UInt32, _skipValidation: UInt32, _hasPropertiesIndexedBySpotlight: UInt32, _hasPropertiesStoredInTruthFile: UInt32, _rangesAreInDataBlob: UInt32, _hasAttributesWithExternalDataReferences: UInt32, _hasNonstandardPrimitiveProperties: UInt32, _hasUniqueProperties: UInt32, _validationUniqueProperties: UInt32, _reservedEntityDescription: UInt32)
}
enum NSEntityMappingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UndefinedEntityMappingType
  case CustomEntityMappingType
  case AddEntityMappingType
  case RemoveEntityMappingType
  case CopyEntityMappingType
  case TransformEntityMappingType
}
@available(iOS 3.0, *)
class NSEntityMapping : NSObject {
  var name: String!
  var mappingType: NSEntityMappingType
  var sourceEntityName: String?
  @NSCopying var sourceEntityVersionHash: NSData?
  var destinationEntityName: String?
  @NSCopying var destinationEntityVersionHash: NSData?
  var attributeMappings: [NSPropertyMapping]?
  var relationshipMappings: [NSPropertyMapping]?
  var sourceExpression: NSExpression?
  var userInfo: [NSObject : AnyObject]?
  var entityMigrationPolicyClassName: String?
  init()
}
struct __entityMappingFlags {
  var _isInUse: UInt32
  var _reservedEntityMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedEntityMapping: UInt32)
}
@available(iOS 3.0, *)
let NSMigrationManagerKey: String
@available(iOS 3.0, *)
let NSMigrationSourceObjectKey: String
@available(iOS 3.0, *)
let NSMigrationDestinationObjectKey: String
@available(iOS 3.0, *)
let NSMigrationEntityMappingKey: String
@available(iOS 3.0, *)
let NSMigrationPropertyMappingKey: String
@available(iOS 3.0, *)
let NSMigrationEntityPolicyKey: String
@available(iOS 3.0, *)
class NSEntityMigrationPolicy : NSObject {
  func begin(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
@available(iOS 3.0, *)
class NSExpressionDescription : NSPropertyDescription {
  var expression: NSExpression?
  var expressionResultType: NSAttributeType
  init()
  init?(coder aDecoder: NSCoder)
}
struct NSFetchRequestResultType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ManagedObjectResultType: NSFetchRequestResultType { get }
  static var ManagedObjectIDResultType: NSFetchRequestResultType { get }
  @available(iOS 3.0, *)
  static var DictionaryResultType: NSFetchRequestResultType { get }
  @available(iOS 3.0, *)
  static var CountResultType: NSFetchRequestResultType { get }
}
@available(iOS 3.0, *)
class NSFetchRequest : NSPersistentStoreRequest, NSCoding {
  init()
  @available(iOS 4.0, *)
  convenience init(entityName: String)
  var entity: NSEntityDescription?
  @available(iOS 4.0, *)
  var entityName: String? { get }
  var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]?
  var fetchLimit: Int
  var affectedStores: [NSPersistentStore]?
  @available(iOS 3.0, *)
  var resultType: NSFetchRequestResultType
  @available(iOS 3.0, *)
  var includesSubentities: Bool
  @available(iOS 3.0, *)
  var includesPropertyValues: Bool
  @available(iOS 3.0, *)
  var returnsObjectsAsFaults: Bool
  @available(iOS 3.0, *)
  var relationshipKeyPathsForPrefetching: [String]?
  @available(iOS 3.0, *)
  var includesPendingChanges: Bool
  @available(iOS 3.0, *)
  var returnsDistinctResults: Bool
  @available(iOS 3.0, *)
  var propertiesToFetch: [AnyObject]?
  @available(iOS 3.0, *)
  var fetchOffset: Int
  @available(iOS 3.0, *)
  var fetchBatchSize: Int
  @available(iOS 5.0, *)
  var shouldRefreshRefetchedObjects: Bool
  @available(iOS 5.0, *)
  var propertiesToGroupBy: [AnyObject]?
  @available(iOS 5.0, *)
  var havingPredicate: NSPredicate?
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct _fetchRequestFlags {
  var distinctValuesOnly: UInt32
  var includesSubentities: UInt32
  var includesPropertyValues: UInt32
  var resultType: UInt32
  var returnsObjectsAsFaults: UInt32
  var excludePendingChanges: UInt32
  var isInUse: UInt32
  var entityIsName: UInt32
  var refreshesRefetched: UInt32
  var propertiesValidated: UInt32
  var disableCaching: UInt32
  var _RESERVED: UInt32
  init()
  init(distinctValuesOnly: UInt32, includesSubentities: UInt32, includesPropertyValues: UInt32, resultType: UInt32, returnsObjectsAsFaults: UInt32, excludePendingChanges: UInt32, isInUse: UInt32, entityIsName: UInt32, refreshesRefetched: UInt32, propertiesValidated: UInt32, disableCaching: UInt32, _RESERVED: UInt32)
}
let NSFetchRequestExpressionType: NSExpressionType
@available(iOS 3.0, *)
class NSFetchRequestExpression : NSExpression {
  class func expressionForFetch(fetch: NSExpression, context: NSExpression, countOnly countFlag: Bool) -> NSExpression
  var requestExpression: NSExpression { get }
  var contextExpression: NSExpression { get }
  var isCountOnlyRequest: Bool { get }
  init(expressionType type: NSExpressionType)
  init?(coder: NSCoder)
  convenience init()
}
struct _fetchExpressionFlags {
  var isCountOnly: UInt32
  var _RESERVED: UInt32
  init()
  init(isCountOnly: UInt32, _RESERVED: UInt32)
}
@available(iOS 3.0, *)
class NSFetchedPropertyDescription : NSPropertyDescription {
  var fetchRequest: NSFetchRequest?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 3.0, *)
class NSFetchedResultsController : NSObject {
  init(fetchRequest: NSFetchRequest, managedObjectContext context: NSManagedObjectContext, sectionNameKeyPath: String?, cacheName name: String?)
  func performFetch() throws
  var fetchRequest: NSFetchRequest { get }
  var managedObjectContext: NSManagedObjectContext { get }
  var sectionNameKeyPath: String? { get }
  var cacheName: String? { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSFetchedResultsControllerDelegate?
  class func deleteCacheWithName(name: String?)
  var fetchedObjects: [AnyObject]? { get }
  func objectAt(indexPath: NSIndexPath) -> AnyObject
  func indexPathFor(object: AnyObject) -> NSIndexPath?
  func sectionIndexTitleForSectionName(sectionName: String) -> String?
  var sectionIndexTitles: [String] { get }
  var sections: [NSFetchedResultsSectionInfo]? { get }
  func sectionForSectionIndexTitle(title: String, at sectionIndex: Int) -> Int
  init()
}
struct _fetchResultsControllerFlags {
  var _sendObjectChangeNotifications: UInt32
  var _sendSectionChangeNotifications: UInt32
  var _sendDidChangeContentNotifications: UInt32
  var _sendWillChangeContentNotifications: UInt32
  var _sendSectionIndexTitleForSectionName: UInt32
  var _changedResultsSinceLastSave: UInt32
  var _hasMutableFetchedResults: UInt32
  var _hasBatchedArrayResults: UInt32
  var _hasSections: UInt32
  var _usesNonpersistedProperties: UInt32
  var _includesSubentities: UInt32
  var _reservedFlags: UInt32
  init()
  init(_sendObjectChangeNotifications: UInt32, _sendSectionChangeNotifications: UInt32, _sendDidChangeContentNotifications: UInt32, _sendWillChangeContentNotifications: UInt32, _sendSectionIndexTitleForSectionName: UInt32, _changedResultsSinceLastSave: UInt32, _hasMutableFetchedResults: UInt32, _hasBatchedArrayResults: UInt32, _hasSections: UInt32, _usesNonpersistedProperties: UInt32, _includesSubentities: UInt32, _reservedFlags: UInt32)
}
protocol NSFetchedResultsSectionInfo {
  var name: String { get }
  var indexTitle: String? { get }
  var numberOfObjects: Int { get }
  var objects: [AnyObject]? { get }
}
protocol NSFetchedResultsControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func controller(controller: NSFetchedResultsController, didChange anObject: AnyObject, at indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?)
  @available(iOS 3.0, *)
  optional func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, at sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType)
  @available(iOS 3.0, *)
  optional func controllerWillChangeContent(controller: NSFetchedResultsController)
  @available(iOS 3.0, *)
  optional func controllerDidChangeContent(controller: NSFetchedResultsController)
  @available(iOS 4.0, *)
  optional func controller(controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String?
}
@available(iOS 3.0, *)
enum NSFetchedResultsChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Insert
  case Delete
  case Move
  case Update
}
@available(iOS 5.0, *)
class NSIncrementalStore : NSPersistentStore {
  func loadMetadata() throws
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObjectWith(objectID: NSManagedObjectID, withContext context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValueForRelationship(relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, withContext context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStoreAt(storeURL: NSURL) -> AnyObject
  func obtainPermanentIDsFor(array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjectsWithIDs(objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjectsWithIDs(objectIDs: [NSManagedObjectID])
  func newObjectIDForEntity(entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObjectFor(objectID: NSManagedObjectID) -> AnyObject
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url: NSURL, options: [NSObject : AnyObject]?)
}
@available(iOS 5.0, *)
class NSIncrementalStoreNode : NSObject {
  init(objectID: NSManagedObjectID, withValues values: [String : AnyObject], version: UInt64)
  func updateWithValues(values: [String : AnyObject], version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func valueFor(prop: NSPropertyDescription) -> AnyObject?
  init()
}
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
@available(iOS 3.0, *)
class NSManagedObject : NSObject {
  @available(iOS 3.0, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  @available(iOS 5.0, *)
  var hasChanges: Bool { get }
  @available(iOS 7.0, *)
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  @available(iOS 3.0, *)
  func hasFaultForRelationshipNamed(key: String) -> Bool
  @available(iOS 8.3, *)
  func objectIDsForRelationshipNamed(key: String) -> [NSManagedObjectID]
  @available(iOS 3.0, *)
  var faultingState: Int { get }
  func willAccessValueForKey(key: String?)
  func didAccessValueForKey(key: String?)
  func willChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  func willChangeValueForKey(inKey: String, withSetMutation inMutationKind: NSKeyValueSetMutationKind, usingObjects inObjects: Set<NSObject>)
  func didChangeValueForKey(inKey: String, withSetMutation inMutationKind: NSKeyValueSetMutationKind, usingObjects inObjects: Set<NSObject>)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(iOS 3.0, *)
  func awakeFromSnapshotEvents(flags: NSSnapshotEventType)
  @available(iOS 3.0, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(iOS 3.0, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  func primitiveValueForKey(key: String) -> AnyObject?
  func setPrimitiveValue(value: AnyObject?, forKey key: String)
  func committedValuesForKeys(keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(iOS 5.0, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  convenience init()
}
@available(iOS 3.0, *)
let NSManagedObjectContextWillSaveNotification: String
@available(iOS 3.0, *)
let NSManagedObjectContextDidSaveNotification: String
@available(iOS 3.0, *)
let NSManagedObjectContextObjectsDidChangeNotification: String
@available(iOS 3.0, *)
let NSInsertedObjectsKey: String
@available(iOS 3.0, *)
let NSUpdatedObjectsKey: String
@available(iOS 3.0, *)
let NSDeletedObjectsKey: String
@available(iOS 3.0, *)
let NSRefreshedObjectsKey: String
@available(iOS 3.0, *)
let NSInvalidatedObjectsKey: String
@available(iOS 3.0, *)
let NSInvalidatedAllObjectsKey: String
@available(iOS 5.0, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use another NSManagedObjectContextConcurrencyType")
  case ConfinementConcurrencyType
  case PrivateQueueConcurrencyType
  case MainQueueConcurrencyType
}
@available(iOS 3.0, *)
class NSManagedObjectContext : NSObject, NSCoding, NSLocking {
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use -initWithConcurrencyType: instead")
  class func new() -> Self
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use -initWithConcurrencyType: instead")
  convenience init()
  @available(iOS 5.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(iOS 5.0, *)
  func perform(block: () -> Void)
  @available(iOS 5.0, *)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(iOS 5.0, *)
  var parent: NSManagedObjectContext?
  @available(iOS 8.0, *)
  var name: String?
  var undoManager: NSUndoManager?
  var hasChanges: Bool { get }
  @available(iOS 5.0, *)
  var userInfo: NSMutableDictionary { get }
  @available(iOS 5.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegisteredFor(objectID: NSManagedObjectID) -> NSManagedObject?
  func objectWith(objectID: NSManagedObjectID) -> NSManagedObject
  @available(iOS 3.0, *)
  func existingObjectWith(objectID: NSManagedObjectID) throws -> NSManagedObject
  func execute(request: NSFetchRequest) throws -> [AnyObject]
  @available(iOS 3.0, *)
  func countFor(request: NSFetchRequest, error: NSErrorPointer) -> Int
  @available(iOS 8.0, *)
  func execute(request: NSPersistentStoreRequest) throws -> NSPersistentStoreResult
  func insert(object: NSManagedObject)
  func delete(object: NSManagedObject)
  func refreshObject(object: NSManagedObject, mergeChanges flag: Bool)
  func detectConflictsFor(object: NSManagedObject)
  func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func processPendingChanges()
  func assign(object: AnyObject, to store: NSPersistentStore)
  var insertedObjects: Set<NSManagedObject> { get }
  var updatedObjects: Set<NSManagedObject> { get }
  var deletedObjects: Set<NSManagedObject> { get }
  var registeredObjects: Set<NSManagedObject> { get }
  func undo()
  func redo()
  func reset()
  func rollback()
  func save() throws
  @available(iOS 8.3, *)
  func refreshAllObjects()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use a queue style context and -performBlockAndWait: instead")
  func lock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use a queue style context and -performBlockAndWait: instead")
  func unlock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use a queue style context and -performBlock: instead")
  func tryLock() -> Bool
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(iOS 9.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(iOS 9.0, *)
  func shouldHandleInaccessibleFault(fault: NSManagedObject, forObjectID oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: NSTimeInterval
  var mergePolicy: AnyObject
  @available(iOS 3.0, *)
  func obtainPermanentIDsFor(objects: [NSManagedObject]) throws
  @available(iOS 3.0, *)
  func mergeChangesFromContextDidSave(notification: NSNotification)
  @available(iOS 9.0, *)
  class func mergeChangesFromRemoteContextSave(changeNotificationData: [NSObject : AnyObject], into contexts: [NSManagedObjectContext])
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct _managedObjectContextFlags {
  var _registeredForCallback: UInt32
  var _propagatesDeletesAtEndOfEvent: UInt32
  var _exhaustiveValidation: UInt32
  var _processingChanges: UInt32
  var _useCommittedSnapshot: UInt32
  var _registeredUndoTransactionID: UInt32
  var _retainsAllRegisteredObjects: UInt32
  var _savingInProgress: UInt32
  var _wasDisposed: UInt32
  var _unprocessedChangesPending: UInt32
  var _isDirty: UInt32
  var _ignoreUndoCheckpoints: UInt32
  var _propagatingDeletes: UInt32
  var _isNSEditorEditing: UInt32
  var _isMainThreadBlessed: UInt32
  var _isImportContext: UInt32
  var _preflightSaveInProgress: UInt32
  var _disableDiscardEditing: UInt32
  var _isParentStoreContext: UInt32
  var _postSaveNotifications: UInt32
  var _isMerging: UInt32
  var _concurrencyType: UInt32
  var _deleteInaccessible: UInt32
  var _reservedFlags: UInt32
  init()
  init(_registeredForCallback: UInt32, _propagatesDeletesAtEndOfEvent: UInt32, _exhaustiveValidation: UInt32, _processingChanges: UInt32, _useCommittedSnapshot: UInt32, _registeredUndoTransactionID: UInt32, _retainsAllRegisteredObjects: UInt32, _savingInProgress: UInt32, _wasDisposed: UInt32, _unprocessedChangesPending: UInt32, _isDirty: UInt32, _ignoreUndoCheckpoints: UInt32, _propagatingDeletes: UInt32, _isNSEditorEditing: UInt32, _isMainThreadBlessed: UInt32, _isImportContext: UInt32, _preflightSaveInProgress: UInt32, _disableDiscardEditing: UInt32, _isParentStoreContext: UInt32, _postSaveNotifications: UInt32, _isMerging: UInt32, _concurrencyType: UInt32, _deleteInaccessible: UInt32, _reservedFlags: UInt32)
}
@available(iOS 3.0, *)
class NSManagedObjectID : NSObject, NSCopying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var isTemporaryID: Bool { get }
  func uriRepresentation() -> NSURL
  init()
  @available(iOS 3.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 3.0, *)
class NSManagedObjectModel : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func mergedModelFrom(bundles: [NSBundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel]?)
  init()
  convenience init?(contentsOf url: NSURL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entitiesForConfiguration(configuration: String?) -> [NSEntityDescription]?
  func setEntities(entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplateForName(name: String) -> NSFetchRequest?
  func fetchRequestFromTemplateWithName(name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  @available(iOS 3.0, *)
  class func mergedModelFrom(bundles: [NSBundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(iOS 3.0, *)
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(iOS 3.0, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(iOS 3.0, *)
  var versionIdentifiers: Set<NSObject>
  @available(iOS 3.0, *)
  func isConfiguration(configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(iOS 3.0, *)
  var entityVersionHashesByName: [String : NSData] { get }
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 3.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __managedObjectModelFlags {
  var _isInUse: UInt32
  var _isImmutable: UInt32
  var _isOptimizedForEncoding: UInt32
  var _hasEntityWithConstraints: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isInUse: UInt32, _isImmutable: UInt32, _isOptimizedForEncoding: UInt32, _hasEntityWithConstraints: UInt32, _reservedEntityDescription: UInt32)
}
@available(iOS 3.0, *)
class NSMappingModel : NSObject {
  /*not inherited*/ init?(from bundles: [NSBundle]?, forSourceModel sourceModel: NSManagedObjectModel?, destinationModel: NSManagedObjectModel?)
  @available(iOS 3.0, *)
  class func inferredMappingModelForSourceModel(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel) throws -> NSMappingModel
  init?(contentsOf url: NSURL?)
  var entityMappings: [NSEntityMapping]!
  var entityMappingsByName: [String : NSEntityMapping] { get }
  init()
}
struct __modelMappingFlags {
  var _isInUse: UInt32
  var _reservedModelMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedModelMapping: UInt32)
}
@available(iOS 3.0, *)
var NSErrorMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSMergeByPropertyStoreTrumpMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSMergeByPropertyObjectTrumpMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSOverwriteMergePolicy: AnyObject
@available(iOS 3.0, *)
var NSRollbackMergePolicy: AnyObject
enum NSMergePolicyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ErrorMergePolicyType
  case MergeByPropertyStoreTrumpMergePolicyType
  case MergeByPropertyObjectTrumpMergePolicyType
  case OverwriteMergePolicyType
  case RollbackMergePolicyType
}
@available(iOS 5.0, *)
class NSMergeConflict : NSObject {
  var sourceObject: NSManagedObject { get }
  var objectSnapshot: [String : AnyObject]? { get }
  var cachedSnapshot: [String : AnyObject]? { get }
  var persistedSnapshot: [String : AnyObject]? { get }
  var newVersionNumber: Int { get }
  var oldVersionNumber: Int { get }
  init(source srcObject: NSManagedObject, newVersion newvers: Int, oldVersion oldvers: Int, cachedSnapshot cachesnap: [String : AnyObject]?, persistedSnapshot persnap: [String : AnyObject]?)
}
@available(iOS 9.0, *)
class NSConstraintConflict : NSObject {
  var constraint: [String] { get }
  var constraintValues: [String : AnyObject] { get }
  var databaseObject: NSManagedObject? { get }
  var databaseSnapshot: [String : AnyObject]? { get }
  var conflictingObjects: [NSManagedObject] { get }
  var conflictingSnapshots: [[NSObject : AnyObject]] { get }
  init(constraint contraint: [String], databaseObject: NSManagedObject?, databaseSnapshot: [NSObject : AnyObject]?, conflictingObjects: [NSManagedObject], conflictingSnapshots: [AnyObject])
  convenience init()
}
@available(iOS 5.0, *)
class NSMergePolicy : NSObject {
  var mergeType: NSMergePolicyType { get }
  init(merge ty: NSMergePolicyType)
  func resolveConflicts(list: [AnyObject]) throws
  @available(iOS 9.0, *)
  func resolveOptimisticLockingVersionConflicts(list: [NSMergeConflict]) throws
  @available(iOS 9.0, *)
  func resolve(list: [NSConstraintConflict]) throws
}
@available(iOS 3.0, *)
class NSMigrationManager : NSObject {
  init(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel)
  func migrateStoreFrom(sourceURL: NSURL, type sStoreType: String, options sOptions: [NSObject : AnyObject]?, withMappingModel mappings: NSMappingModel?, toDestinationURL dURL: NSURL, destinationType dStoreType: String, destinationOptions dOptions: [NSObject : AnyObject]?) throws
  @available(iOS 5.0, *)
  var usesStoreSpecificMigrationManager: Bool
  func reset()
  var mappingModel: NSMappingModel { get }
  var sourceModel: NSManagedObjectModel { get }
  var destinationModel: NSManagedObjectModel { get }
  var sourceContext: NSManagedObjectContext { get }
  var destinationContext: NSManagedObjectContext { get }
  func sourceEntityFor(mEntity: NSEntityMapping) -> NSEntityDescription?
  func destinationEntityFor(mEntity: NSEntityMapping) -> NSEntityDescription?
  func associateSourceInstance(sourceInstance: NSManagedObject, withDestinationInstance destinationInstance: NSManagedObject, forEntityMapping entityMapping: NSEntityMapping)
  func destinationInstancesForEntityMappingNamed(mappingName: String, sourceInstances: [NSManagedObject]?) -> [NSManagedObject]
  func sourceInstancesForEntityMappingNamed(mappingName: String, destinationInstances: [NSManagedObject]?) -> [NSManagedObject]
  var currentEntityMapping: NSEntityMapping { get }
  var migrationProgress: Float { get }
  var userInfo: [NSObject : AnyObject]?
  func cancelMigrationWith(error: NSError)
  init()
}
struct _migrationManagerFlags {
  var _migrationWasCancelled: UInt32
  var _usesStoreSpecificMigrationManager: UInt32
  var _reservedMigrationManager: UInt32
  init()
  init(_migrationWasCancelled: UInt32, _usesStoreSpecificMigrationManager: UInt32, _reservedMigrationManager: UInt32)
}
@available(iOS 3.0, *)
class NSPersistentStore : NSObject {
  class func metadataForPersistentStoreWith(url: NSURL) throws -> [String : AnyObject]
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreWith url: NSURL) throws
  @available(iOS 3.0, *)
  class func migrationManagerClass() -> AnyClass
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url: NSURL, options: [NSObject : AnyObject]?)
  func loadMetadata() throws
  weak var persistentStoreCoordinator: @sil_weak NSPersistentStoreCoordinator? { get }
  var configurationName: String { get }
  var options: [NSObject : AnyObject]? { get }
  var url: NSURL?
  var identifier: String!
  var type: String { get }
  var isReadOnly: Bool
  var metadata: [String : AnyObject]!
  func didAddTo(coordinator: NSPersistentStoreCoordinator)
  func willRemoveFrom(coordinator: NSPersistentStoreCoordinator?)
}
struct _objectStoreFlags {
  var isReadOnly: UInt32
  var cleanOnRemove: UInt32
  var isMDDirty: UInt32
  var _RESERVED: UInt32
  init()
  init(isReadOnly: UInt32, cleanOnRemove: UInt32, isMDDirty: UInt32, _RESERVED: UInt32)
}
@available(iOS 3.0, *)
let NSSQLiteStoreType: String
@available(iOS 3.0, *)
let NSBinaryStoreType: String
@available(iOS 3.0, *)
let NSInMemoryStoreType: String
@available(iOS 7.0, *)
enum NSPersistentStoreUbiquitousTransitionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AccountAdded
  case AccountRemoved
  case ContentRemoved
  case InitialImportCompleted
}
@available(iOS 3.0, *)
let NSStoreTypeKey: String
@available(iOS 3.0, *)
let NSStoreUUIDKey: String
@available(iOS 7.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(iOS 3.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(iOS 3.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(iOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(iOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(iOS 3.0, *)
let NSSQLitePragmasOption: String
@available(iOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(iOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(iOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(iOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(iOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(iOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(iOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(iOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(iOS 5.0, *)
let NSPersistentStoreUbiquitousContentNameKey: String
@available(iOS 5.0, *)
let NSPersistentStoreUbiquitousContentURLKey: String
@available(iOS 5.0, *)
let NSPersistentStoreDidImportUbiquitousContentChangesNotification: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousTransitionTypeKey: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousPeerTokenOption: String
@available(iOS 7.0, *)
let NSPersistentStoreRemoveUbiquitousMetadataOption: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousContainerIdentifierKey: String
@available(iOS 7.0, *)
let NSPersistentStoreRebuildFromUbiquitousContentOption: String
@available(iOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(iOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(iOS 3.0, *)
class NSPersistentStoreCoordinator : NSObject, NSLocking {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(iOS 8.0, *)
  var name: String?
  func persistentStoreFor(URL: NSURL) -> NSPersistentStore?
  func urlFor(store: NSPersistentStore) -> NSURL
  @available(iOS 3.0, *)
  func setURL(url: NSURL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(storeType: String, configuration: String?, url storeURL: NSURL?, options: [NSObject : AnyObject]?) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataFor(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(url: NSURL) -> NSManagedObjectID?
  @available(iOS 5.0, *)
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(iOS 3.0, *)
  class func registeredStoreTypes() -> [String : NSValue]
  @available(iOS 3.0, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(iOS 7.0, *)
  class func metadataForPersistentStoreOfType(storeType: String, url: NSURL, options: [NSObject : AnyObject]?) throws -> [String : AnyObject]
  @available(iOS 7.0, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, url: NSURL, options: [NSObject : AnyObject]?) throws
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOfType(storeType: String?, url: NSURL) throws -> [String : AnyObject]
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, url: NSURL) throws
  @available(iOS 7.0, *)
  class func removeUbiquitousContentAndPersistentStoreAt(storeURL: NSURL, options: [NSObject : AnyObject]?) throws
  func migratePersistentStore(store: NSPersistentStore, to URL: NSURL, options: [NSObject : AnyObject]?, withType storeType: String) throws -> NSPersistentStore
  @available(iOS 9.0, *)
  func destroyPersistentStoreAt(url: NSURL, withType storeType: String, options: [NSObject : AnyObject]?) throws
  @available(iOS 9.0, *)
  func replacePersistentStoreAt(destinationURL: NSURL, destinationOptions: [NSObject : AnyObject]?, withPersistentStoreFrom sourceURL: NSURL, sourceOptions: [NSObject : AnyObject]?, storeType: String) throws
  @available(iOS 8.0, *)
  func perform(block: () -> Void)
  @available(iOS 8.0, *)
  func performBlockAndWait(block: () -> Void)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlockAndWait: instead")
  func lock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlockAndWait: instead")
  func unlock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlock: instead")
  func tryLock() -> Bool
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case FetchRequestType
  case SaveRequestType
  @available(iOS 8.0, *)
  case BatchUpdateRequestType
  @available(iOS 9.0, *)
  case BatchDeleteRequestType
}
@available(iOS 5.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
  init()
  @available(iOS 5.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult) -> Void
@available(iOS 8.0, *)
class NSAsynchronousFetchRequest : NSPersistentStoreRequest {
  var fetchRequest: NSFetchRequest { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest, completionBlock blk: NSPersistentStoreAsynchronousFetchResultCompletionBlock? = nil)
  init()
}
@available(iOS 8.0, *)
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case StatusOnlyResultType
  case UpdatedObjectIDsResultType
  case UpdatedObjectsCountResultType
}
@available(iOS 9.0, *)
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResultTypeStatusOnly
  case ResultTypeObjectIDs
  case ResultTypeCount
}
@available(iOS 8.0, *)
class NSPersistentStoreResult : NSObject {
  init()
}
@available(iOS 8.0, *)
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: NSError? { get }
  var progress: NSProgress? { get }
  func cancel()
  init()
}
@available(iOS 8.0, *)
class NSAsynchronousFetchResult : NSPersistentStoreAsynchronousResult {
  var fetchRequest: NSAsynchronousFetchRequest { get }
  var finalResult: [AnyObject]? { get }
  init()
}
@available(iOS 8.0, *)
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
  init()
}
@available(iOS 9.0, *)
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
  init()
}
@available(iOS 3.0, *)
class NSPropertyDescription : NSObject, NSCoding, NSCopying {
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription { get }
  var name: String
  var isOptional: Bool
  var isTransient: Bool
  var validationPredicates: [NSPredicate] { get }
  var validationWarnings: [AnyObject] { get }
  func setValidationPredicates(validationPredicates: [NSPredicate]?, withValidationWarnings validationWarnings: [String]?)
  var userInfo: [NSObject : AnyObject]?
  @available(iOS 3.0, *)
  var isIndexed: Bool
  @available(iOS 3.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(iOS 3.0, *)
  var versionHashModifier: String?
  @available(iOS 3.0, *)
  var isIndexedBySpotlight: Bool
  @available(iOS 3.0, *)
  var isStoredInExternalRecord: Bool
  @available(iOS 3.0, *)
  var renamingIdentifier: String?
  init()
  @available(iOS 3.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
struct __propertyDescriptionFlags {
  var _isReadOnly: UInt32
  var _isTransient: UInt32
  var _isOptional: UInt32
  var _isIndexed: UInt32
  var _skipValidation: UInt32
  var _isIndexedBySpotlight: UInt32
  var _isStoredInExternalRecord: UInt32
  var _extraIvarsAreInDataBlob: UInt32
  var _isOrdered: UInt32
  var _reservedPropertyDescription: UInt32
  init()
  init(_isReadOnly: UInt32, _isTransient: UInt32, _isOptional: UInt32, _isIndexed: UInt32, _skipValidation: UInt32, _isIndexedBySpotlight: UInt32, _isStoredInExternalRecord: UInt32, _extraIvarsAreInDataBlob: UInt32, _isOrdered: UInt32, _reservedPropertyDescription: UInt32)
}
@available(iOS 3.0, *)
class NSPropertyMapping : NSObject {
  var name: String?
  var valueExpression: NSExpression?
  var userInfo: [NSObject : AnyObject]?
  init()
}
struct __propertyMappingFlags {
  var _isInUse: UInt32
  var _reservedPropertyMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedPropertyMapping: UInt32)
}
enum NSDeleteRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoActionDeleteRule
  case NullifyDeleteRule
  case CascadeDeleteRule
  case DenyDeleteRule
}
@available(iOS 3.0, *)
class NSRelationshipDescription : NSPropertyDescription {
  unowned(unsafe) var destinationEntity: @sil_unmanaged NSEntityDescription?
  unowned(unsafe) var inverseRelationship: @sil_unmanaged NSRelationshipDescription?
  var maxCount: Int
  var minCount: Int
  var deleteRule: NSDeleteRule
  var isToMany: Bool { get }
  @available(iOS 3.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(iOS 5.0, *)
  var isOrdered: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 5.0, *)
class NSSaveChangesRequest : NSPersistentStoreRequest {
  init(insertedObjects: Set<NSManagedObject>?, updatedObjects: Set<NSManagedObject>?, deletedObjects: Set<NSManagedObject>?, lockedObjects: Set<NSManagedObject>?)
  var insertedObjects: Set<NSManagedObject>? { get }
  var updatedObjects: Set<NSManagedObject>? { get }
  var deletedObjects: Set<NSManagedObject>? { get }
  var lockedObjects: Set<NSManagedObject>? { get }
  init()
}
