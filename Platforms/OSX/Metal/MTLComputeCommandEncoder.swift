
struct MTLDispatchThreadgroupsIndirectArguments {
  var threadgroupsPerGrid: (UInt32, UInt32, UInt32)
  init()
  init(threadgroupsPerGrid: (UInt32, UInt32, UInt32))
}
@available(OSX 10.11, *)
protocol MTLComputeCommandEncoder : MTLCommandEncoder {
  func setComputePipelineState(state: MTLComputePipelineState)
  @available(OSX 10.11, *)
  func setBytes(bytes: UnsafePointer<Void>, length: Int, atIndex index: Int)
  func setBuffer(buffer: MTLBuffer?, offset: Int, atIndex index: Int)
  @available(OSX 10.11, *)
  func setBufferOffset(offset: Int, atIndex index: Int)
  func setBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setTexture(texture: MTLTexture?, atIndex index: Int)
  func setTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, atIndex index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, atIndex index: Int)
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setThreadgroupMemoryLength(length: Int, atIndex index: Int)
  func dispatchThreadgroups(threadgroupsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  @available(OSX 10.11, *)
  func dispatchThreadgroupsWithIndirectBuffer(indirectBuffer: MTLBuffer, indirectBufferOffset: Int, threadsPerThreadgroup: MTLSize)
}
