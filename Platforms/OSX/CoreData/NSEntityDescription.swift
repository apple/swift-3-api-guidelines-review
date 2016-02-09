
@available(OSX 10.4, *)
class NSEntityDescription : Object, Coding, Copying, FastEnumeration {
  class func entity(forName entityName: String, in context: NSManagedObjectContext) -> NSEntityDescription?
  class func insertNewObjectForEntity(forName entityName: String, in context: NSManagedObjectContext) -> NSManagedObject
  unowned(unsafe) var managedObjectModel: @sil_unmanaged NSManagedObjectModel { get }
  var managedObjectClassName: String!
  var name: String?
  var isAbstract: Bool
  var subentitiesByName: [String : NSEntityDescription] { get }
  var subentities: [NSEntityDescription]
  unowned(unsafe) var superentity: @sil_unmanaged NSEntityDescription? { get }
  var propertiesByName: [String : NSPropertyDescription] { get }
  var properties: [NSPropertyDescription]
  var userInfo: [Object : AnyObject]?
  var attributesByName: [String : NSAttributeDescription] { get }
  var relationshipsByName: [String : NSRelationshipDescription] { get }
  func relationshipsWith(destinationEntity entity: NSEntityDescription) -> [NSRelationshipDescription]
  @available(OSX 10.5, *)
  func isKindOf(entity entity: NSEntityDescription) -> Bool
  @available(OSX 10.5, *)
  @NSCopying var versionHash: Data { get }
  @available(OSX 10.5, *)
  var versionHashModifier: String?
  @available(OSX 10.6, *)
  var renamingIdentifier: String?
  @available(OSX 10.7, *)
  var compoundIndexes: [[AnyObject]]
  @available(OSX 10.11, *)
  var uniquenessConstraints: [[AnyObject]]
  init()
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.4, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
