
@available(tvOS 5.0, *)
class CIContext : NSObject {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(CGContext cgctx: CGContext, options options: [String : AnyObject]?)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(options options: [String : AnyObject]?)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(EAGLContext eaglContext: EAGLContext)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(EAGLContext eaglContext: EAGLContext, options options: [String : AnyObject]?)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice, options options: [String : AnyObject]?)
  @available(tvOS 9.0, *)
  var workingColorSpace: CGColorSpace { get }
  func drawImage(_ image: CIImage, inRect inRect: CGRect, fromRect fromRect: CGRect)
  func createCGImage(_ image: CIImage, fromRect fromRect: CGRect) -> CGImage
  func createCGImage(_ image: CIImage, fromRect fromRect: CGRect, format format: CIFormat, colorSpace colorSpace: CGColorSpace?) -> CGImage
  func render(_ image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes rowBytes: Int, bounds bounds: CGRect, format format: CIFormat, colorSpace colorSpace: CGColorSpace?)
  @available(tvOS 5.0, *)
  func render(_ image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  func render(_ image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer, bounds bounds: CGRect, colorSpace colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  func render(_ image: CIImage, toMTLTexture texture: MTLTexture, commandBuffer commandBuffer: MTLCommandBuffer?, bounds bounds: CGRect, colorSpace colorSpace: CGColorSpace)
  @available(tvOS 5.0, *)
  func inputImageMaximumSize() -> CGSize
  @available(tvOS 5.0, *)
  func outputImageMaximumSize() -> CGSize
}
let kCIContextOutputColorSpace: String
let kCIContextWorkingColorSpace: String
@available(tvOS 8.0, *)
let kCIContextWorkingFormat: String
@available(tvOS 9.0, *)
let kCIContextHighQualityDownsample: String
let kCIContextUseSoftwareRenderer: String
@available(tvOS 8.0, *)
let kCIContextPriorityRequestLow: String
extension CIContext {
}
