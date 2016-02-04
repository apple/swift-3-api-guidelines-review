
@available(OSX 10.5, *)
protocol DOMXPathNSResolver : NSObjectProtocol {
  func lookupNamespaceURI(prefix: String!) -> String!
}
