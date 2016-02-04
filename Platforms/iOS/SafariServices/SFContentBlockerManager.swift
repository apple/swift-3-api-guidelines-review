
@available(iOS 9.0, *)
let SFContentBlockerErrorDomain: String
@available(iOS 9.0, *)
enum SFContentBlockerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoExtensionFound
  case NoAttachmentFound
  case LoadingInterrupted
}
@available(iOS 9.0, *)
class SFContentBlockerManager : Object {
  class func reloadContentBlockerWithIdentifier(identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  init()
}
