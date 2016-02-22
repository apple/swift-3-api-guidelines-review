
@available(iOS 9.0, *)
class AUViewController : UIViewController, NSExtensionRequestHandling {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewController(completionHandler completionHandler: (UIViewController?) -> Void)
}
