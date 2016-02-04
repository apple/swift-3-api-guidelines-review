
@available(tvOS 5.0, *)
class CIContext : NSObject {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(CGContext cgctx: CGContext, options: [String : AnyObject]?)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(options: [String : AnyObject]?)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(EAGLContext eaglContext: EAGLContext)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(EAGLContext eaglContext: EAGLContext, options: [String : AnyObject]?)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice, options: [String : AnyObject]?)
  @available(tvOS 9.0, *)
  var workingColorSpace: CGColorSpace { get }
  func drawImage(image: CIImage, inRect: CGRect, fromRect: CGRect)
  func createCGImage(image: CIImage, fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(tvOS 5.0, *)
  func render(image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  func render(image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  func render(image: CIImage, toMTLTexture texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  @available(tvOS 5.0, *)
  func inputImageMaximumSize() -> CGSize
  @available(tvOS 5.0, *)
  func outputImageMaximumSize() -> CGSize
  init()
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
