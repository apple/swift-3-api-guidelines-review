
@available(watchOS 2.0, *)
class HKDeletedObject : NSObject, NSSecureCoding {
  var uuid: NSUUID { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
