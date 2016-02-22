
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func beginRequest(_ context: NSExtensionContext)
}
