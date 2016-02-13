
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
  func encode(aCoder: Coder)
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
