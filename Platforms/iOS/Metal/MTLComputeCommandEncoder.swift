
struct MTLDispatchThreadgroupsIndirectArguments {
  var threadgroupsPerGrid: (UInt32, UInt32, UInt32)
  init()
  init(threadgroupsPerGrid: (UInt32, UInt32, UInt32))
}
@available(iOS 8.0, *)
protocol MTLComputeCommandEncoder : MTLCommandEncoder {
  func setComputePipelineState(state: MTLComputePipelineState)
  @available(iOS 8.3, *)
  func setBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  @available(iOS 8.3, *)
  func setBufferOffset(offset: Int, at index: Int)
  func setBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setTexture(texture: MTLTexture?, at index: Int)
  func setTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setThreadgroupMemoryLength(length: Int, at index: Int)
  func dispatchThreadgroups(threadgroupsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  @available(iOS 9.0, *)
  func dispatchThreadgroups(withIndirectBuffer indirectBuffer: MTLBuffer, indirectBufferOffset: Int, threadsPerThreadgroup: MTLSize)
}
