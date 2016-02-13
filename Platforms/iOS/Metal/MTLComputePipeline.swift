
@available(iOS 8.0, *)
class MTLComputePipelineReflection : Object {
  var arguments: [MTLArgument] { get }
  init()
}
@available(iOS 9.0, *)
class MTLComputePipelineDescriptor : Object, Copying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  func reset()
  init()
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
protocol MTLComputePipelineState : ObjectProtocol {
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
}
