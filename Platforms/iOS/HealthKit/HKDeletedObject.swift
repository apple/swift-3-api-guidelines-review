
@available(iOS 9.0, *)
class HKDeletedObject : NSObject, NSSecureCoding {
  var uuid: NSUUID { get }
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
