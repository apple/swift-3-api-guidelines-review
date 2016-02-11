
@available(iOS 8.0, *)
protocol MTLDrawable : ObjectProtocol {
  func present()
  func present(atTime presentationTime: CFTimeInterval)
}
