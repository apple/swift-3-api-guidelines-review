
@available(OSX 10.5, *)
protocol DOMXPathNSResolver : ObjectProtocol {
  func lookupNamespaceURI(prefix: String!) -> String!
}
