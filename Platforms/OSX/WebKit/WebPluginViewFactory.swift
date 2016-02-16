
let WebPlugInBaseURLKey: String
let WebPlugInAttributesKey: String
let WebPlugInContainerKey: String
let WebPlugInContainingElementKey: String
@available(OSX 10.6, *)
let WebPlugInShouldLoadMainResourceKey: String
protocol WebPlugInViewFactory : ObjectProtocol {
  @available(OSX 10.0, *)
  static func plugInView(arguments arguments: [Object : AnyObject]!) -> NSView!
}
