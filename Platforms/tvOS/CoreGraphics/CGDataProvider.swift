
class CGDataProvider {
}
typealias CGDataProviderGetBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Int
typealias CGDataProviderSkipForwardCallback = @convention(c) (UnsafeMutablePointer<Void>, off_t) -> off_t
typealias CGDataProviderRewindCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGDataProviderReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataProviderSequentialCallbacks {
  var version: UInt32
  var getBytes: CGDataProviderGetBytesCallback?
  var skipForward: CGDataProviderSkipForwardCallback?
  var rewind: CGDataProviderRewindCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version version: UInt32, getBytes getBytes: CGDataProviderGetBytesCallback?, skipForward skipForward: CGDataProviderSkipForwardCallback?, rewind rewind: CGDataProviderRewindCallback?, releaseInfo releaseInfo: CGDataProviderReleaseInfoCallback?)
}
typealias CGDataProviderGetBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>) -> UnsafePointer<Void>
typealias CGDataProviderReleaseBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>) -> Void
typealias CGDataProviderGetBytesAtPositionCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, off_t, Int) -> Int
struct CGDataProviderDirectCallbacks {
  var version: UInt32
  var getBytePointer: CGDataProviderGetBytePointerCallback?
  var releaseBytePointer: CGDataProviderReleaseBytePointerCallback?
  var getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version version: UInt32, getBytePointer getBytePointer: CGDataProviderGetBytePointerCallback?, releaseBytePointer releaseBytePointer: CGDataProviderReleaseBytePointerCallback?, getBytesAtPosition getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?, releaseInfo releaseInfo: CGDataProviderReleaseInfoCallback?)
}
@available(tvOS 2.0, *)
func CGDataProviderGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGDataProviderCreateSequential(_ info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>) -> CGDataProvider?
@available(tvOS 2.0, *)
func CGDataProviderCreateDirect(_ info: UnsafeMutablePointer<Void>, _ size: off_t, _ callbacks: UnsafePointer<CGDataProviderDirectCallbacks>) -> CGDataProvider?
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Void
@available(tvOS 2.0, *)
func CGDataProviderCreateWithData(_ info: UnsafeMutablePointer<Void>, _ data: UnsafePointer<Void>, _ size: Int, _ releaseData: CGDataProviderReleaseDataCallback?) -> CGDataProvider?
@available(tvOS 2.0, *)
func CGDataProviderCreateWithCFData(_ data: CFData?) -> CGDataProvider?
@available(tvOS 2.0, *)
func CGDataProviderCreateWithURL(_ url: CFURL?) -> CGDataProvider?
@available(tvOS 2.0, *)
func CGDataProviderCreateWithFilename(_ filename: UnsafePointer<Int8>) -> CGDataProvider?
@available(tvOS 2.0, *)
func CGDataProviderCopyData(_ provider: CGDataProvider?) -> CFData?
