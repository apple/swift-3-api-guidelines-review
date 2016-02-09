
@available(iOS 9.0, *)
let SFContentBlockerErrorDomain: String
@available(iOS 9.0, *)
enum SFContentBlockerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noExtensionFound
  case noAttachmentFound
  case loadingInterrupted
}
@available(iOS 9.0, *)
class SFContentBlockerManager : Object {
  class func reloadContentBlocker(withIdentifier identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  init()
}
