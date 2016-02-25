
@available(OSX 10.4, *)
protocol DOMEventListener : NSObjectProtocol {
  func handleEvent(_ event: DOMEvent!)
}
