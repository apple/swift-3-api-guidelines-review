
struct MTLDispatchThreadgroupsIndirectArguments {
  var threadgroupsPerGrid: (UInt32, UInt32, UInt32)
  init()
  init(threadgroupsPerGrid: (UInt32, UInt32, UInt32))
}
@available(OSX 10.11, *)
protocol MTLComputeCommandEncoder : MTLCommandEncoder {
  func setComputePipelineState(state: MTLComputePipelineState)
  @available(OSX 10.11, *)
  func setBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  @available(OSX 10.11, *)
  func setBufferOffset(offset: Int, at index: Int)
  func setBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, with range: NSRange)
  func setTexture(texture: MTLTexture?, at index: Int)
  func setTextures(textures: UnsafePointer<MTLTexture?>, with range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, with range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, with range: NSRange)
  func setThreadgroupMemoryLength(length: Int, at index: Int)
  func dispatchThreadgroups(threadgroupsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  @available(OSX 10.11, *)
  func dispatchThreadgroups(indirectBuffer indirectBuffer: MTLBuffer, indirectBufferOffset: Int, threadsPerThreadgroup: MTLSize)
}
