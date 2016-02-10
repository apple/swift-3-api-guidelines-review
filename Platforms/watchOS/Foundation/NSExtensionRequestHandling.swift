
protocol ExtensionRequestHandling : ObjectProtocol {
  @available(watchOS 2.0, *)
  func beginRequest(context: ExtensionContext)
}
