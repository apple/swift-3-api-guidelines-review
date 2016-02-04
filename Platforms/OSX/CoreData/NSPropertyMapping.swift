
@available(OSX 10.5, *)
class NSPropertyMapping : Object {
  var name: String?
  var valueExpression: Expression?
  var userInfo: [Object : AnyObject]?
  init()
}
struct __propertyMappingFlags {
  var _isInUse: UInt32
  var _reservedPropertyMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedPropertyMapping: UInt32)
}
