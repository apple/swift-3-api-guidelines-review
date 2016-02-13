
@available(watchOS 2.0, *)
class HKDeletedObject : Object, SecureCoding {
  var uuid: UUID { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
