
struct MPSImageHistogramInfo {
  var numberOfHistogramEntries: Int
  var histogramForAlpha: ObjCBool
  var minPixelValue: vector_float4
  var maxPixelValue: vector_float4
  init()
  init(numberOfHistogramEntries: Int, histogramForAlpha: ObjCBool, minPixelValue: vector_float4, maxPixelValue: vector_float4)
}
@available(tvOS 9.0, *)
class MPSImageHistogram : MPSKernel {
  var clipRectSource: MTLRegion
  var zeroHistogram: Bool
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
  func histogramSize(forSourceFormat sourceFormat: MTLPixelFormat) -> Int
  convenience init(device: MTLDevice)
  convenience init()
}
@available(tvOS 9.0, *)
class MPSImageHistogramEqualization : MPSUnaryImageKernel {
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTransform(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
  convenience init(device: MTLDevice)
  convenience init()
}
@available(tvOS 9.0, *)
class MPSImageHistogramSpecification : MPSUnaryImageKernel {
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTransform(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, sourceHistogram: MTLBuffer, sourceHistogramOffset: Int, desiredHistogram: MTLBuffer, desiredHistogramOffset: Int)
  convenience init(device: MTLDevice)
  convenience init()
}
