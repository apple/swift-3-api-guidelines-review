
@available(OSX 10.4, *)
class CIContext : Object {
  @available(OSX 10.6, *)
  /*not inherited*/ init(cglContext cglctx: CGLContextObj, pixelFormat: CGLPixelFormatObj, colorSpace: CGColorSpace?, options: [String : AnyObject]? = [:])
  @available(OSX 10.4, *)
  /*not inherited*/ init(cgContext cgctx: CGContext, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  /*not inherited*/ init(options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice)
  @available(OSX 10.11, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice, options: [String : AnyObject]? = [:])
  @available(OSX 10.11, *)
  var workingColorSpace: CGColorSpace { get }
  func draw(image: CIImage, in inRect: CGRect, from fromRect: CGRect)
  func createCGImage(image: CIImage, from fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  @available(OSX, introduced=10.4, deprecated=10.11)
  func createCGLayer(size: CGSize, info: CFDictionary?) -> CGLayer
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(OSX 10.6, *)
  func render(image: CIImage, to surface: IOSurface, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(OSX 10.11, *)
  func render(image: CIImage, to buffer: CVPixelBuffer)
  @available(OSX 10.11, *)
  func render(image: CIImage, to buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(OSX 10.11, *)
  func render(image: CIImage, to texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  @available(OSX 10.4, *)
  func reclaimResources()
  @available(OSX 10.4, *)
  func clearCaches()
  init()
}
let kCIContextOutputColorSpace: String
let kCIContextWorkingColorSpace: String
@available(OSX 10.4, *)
let kCIContextWorkingFormat: String
@available(OSX 10.11, *)
let kCIContextHighQualityDownsample: String
let kCIContextUseSoftwareRenderer: String
extension CIContext {
  @available(OSX 10.10, *)
  class func offlineGPUCount() -> UInt32
  @available(OSX 10.10, *)
  /*not inherited*/ init(forOfflineGPUAt index: UInt32)
  @available(OSX 10.10, *)
  /*not inherited*/ init(forOfflineGPUAt index: UInt32, colorSpace: CGColorSpace?, options: [String : AnyObject]? = [:], sharedContext: CGLContextObj)
}
