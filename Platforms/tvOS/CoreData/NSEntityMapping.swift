
enum NSEntityMappingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case undefinedEntityMappingType
  case customEntityMappingType
  case addEntityMappingType
  case removeEntityMappingType
  case copyEntityMappingType
  case transformEntityMappingType
}
@available(tvOS 3.0, *)
class NSEntityMapping : Object {
  var name: String!
  var mappingType: NSEntityMappingType
  var sourceEntityName: String?
  @NSCopying var sourceEntityVersionHash: Data?
  var destinationEntityName: String?
  @NSCopying var destinationEntityVersionHash: Data?
  var attributeMappings: [NSPropertyMapping]?
  var relationshipMappings: [NSPropertyMapping]?
  var sourceExpression: Expression?
  var userInfo: [Object : AnyObject]?
  var entityMigrationPolicyClassName: String?
  init()
}
struct __entityMappingFlags {
  var _isInUse: UInt32
  var _reservedEntityMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedEntityMapping: UInt32)
}
