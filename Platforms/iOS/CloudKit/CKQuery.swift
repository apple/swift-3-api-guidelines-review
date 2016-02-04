
@available(iOS 8.0, *)
class CKQuery : Object, SecureCoding, Copying {
  init(coder aDecoder: Coder)
  init(recordType: String, predicate: Predicate)
  var recordType: String { get }
  @NSCopying var predicate: Predicate { get }
  var sortDescriptors: [SortDescriptor]?
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
