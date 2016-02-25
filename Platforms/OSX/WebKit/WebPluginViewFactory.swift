
let WebPlugInBaseURLKey: String
let WebPlugInAttributesKey: String
let WebPlugInContainerKey: String
let WebPlugInContainingElementKey: String
@available(OSX 10.6, *)
let WebPlugInShouldLoadMainResourceKey: String
protocol WebPlugInViewFactory : NSObjectProtocol {
  @available(OSX 10.0, *)
  static func plugInViewWithArguments(_ arguments: [NSObject : AnyObject]!) -> NSView!
}
