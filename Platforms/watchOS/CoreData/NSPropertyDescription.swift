
@available(watchOS 2.0, *)
class NSPropertyDescription : NSObject, NSCoding, NSCopying {
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription { get }
  var name: String
  var optional: Bool
  var transient: Bool
  var validationPredicates: [NSPredicate] { get }
  var validationWarnings: [AnyObject] { get }
  func setValidationPredicates(validationPredicates: [NSPredicate]?, withValidationWarnings validationWarnings: [String]?)
  var userInfo: [NSObject : AnyObject]?
  @available(watchOS 2.0, *)
  var indexed: Bool
  @available(watchOS 2.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(watchOS 2.0, *)
  var versionHashModifier: String?
  @available(watchOS 2.0, *)
  var indexedBySpotlight: Bool
  @available(watchOS 2.0, *)
  var storedInExternalRecord: Bool
  @available(watchOS 2.0, *)
  var renamingIdentifier: String?
  init()
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
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
