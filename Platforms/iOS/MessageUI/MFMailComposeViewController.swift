
struct MFMailComposeResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MFMailComposeResultCancelled: MFMailComposeResult { get }
var MFMailComposeResultSaved: MFMailComposeResult { get }
var MFMailComposeResultSent: MFMailComposeResult { get }
var MFMailComposeResultFailed: MFMailComposeResult { get }
@available(iOS 3.0, *)
let MFMailComposeErrorDomain: String
struct MFMailComposeErrorCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MFMailComposeErrorCodeSaveFailed: MFMailComposeErrorCode { get }
var MFMailComposeErrorCodeSendFailed: MFMailComposeErrorCode { get }
class MFMailComposeViewController : UINavigationController {
  @available(iOS 3.0, *)
  class func canSendMail() -> Bool
  unowned(unsafe) var mailComposeDelegate: @sil_unmanaged MFMailComposeViewControllerDelegate?
  @available(iOS 3.0, *)
  func setSubject(subject: String)
  @available(iOS 3.0, *)
  func setToRecipients(toRecipients: [String]?)
  @available(iOS 3.0, *)
  func setCcRecipients(ccRecipients: [String]?)
  @available(iOS 3.0, *)
  func setBccRecipients(bccRecipients: [String]?)
  @available(iOS 3.0, *)
  func setMessageBody(body: String, isHTML: Bool)
  @available(iOS 3.0, *)
  func addAttachmentData(attachment: NSData, mimeType: String, fileName filename: String)
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol MFMailComposeViewControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func mailComposeController(controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: NSError?)
}
