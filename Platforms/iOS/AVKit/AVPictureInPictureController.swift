
@available(iOS 9.0, *)
class AVPictureInPictureController : NSObject {
  class func isPictureInPictureSupported() -> Bool
  class func pictureInPictureButtonStartImageCompatibleWithTraitCollection(_ traitCollection: UITraitCollection?) -> UIImage
  class func pictureInPictureButtonStopImageCompatibleWithTraitCollection(_ traitCollection: UITraitCollection?) -> UIImage
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var pictureInPicturePossible: Bool { get }
  var pictureInPictureActive: Bool { get }
  var pictureInPictureSuspended: Bool { get }
}
protocol AVPictureInPictureControllerDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStartPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStartPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: NSError)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStopPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStopPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
