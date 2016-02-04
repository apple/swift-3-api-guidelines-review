
@available(OSX 10.4, *)
class CIContext : NSObject {
  @available(OSX 10.6, *)
  /*not inherited*/ init(CGLContext cglctx: CGLContextObj, pixelFormat: CGLPixelFormatObj, colorSpace: CGColorSpace?, options: [String : AnyObject]?)
  @available(OSX 10.4, *)
  /*not inherited*/ init(CGContext cgctx: CGContext, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  /*not inherited*/ init(options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice)
  @available(OSX 10.11, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  var workingColorSpace: CGColorSpace { get }
  func drawImage(image: CIImage, inRect: CGRect, fromRect: CGRect)
  func createCGImage(image: CIImage, fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  @available(OSX, introduced=10.4, deprecated=10.11)
  func createCGLayerWithSize(size: CGSize, info: CFDictionary?) -> CGLayer
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(OSX 10.6, *)
  func render(image: CIImage, toIOSurface surface: IOSurface, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(OSX 10.11, *)
  func render(image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer)
  @available(OSX 10.11, *)
  func render(image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(OSX 10.11, *)
  func render(image: CIImage, toMTLTexture texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
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
  /*not inherited*/ init(forOfflineGPUAtIndex index: UInt32)
  @available(OSX 10.10, *)
  /*not inherited*/ init(forOfflineGPUAtIndex index: UInt32, colorSpace: CGColorSpace?, options: [String : AnyObject]?, sharedContext: CGLContextObj)
}
