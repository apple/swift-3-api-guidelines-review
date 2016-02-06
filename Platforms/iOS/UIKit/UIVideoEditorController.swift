
@available(iOS 3.1, *)
class UIVideoEditorController : UINavigationController {
  @available(iOS 3.1, *)
  class func canEditVideoAt(path videoPath: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged protocol<UINavigationControllerDelegate, UIVideoEditorControllerDelegate>?
  var videoPath: String
  var videoMaximumDuration: TimeInterval
  var videoQuality: UIImagePickerControllerQualityType
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UIVideoEditorControllerDelegate : ObjectProtocol {
  @available(iOS 3.1, *)
  optional func videoEditorController(editor: UIVideoEditorController, didSaveEditedVideoToPath editedVideoPath: String)
  @available(iOS 3.1, *)
  optional func videoEditorController(editor: UIVideoEditorController, didFailWithError error: Error)
  @available(iOS 3.1, *)
  optional func videoEditorControllerDidCancel(editor: UIVideoEditorController)
}
