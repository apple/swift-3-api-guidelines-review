
extension CIImage {
  @available(tvOS 9.0, *)
  init(imageProvider p: AnyObject, size width: Int, _ height: Int, format f: CIFormat, colorSpace cs: CGColorSpace?, options: [String : AnyObject]? = [:])
}
extension Object {
  class func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
  func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
}
@available(tvOS 9.0, *)
let kCIImageProviderTileSize: String
@available(tvOS 9.0, *)
let kCIImageProviderUserInfo: String
