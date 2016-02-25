
@available(watchOS 2.0, *)
class HKDeletedObject : NSObject, NSSecureCoding {
  var UUID: NSUUID { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
