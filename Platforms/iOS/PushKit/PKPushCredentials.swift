
@available(iOS 8.0, *)
class PKPushCredentials : Object {
  var type: String! { get }
  @NSCopying var token: Data! { get }
  init()
}
