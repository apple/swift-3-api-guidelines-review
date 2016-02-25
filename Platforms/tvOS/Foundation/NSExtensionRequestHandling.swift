
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func beginRequestWithExtensionContext(_ context: NSExtensionContext)
}
