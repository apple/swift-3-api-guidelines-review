
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
