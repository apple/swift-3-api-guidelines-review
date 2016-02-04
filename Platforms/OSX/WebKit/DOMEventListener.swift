
@available(OSX 10.4, *)
protocol DOMEventListener : ObjectProtocol {
  func handle(event: DOMEvent!)
}
