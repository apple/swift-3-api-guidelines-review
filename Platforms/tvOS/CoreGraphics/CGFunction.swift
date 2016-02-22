
class CGFunction {
}
typealias CGFunctionEvaluateCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGFloat>, UnsafeMutablePointer<CGFloat>) -> Void
typealias CGFunctionReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGFunctionCallbacks {
  var version: UInt32
  var evaluate: CGFunctionEvaluateCallback?
  var releaseInfo: CGFunctionReleaseInfoCallback?
  init()
  init(version version: UInt32, evaluate evaluate: CGFunctionEvaluateCallback?, releaseInfo releaseInfo: CGFunctionReleaseInfoCallback?)
}
@available(tvOS 2.0, *)
func CGFunctionGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGFunctionCreate(_ info: UnsafeMutablePointer<Void>, _ domainDimension: Int, _ domain: UnsafePointer<CGFloat>, _ rangeDimension: Int, _ range: UnsafePointer<CGFloat>, _ callbacks: UnsafePointer<CGFunctionCallbacks>) -> CGFunction?
