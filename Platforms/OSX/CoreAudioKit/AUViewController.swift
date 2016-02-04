
@available(OSX 10.11, *)
class AUViewController : NSViewController, NSExtensionRequestHandling {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(completionHandler: (NSViewController?) -> Void)
}
