
@available(OSX 10.11, *)
protocol MTLDrawable : ObjectProtocol {
  func present()
  func presentAtTime(presentationTime: CFTimeInterval)
}
