
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(OSX 10.10, *)
  func beginRequestWithExtensionContext(_ context: NSExtensionContext)
}
