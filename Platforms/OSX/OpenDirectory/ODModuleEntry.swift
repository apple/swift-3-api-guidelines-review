
@available(OSX 10.9, *)
class ODModuleEntry : NSObject {
  @available(OSX 10.9, *)
  var mappings: ODMappings!
  @available(OSX 10.9, *)
  var supportedOptions: [AnyObject]! { get }
  @available(OSX 10.9, *)
  var name: String!
  @available(OSX 10.9, *)
  var xpcServiceName: String!
  @available(OSX 10.9, *)
  var uuidString: String!
  @available(OSX 10.9, *)
  convenience init!(name: String!, xpcServiceName: String!)
  @available(OSX 10.9, *)
  func setOption(optionName: String!, value: AnyObject!)
  @available(OSX 10.9, *)
  func option(optionName: String!) -> AnyObject!
  init()
}
