
enum NSDeleteRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoActionDeleteRule
  case NullifyDeleteRule
  case CascadeDeleteRule
  case DenyDeleteRule
}
@available(OSX 10.4, *)
class NSRelationshipDescription : NSPropertyDescription {
  unowned(unsafe) var destinationEntity: @sil_unmanaged NSEntityDescription?
  unowned(unsafe) var inverseRelationship: @sil_unmanaged NSRelationshipDescription?
  var maxCount: Int
  var minCount: Int
  var deleteRule: NSDeleteRule
  var toMany: Bool { get }
  @available(OSX 10.5, *)
  @NSCopying var versionHash: NSData { get }
  @available(OSX 10.7, *)
  var ordered: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
