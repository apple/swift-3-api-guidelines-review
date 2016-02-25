
@available(tvOS 9.0, *)
class MPSUnaryImageKernel : MPSKernel {
  var offset: MPSOffset
  var clipRect: MTLRegion
  var edgeMode: MPSImageEdgeMode
  func encodeToCommandBuffer(_ commandBuffer: MTLCommandBuffer, inPlaceTexture texture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator?) -> Bool
  func encodeToCommandBuffer(_ commandBuffer: MTLCommandBuffer, sourceTexture sourceTexture: MTLTexture, destinationTexture destinationTexture: MTLTexture)
  func sourceRegionForDestinationSize(_ destinationSize: MTLSize) -> MPSRegion
}
@available(tvOS 9.0, *)
class MPSBinaryImageKernel : MPSKernel {
  var primaryOffset: MPSOffset
  var secondaryOffset: MPSOffset
  var primaryEdgeMode: MPSImageEdgeMode
  var secondaryEdgeMode: MPSImageEdgeMode
  var clipRect: MTLRegion
  func encodeToCommandBuffer(_ commandBuffer: MTLCommandBuffer, primaryTexture primaryTexture: MTLTexture, inPlaceSecondaryTexture inPlaceSecondaryTexture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator?) -> Bool
  func encodeToCommandBuffer(_ commandBuffer: MTLCommandBuffer, inPlacePrimaryTexture inPlacePrimaryTexture: UnsafeMutablePointer<MTLTexture?>, secondaryTexture secondaryTexture: MTLTexture, fallbackCopyAllocator copyAllocator: MPSCopyAllocator?) -> Bool
  func encodeToCommandBuffer(_ commandBuffer: MTLCommandBuffer, primaryTexture primaryTexture: MTLTexture, secondaryTexture secondaryTexture: MTLTexture, destinationTexture destinationTexture: MTLTexture)
  func primarySourceRegionForDestinationSize(_ destinationSize: MTLSize) -> MPSRegion
  func secondarySourceRegionForDestinationSize(_ destinationSize: MTLSize) -> MPSRegion
}
