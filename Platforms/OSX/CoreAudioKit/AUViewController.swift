
@available(OSX 10.11, *)
class AUViewController : NSViewController, ExtensionRequestHandling {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewController(withCompletionHandler completionHandler: (NSViewController?) -> Void)
}
