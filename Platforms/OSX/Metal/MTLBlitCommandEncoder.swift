
@available(OSX 10.11, *)
struct MTLBlitOption : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: MTLBlitOption { get }
  static var DepthFromDepthStencil: MTLBlitOption { get }
  static var StencilFromDepthStencil: MTLBlitOption { get }
}
@available(OSX 10.11, *)
protocol MTLBlitCommandEncoder : MTLCommandEncoder {
  @available(OSX 10.11, *)
  func synchronizeResource(_ resource: MTLResource)
  @available(OSX 10.11, *)
  func synchronizeTexture(_ texture: MTLTexture, slice slice: Int, level level: Int)
  func copyFromTexture(_ sourceTexture: MTLTexture, sourceSlice sourceSlice: Int, sourceLevel sourceLevel: Int, sourceOrigin sourceOrigin: MTLOrigin, sourceSize sourceSize: MTLSize, toTexture destinationTexture: MTLTexture, destinationSlice destinationSlice: Int, destinationLevel destinationLevel: Int, destinationOrigin destinationOrigin: MTLOrigin)
  func copyFromBuffer(_ sourceBuffer: MTLBuffer, sourceOffset sourceOffset: Int, sourceBytesPerRow sourceBytesPerRow: Int, sourceBytesPerImage sourceBytesPerImage: Int, sourceSize sourceSize: MTLSize, toTexture destinationTexture: MTLTexture, destinationSlice destinationSlice: Int, destinationLevel destinationLevel: Int, destinationOrigin destinationOrigin: MTLOrigin)
  @available(OSX 10.11, *)
  func copyFromBuffer(_ sourceBuffer: MTLBuffer, sourceOffset sourceOffset: Int, sourceBytesPerRow sourceBytesPerRow: Int, sourceBytesPerImage sourceBytesPerImage: Int, sourceSize sourceSize: MTLSize, toTexture destinationTexture: MTLTexture, destinationSlice destinationSlice: Int, destinationLevel destinationLevel: Int, destinationOrigin destinationOrigin: MTLOrigin, options options: MTLBlitOption)
  func copyFromTexture(_ sourceTexture: MTLTexture, sourceSlice sourceSlice: Int, sourceLevel sourceLevel: Int, sourceOrigin sourceOrigin: MTLOrigin, sourceSize sourceSize: MTLSize, toBuffer destinationBuffer: MTLBuffer, destinationOffset destinationOffset: Int, destinationBytesPerRow destinationBytesPerRow: Int, destinationBytesPerImage destinationBytesPerImage: Int)
  @available(OSX 10.11, *)
  func copyFromTexture(_ sourceTexture: MTLTexture, sourceSlice sourceSlice: Int, sourceLevel sourceLevel: Int, sourceOrigin sourceOrigin: MTLOrigin, sourceSize sourceSize: MTLSize, toBuffer destinationBuffer: MTLBuffer, destinationOffset destinationOffset: Int, destinationBytesPerRow destinationBytesPerRow: Int, destinationBytesPerImage destinationBytesPerImage: Int, options options: MTLBlitOption)
  func generateMipmapsForTexture(_ texture: MTLTexture)
  func fillBuffer(_ buffer: MTLBuffer, range range: NSRange, value value: UInt8)
  func copyFromBuffer(_ sourceBuffer: MTLBuffer, sourceOffset sourceOffset: Int, toBuffer destinationBuffer: MTLBuffer, destinationOffset destinationOffset: Int, size size: Int)
}
