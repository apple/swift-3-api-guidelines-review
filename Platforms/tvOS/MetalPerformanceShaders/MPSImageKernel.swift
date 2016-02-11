
@available(tvOS 9.0, *)
class MPSUnaryImageKernel : MPSKernel {
  var offset: MPSOffset
  var clipRect: MTLRegion
  var edgeMode: MPSImageEdgeMode
  func encode(to commandBuffer: MTLCommandBuffer, inPlace texture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, destinationTexture: MTLTexture)
  func sourceRegion(forDestinationSize destinationSize: MTLSize) -> MPSRegion
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
  func encode(to commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, inPlaceSecondaryTexture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encode(to commandBuffer: MTLCommandBuffer, inPlacePrimaryTexture: UnsafeMutablePointer<MTLTexture?>, secondaryTexture: MTLTexture, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encode(to commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, secondaryTexture: MTLTexture, destinationTexture: MTLTexture)
  func primarySourceRegion(forDestinationSize destinationSize: MTLSize) -> MPSRegion
  func secondarySourceRegion(forDestinationSize destinationSize: MTLSize) -> MPSRegion
  init(device: MTLDevice)
  convenience init()
}
