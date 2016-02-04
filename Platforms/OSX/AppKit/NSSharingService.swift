
@available(OSX 10.8, *)
let NSSharingServiceNamePostOnFacebook: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostOnTwitter: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostOnSinaWeibo: String
@available(OSX 10.9, *)
let NSSharingServiceNamePostOnTencentWeibo: String
@available(OSX 10.9, *)
let NSSharingServiceNamePostOnLinkedIn: String
@available(OSX 10.8, *)
let NSSharingServiceNameComposeEmail: String
@available(OSX 10.8, *)
let NSSharingServiceNameComposeMessage: String
@available(OSX 10.8, *)
let NSSharingServiceNameSendViaAirDrop: String
@available(OSX 10.8, *)
let NSSharingServiceNameAddToSafariReadingList: String
@available(OSX 10.8, *)
let NSSharingServiceNameAddToIPhoto: String
@available(OSX 10.8, *)
let NSSharingServiceNameAddToAperture: String
@available(OSX 10.8, *)
let NSSharingServiceNameUseAsTwitterProfileImage: String
@available(OSX 10.9, *)
let NSSharingServiceNameUseAsFacebookProfileImage: String
@available(OSX 10.9, *)
let NSSharingServiceNameUseAsLinkedInProfileImage: String
@available(OSX 10.8, *)
let NSSharingServiceNameUseAsDesktopPicture: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostImageOnFlickr: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostVideoOnVimeo: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostVideoOnYouku: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostVideoOnTudou: String
@available(OSX 10.8, *)
class NSSharingService : Object {
  unowned(unsafe) var delegate: @sil_unmanaged NSSharingServiceDelegate?
  var title: String { get }
  var image: NSImage { get }
  var alternateImage: NSImage? { get }
  @available(OSX 10.9, *)
  var menuItemTitle: String
  @available(OSX 10.9, *)
  var recipients: [String]?
  @available(OSX 10.9, *)
  var subject: String?
  @available(OSX 10.9, *)
  var messageBody: String? { get }
  @available(OSX 10.9, *)
  @NSCopying var permanentLink: URL? { get }
  @available(OSX 10.9, *)
  var accountName: String? { get }
  @available(OSX 10.9, *)
  var attachmentFileURLs: [URL]? { get }
  class func sharingServicesForItems(items: [AnyObject]) -> [NSSharingService]
  /*not inherited*/ init?(named serviceName: String)
  init(title: String, image: NSImage, alternateImage: NSImage?, handler block: () -> Void)
  func canPerformWithItems(items: [AnyObject]?) -> Bool
  func performWithItems(items: [AnyObject])
}
@available(OSX 10.8, *)
enum NSSharingContentScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Item
  case Partial
  case Full
}
protocol NSSharingServiceDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, willShareItems items: [AnyObject])
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, didFailToShareItems items: [AnyObject], error: Error)
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, didShareItems items: [AnyObject])
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, sourceFrameOnScreenForShareItem item: AnyObject) -> Rect
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, transitionImageForShareItem item: AnyObject, contentRect: UnsafeMutablePointer<Rect>) -> NSImage
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, sourceWindowForShareItems items: [AnyObject], sharingContentScope: UnsafeMutablePointer<NSSharingContentScope>) -> NSWindow?
}
@available(OSX 10.8, *)
class NSSharingServicePicker : Object {
  unowned(unsafe) var delegate: @sil_unmanaged NSSharingServicePickerDelegate?
  init(items: [AnyObject])
  func showRelativeTo(rect: Rect, of view: NSView, preferredEdge: RectEdge)
}
protocol NSSharingServicePickerDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, sharingServicesForItems items: [AnyObject], proposedSharingServices proposedServices: [NSSharingService]) -> [NSSharingService]
  @available(OSX 10.8, *)
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, delegateFor sharingService: NSSharingService) -> NSSharingServiceDelegate?
  @available(OSX 10.8, *)
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, didChoose service: NSSharingService?)
}
