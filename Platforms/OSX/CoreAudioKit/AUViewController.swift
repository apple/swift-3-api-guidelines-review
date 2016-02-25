
@available(OSX 10.11, *)
class AUViewController : NSViewController, NSExtensionRequestHandling {
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(_ completionHandler: (NSViewController?) -> Void)
}
