
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
  optional func pictureInPictureControllerWillStartPicture(inPicture pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStartPicture(inPicture pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func picture(pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: Error)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStopPicture(inPicture pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStopPicture(inPicture pictureInPictureController: AVPictureInPictureController)
  @available(iOS 9.0, *)
  optional func picture(pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
