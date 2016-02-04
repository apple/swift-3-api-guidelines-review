
@available(iOS 9.0, *)
class AVPictureInPictureController : Object {
  class func isPictureInPictureSupported() -> Bool
  class func pictureInPictureButtonStartImageCompatibleWith(traitCollection: UITraitCollection?) -> UIImage
  class func pictureInPictureButtonStopImageCompatibleWith(traitCollection: UITraitCollection?) -> UIImage
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var isPictureInPicturePossible: Bool { get }
  var isPictureInPictureActive: Bool { get }
  var isPictureInPictureSuspended: Bool { get }
  convenience init()
}
protocol AVPictureInPictureControllerDelegate : ObjectProtocol {
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: Error)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
