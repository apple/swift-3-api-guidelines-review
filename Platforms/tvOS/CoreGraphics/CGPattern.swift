
class CGPattern {
}
enum CGPatternTiling : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case noDistortion
  case constantSpacingMinimalDistortion
  case constantSpacing
}
typealias CGPatternDrawPatternCallback = @convention(c) (UnsafeMutablePointer<Void>, CGContext?) -> Void
typealias CGPatternReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPatternCallbacks {
  var version: UInt32
  var drawPattern: CGPatternDrawPatternCallback?
  var releaseInfo: CGPatternReleaseInfoCallback?
  init()
  init(version version: UInt32, drawPattern drawPattern: CGPatternDrawPatternCallback?, releaseInfo releaseInfo: CGPatternReleaseInfoCallback?)
}
@available(tvOS 2.0, *)
func CGPatternGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGPatternCreate(_ info: UnsafeMutablePointer<Void>, _ bounds: CGRect, _ matrix: CGAffineTransform, _ xStep: CGFloat, _ yStep: CGFloat, _ tiling: CGPatternTiling, _ isColored: Bool, _ callbacks: UnsafePointer<CGPatternCallbacks>) -> CGPattern?
