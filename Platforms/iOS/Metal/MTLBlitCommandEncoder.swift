
@available(iOS 9.0, *)
struct MTLBlitOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: MTLBlitOption { get }
  static var depthFromDepthStencil: MTLBlitOption { get }
  static var stencilFromDepthStencil: MTLBlitOption { get }
  @available(iOS 9.0, *)
  static var rowLinearPVRTC: MTLBlitOption { get }
}
@available(iOS 8.0, *)
protocol MTLBlitCommandEncoder : MTLCommandEncoder {
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  func copy(from sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  @available(iOS 9.0, *)
  func copy(from sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin, options: MTLBlitOption)
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int)
  @available(iOS 9.0, *)
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int, options: MTLBlitOption)
  func generateMipmaps(for texture: MTLTexture)
  func fill(buffer: MTLBuffer, range: NSRange, value: UInt8)
  func copy(from sourceBuffer: MTLBuffer, sourceOffset: Int, to destinationBuffer: MTLBuffer, destinationOffset: Int, size: Int)
}
