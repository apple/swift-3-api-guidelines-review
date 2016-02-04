
@available(tvOS 9.0, *)
class MPSUnaryImageKernel : MPSKernel {
  var offset: MPSOffset
  var clipRect: MTLRegion
  var edgeMode: MPSImageEdgeMode
  func encodeToCommandBuffer(commandBuffer: MTLCommandBuffer, inPlaceTexture texture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator?) -> Bool
  func encodeToCommandBuffer(commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, destinationTexture: MTLTexture)
  func sourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion
  init(device: MTLDevice)
  convenience init()
}
@available(tvOS 9.0, *)
class MPSBinaryImageKernel : MPSKernel {
  var primaryOffset: MPSOffset
  var secondaryOffset: MPSOffset
  var primaryEdgeMode: MPSImageEdgeMode
  var secondaryEdgeMode: MPSImageEdgeMode
  var clipRect: MTLRegion
  func encodeToCommandBuffer(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, inPlaceSecondaryTexture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator?) -> Bool
  func encodeToCommandBuffer(commandBuffer: MTLCommandBuffer, inPlacePrimaryTexture: UnsafeMutablePointer<MTLTexture?>, secondaryTexture: MTLTexture, fallbackCopyAllocator copyAllocator: MPSCopyAllocator?) -> Bool
  func encodeToCommandBuffer(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, secondaryTexture: MTLTexture, destinationTexture: MTLTexture)
  func primarySourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion
  func secondarySourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion
  init(device: MTLDevice)
  convenience init()
}
