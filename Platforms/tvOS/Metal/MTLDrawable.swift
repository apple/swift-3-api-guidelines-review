
@available(tvOS 8.0, *)
protocol MTLDrawable : ObjectProtocol {
  func present()
  func presentAtTime(presentationTime: CFTimeInterval)
}
