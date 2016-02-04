
@available(OSX 10.4, *)
protocol DOMEventTarget : ObjectProtocol, Copying {
  @available(OSX 10.5, *)
  func addEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(OSX 10.5, *)
  func removeEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  func dispatchEvent(event: DOMEvent!) -> Bool
}
