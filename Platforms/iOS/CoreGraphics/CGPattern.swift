
class CGPattern {
}
@available(*, deprecated, renamed="CGPattern")
typealias CGPatternRef = CGPattern
enum CGPatternTiling : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NoDistortion
  case ConstantSpacingMinimalDistortion
  case ConstantSpacing
}
typealias CGPatternDrawPatternCallback = @convention(c) (UnsafeMutablePointer<Void>, CGContext?) -> Void
typealias CGPatternReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPatternCallbacks {
  var version: UInt32
  var drawPattern: CGPatternDrawPatternCallback?
  var releaseInfo: CGPatternReleaseInfoCallback?
  init()
  init(version: UInt32, drawPattern: CGPatternDrawPatternCallback?, releaseInfo: CGPatternReleaseInfoCallback?)
}
@available(iOS 2.0, *)
func CGPatternGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CGPatternCreate(info: UnsafeMutablePointer<Void>, _ bounds: CGRect, _ matrix: CGAffineTransform, _ xStep: CGFloat, _ yStep: CGFloat, _ tiling: CGPatternTiling, _ isColored: Bool, _ callbacks: UnsafePointer<CGPatternCallbacks>) -> CGPattern?
