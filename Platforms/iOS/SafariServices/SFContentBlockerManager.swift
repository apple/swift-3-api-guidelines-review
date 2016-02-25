
@available(iOS 9.0, *)
let SFContentBlockerErrorDomain: String
@available(iOS 9.0, *)
enum SFContentBlockerErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NoExtensionFound
  case NoAttachmentFound
  case LoadingInterrupted
}
@available(iOS 9.0, *)
class SFContentBlockerManager : NSObject {
  class func reloadContentBlockerWithIdentifier(_ identifier: String, completionHandler completionHandler: ((NSError?) -> Void)?)
}
