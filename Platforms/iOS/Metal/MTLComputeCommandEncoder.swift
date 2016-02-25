
struct MTLDispatchThreadgroupsIndirectArguments {
  var threadgroupsPerGrid: (UInt32, UInt32, UInt32)
  init()
  init(threadgroupsPerGrid threadgroupsPerGrid: (UInt32, UInt32, UInt32))
}
@available(iOS 8.0, *)
protocol MTLComputeCommandEncoder : MTLCommandEncoder {
  func setComputePipelineState(_ state: MTLComputePipelineState)
  @available(iOS 8.3, *)
  func setBytes(_ bytes: UnsafePointer<Void>, length length: Int, atIndex index: Int)
  func setBuffer(_ buffer: MTLBuffer?, offset offset: Int, atIndex index: Int)
  @available(iOS 8.3, *)
  func setBufferOffset(_ offset: Int, atIndex index: Int)
  func setBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setTexture(_ texture: MTLTexture?, atIndex index: Int)
  func setTextures(_ textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setSamplerState(_ sampler: MTLSamplerState?, atIndex index: Int)
  func setSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setSamplerState(_ sampler: MTLSamplerState?, lodMinClamp lodMinClamp: Float, lodMaxClamp lodMaxClamp: Float, atIndex index: Int)
  func setSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps lodMinClamps: UnsafePointer<Float>, lodMaxClamps lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setThreadgroupMemoryLength(_ length: Int, atIndex index: Int)
  func dispatchThreadgroups(_ threadgroupsPerGrid: MTLSize, threadsPerThreadgroup threadsPerThreadgroup: MTLSize)
  @available(iOS 9.0, *)
  func dispatchThreadgroupsWithIndirectBuffer(_ indirectBuffer: MTLBuffer, indirectBufferOffset indirectBufferOffset: Int, threadsPerThreadgroup threadsPerThreadgroup: MTLSize)
}
