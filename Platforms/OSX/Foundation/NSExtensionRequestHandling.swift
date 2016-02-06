
protocol ExtensionRequestHandling : ObjectProtocol {
  @available(OSX 10.10, *)
  func beginRequest(context: ExtensionContext)
}
