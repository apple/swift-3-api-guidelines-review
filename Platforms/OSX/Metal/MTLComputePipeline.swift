
@available(OSX 10.11, *)
class MTLComputePipelineReflection : Object {
  var arguments: [MTLArgument] { get }
  init()
}
@available(OSX 10.11, *)
class MTLComputePipelineDescriptor : Object, Copying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  func reset()
  init()
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
protocol MTLComputePipelineState : ObjectProtocol {
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
}
