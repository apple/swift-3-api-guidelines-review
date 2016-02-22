
@available(tvOS 5.0, *)
class CIContext : NSObject {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(cgContext cgctx: CGContext, options: [String : AnyObject]? = [:])
  @available(tvOS 5.0, *)
  /*not inherited*/ init(options: [String : AnyObject]? = [:])
  @available(tvOS 5.0, *)
  /*not inherited*/ init(eaglContext: EAGLContext)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(eaglContext: EAGLContext, options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice, options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  var workingColorSpace: CGColorSpace { get }
  func draw(image: CIImage, in inRect: CGRect, from fromRect: CGRect)
  func createCGImage(image: CIImage, from fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(tvOS 5.0, *)
  func render(image: CIImage, to buffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  func render(image: CIImage, to buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  func render(image: CIImage, to texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
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
