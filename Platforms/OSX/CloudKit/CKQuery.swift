
@available(OSX 10.10, *)
class CKQuery : Object, SecureCoding, Copying {
  init(coder aDecoder: Coder)
  init(recordType: String, predicate: Predicate)
  var recordType: String { get }
  @NSCopying var predicate: Predicate { get }
  var sortDescriptors: [SortDescriptor]?
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
