
protocol ExtensionRequestHandling : ObjectProtocol {
  @available(OSX 10.10, *)
  func beginRequestWith(context: ExtensionContext)
}
