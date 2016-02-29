
@available(tvOS 3.0, *)
class NSEntityDescription : NSObject, NSCoding, NSCopying, NSFastEnumeration {
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
  var userInfo: [NSObject : AnyObject]?
  var attributesByName: [String : NSAttributeDescription] { get }
  var relationshipsByName: [String : NSRelationshipDescription] { get }
  func relationships(withDestinationEntity entity: NSEntityDescription) -> [NSRelationshipDescription]
  @available(tvOS 3.0, *)
  func isKind(ofEntity entity: NSEntityDescription) -> Bool
  @available(tvOS 3.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(tvOS 3.0, *)
  var versionHashModifier: String?
  @available(tvOS 3.0, *)
  var renamingIdentifier: String?
  @available(tvOS 5.0, *)
  var compoundIndexes: [[AnyObject]]
  @available(tvOS 9.0, *)
  var uniquenessConstraints: [[AnyObject]]
  @available(tvOS 3.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 3.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 3.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  init(_isAbstract _isAbstract: UInt32, _shouldValidateOnSave _shouldValidateOnSave: UInt32, _isImmutable _isImmutable: UInt32, _isFlattened _isFlattened: UInt32, _skipValidation _skipValidation: UInt32, _hasPropertiesIndexedBySpotlight _hasPropertiesIndexedBySpotlight: UInt32, _hasPropertiesStoredInTruthFile _hasPropertiesStoredInTruthFile: UInt32, _rangesAreInDataBlob _rangesAreInDataBlob: UInt32, _hasAttributesWithExternalDataReferences _hasAttributesWithExternalDataReferences: UInt32, _hasNonstandardPrimitiveProperties _hasNonstandardPrimitiveProperties: UInt32, _hasUniqueProperties _hasUniqueProperties: UInt32, _validationUniqueProperties _validationUniqueProperties: UInt32, _reservedEntityDescription _reservedEntityDescription: UInt32)
}
