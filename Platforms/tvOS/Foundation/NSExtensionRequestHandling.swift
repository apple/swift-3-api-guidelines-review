
protocol ExtensionRequestHandling : ObjectProtocol {
  @available(tvOS 8.0, *)
  func beginRequest(with context: ExtensionContext)
}
