
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(iOS 8.0, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
