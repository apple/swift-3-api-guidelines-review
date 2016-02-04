
@available(iOS 9.0, *)
class HKDeletedObject : NSObject, NSSecureCoding {
  var UUID: NSUUID { get }
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
