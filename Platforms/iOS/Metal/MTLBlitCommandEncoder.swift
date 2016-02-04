
@available(iOS 9.0, *)
struct MTLBlitOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLBlitOption { get }
  static var DepthFromDepthStencil: MTLBlitOption { get }
  static var StencilFromDepthStencil: MTLBlitOption { get }
  @available(iOS 9.0, *)
  static var RowLinearPVRTC: MTLBlitOption { get }
}
@available(iOS 8.0, *)
protocol MTLBlitCommandEncoder : MTLCommandEncoder {
  func copyFromTexture(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, toTexture destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  func copyFromBuffer(sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, toTexture destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  @available(iOS 9.0, *)
  func copyFromBuffer(sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, toTexture destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin, options: MTLBlitOption)
  func copyFromTexture(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, toBuffer destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int)
  @available(iOS 9.0, *)
  func copyFromTexture(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, toBuffer destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int, options: MTLBlitOption)
  func generateMipmapsForTexture(texture: MTLTexture)
  func fillBuffer(buffer: MTLBuffer, range: NSRange, value: UInt8)
  func copyFromBuffer(sourceBuffer: MTLBuffer, sourceOffset: Int, toBuffer destinationBuffer: MTLBuffer, destinationOffset: Int, size: Int)
}
