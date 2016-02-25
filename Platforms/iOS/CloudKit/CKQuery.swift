
@available(iOS 8.0, *)
class CKQuery : NSObject, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  init(recordType recordType: String, predicate predicate: NSPredicate)
  var recordType: String { get }
  @NSCopying var predicate: NSPredicate { get }
  var sortDescriptors: [NSSortDescriptor]?
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
