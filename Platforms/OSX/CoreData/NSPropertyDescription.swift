
@available(OSX 10.4, *)
class NSPropertyDescription : Object, Coding, Copying {
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription { get }
  var name: String
  var isOptional: Bool
  var isTransient: Bool
  var validationPredicates: [Predicate] { get }
  var validationWarnings: [AnyObject] { get }
  func setValidationPredicates(validationPredicates: [Predicate]?, withValidationWarnings validationWarnings: [String]?)
  var userInfo: [Object : AnyObject]?
  @available(OSX 10.5, *)
  var isIndexed: Bool
  @available(OSX 10.5, *)
  @NSCopying var versionHash: Data { get }
  @available(OSX 10.5, *)
  var versionHashModifier: String?
  @available(OSX 10.6, *)
  var isIndexedBySpotlight: Bool
  @available(OSX 10.6, *)
  var isStoredInExternalRecord: Bool
  @available(OSX 10.6, *)
  var renamingIdentifier: String?
  init()
  @available(OSX 10.4, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copy(zone: Zone = nil) -> AnyObject
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
