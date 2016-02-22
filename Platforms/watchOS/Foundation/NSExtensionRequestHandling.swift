
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(watchOS 2.0, *)
  func beginRequest(_ context: NSExtensionContext)
}
