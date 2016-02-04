
struct MessageComposeResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MessageComposeResultCancelled: MessageComposeResult { get }
var MessageComposeResultSent: MessageComposeResult { get }
var MessageComposeResultFailed: MessageComposeResult { get }
let MFMessageComposeViewControllerAttachmentURL: String
let MFMessageComposeViewControllerAttachmentAlternateFilename: String
@available(iOS 5.0, *)
let MFMessageComposeViewControllerTextMessageAvailabilityDidChangeNotification: String
@available(iOS 5.0, *)
let MFMessageComposeViewControllerTextMessageAvailabilityKey: String
@available(iOS 4.0, *)
class MFMessageComposeViewController : UINavigationController {
  @available(iOS 4.0, *)
  class func canSendText() -> Bool
  @available(iOS 7.0, *)
  class func canSendSubject() -> Bool
  @available(iOS 7.0, *)
  class func canSendAttachments() -> Bool
  @available(iOS 7.0, *)
  class func isSupportedAttachmentUTI(uti: String) -> Bool
  unowned(unsafe) var messageComposeDelegate: @sil_unmanaged MFMessageComposeViewControllerDelegate?
  @available(iOS 7.0, *)
  func disableUserAttachments()
  var recipients: [String]?
  var body: String?
  var subject: String?
  var attachments: [[Object : AnyObject]]? { get }
  @available(iOS 7.0, *)
  func addAttachmentURL(attachmentURL: URL, withAlternateFilename alternateFilename: String?) -> Bool
  @available(iOS 7.0, *)
  func addAttachmentData(attachmentData: Data, typeIdentifier uti: String, filename: String) -> Bool
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol MFMessageComposeViewControllerDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult)
}
