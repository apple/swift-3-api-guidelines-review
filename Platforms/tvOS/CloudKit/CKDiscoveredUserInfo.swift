
@available(tvOS 8.0, *)
class CKDiscoveredUserInfo : Object {
  @NSCopying var userRecordID: CKRecordID? { get }
  var firstName: String? { get }
  var lastName: String? { get }
}
