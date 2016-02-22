
@available(tvOS 8.0, *)
protocol MTLBuffer : MTLResource {
  var length: Int { get }
  func contents() -> UnsafeMutablePointer<Void>
  @available(tvOS 8.0, *)
  func newTexture(with descriptor: MTLTextureDescriptor, offset offset: Int, bytesPerRow bytesPerRow: Int) -> MTLTexture
}
