
@available(iOS 7.0, *)
class SSReadingList : Object {
  class func defaultReadingList() -> SSReadingList?
  class func supportsURL(URL: URL) -> Bool
  @available(iOS 7.0, *)
  func addItem(URL: URL, title: String?, previewText: String?) throws
}
@available(iOS 7.0, *)
let SSReadingListErrorDomain: String
@available(iOS 7.0, *)
enum SSReadingListErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case urlSchemeNotAllowed
}
