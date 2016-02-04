
@available(iOS 8.0, *)
class WKBackForwardListItem : Object {
  @NSCopying var url: URL { get }
  var title: String? { get }
  @NSCopying var initialURL: URL { get }
  init()
}
