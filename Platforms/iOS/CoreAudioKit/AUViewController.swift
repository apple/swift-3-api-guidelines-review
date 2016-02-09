
@available(iOS 9.0, *)
class AUViewController : UIViewController, ExtensionRequestHandling {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewController(withCompletionHandler completionHandler: (UIViewController?) -> Void)
}
