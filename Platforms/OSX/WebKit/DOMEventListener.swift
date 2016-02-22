
@available(OSX 10.4, *)
protocol DOMEventListener : NSObjectProtocol {
  func handle(event: DOMEvent!)
}
