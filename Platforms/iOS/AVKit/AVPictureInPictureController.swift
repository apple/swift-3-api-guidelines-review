
@available(iOS 9.0, *)
class AVPictureInPictureController : NSObject {
  class func isPictureInPictureSupported() -> Bool
  class func pictureInPictureButtonStartImageCompatibleWithTraitCollection(traitCollection: UITraitCollection?) -> UIImage
  class func pictureInPictureButtonStopImageCompatibleWithTraitCollection(traitCollection: UITraitCollection?) -> UIImage
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var pictureInPicturePossible: Bool { get }
  var pictureInPictureActive: Bool { get }
  var pictureInPictureSuspended: Bool { get }
  convenience init()
}
protocol AVPictureInPictureControllerDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: NSError)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
