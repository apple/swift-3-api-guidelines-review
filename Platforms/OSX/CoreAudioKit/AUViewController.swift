
@available(OSX 10.11, *)
class AUViewController : NSViewController, NSExtensionRequestHandling {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder coder: NSCoder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewController(completionHandler completionHandler: (NSViewController?) -> Void)
}
