
@available(tvOS 8.0, *)
class MTLComputePipelineReflection : Object {
  var arguments: [MTLArgument] { get }
  init()
}
@available(tvOS 9.0, *)
class MTLComputePipelineDescriptor : Object, Copying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  func reset()
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
protocol MTLComputePipelineState : ObjectProtocol {
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
}
