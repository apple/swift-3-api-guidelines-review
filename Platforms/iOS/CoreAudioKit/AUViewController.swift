
@available(iOS 9.0, *)
class AUViewController : UIViewController, NSExtensionRequestHandling {
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(_ completionHandler: (UIViewController?) -> Void)
}
