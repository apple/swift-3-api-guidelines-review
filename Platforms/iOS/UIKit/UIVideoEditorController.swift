
@available(iOS 3.1, *)
class UIVideoEditorController : UINavigationController {
  @available(iOS 3.1, *)
  class func canEditVideo(atPath videoPath: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged protocol<UINavigationControllerDelegate, UIVideoEditorControllerDelegate>?
  var videoPath: String
  var videoMaximumDuration: NSTimeInterval
  var videoQuality: UIImagePickerControllerQualityType
  @available(iOS 5.0, *)
  init(navigationBarClass navigationBarClass: AnyClass?, toolbarClass toolbarClass: AnyClass?)
  init(rootViewController rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIVideoEditorControllerDelegate : NSObjectProtocol {
  @available(iOS 3.1, *)
  optional func videoEditorController(_ editor: UIVideoEditorController, didSaveEditedVideoToPath editedVideoPath: String)
  @available(iOS 3.1, *)
  optional func videoEditorController(_ editor: UIVideoEditorController, didFailWithError error: NSError)
  @available(iOS 3.1, *)
  optional func videoEditorControllerDidCancel(_ editor: UIVideoEditorController)
}
