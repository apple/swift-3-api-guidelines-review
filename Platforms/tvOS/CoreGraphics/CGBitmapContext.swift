
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
@available(tvOS 4.0, *)
func CGBitmapContextCreateWithData(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32, _ releaseCallback: CGBitmapContextReleaseDataCallback?, _ releaseInfo: UnsafeMutablePointer<Void>) -> CGContext?
@available(tvOS 2.0, *)
func CGBitmapContextCreate(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32) -> CGContext?
@available(tvOS 2.0, *)
func CGBitmapContextGetData(context: CGContext?) -> UnsafeMutablePointer<Void>
@available(tvOS 2.0, *)
func CGBitmapContextGetWidth(context: CGContext?) -> Int
@available(tvOS 2.0, *)
func CGBitmapContextGetHeight(context: CGContext?) -> Int
@available(tvOS 2.0, *)
func CGBitmapContextGetBitsPerComponent(context: CGContext?) -> Int
@available(tvOS 2.0, *)
func CGBitmapContextGetBitsPerPixel(context: CGContext?) -> Int
@available(tvOS 2.0, *)
func CGBitmapContextGetBytesPerRow(context: CGContext?) -> Int
@available(tvOS 2.0, *)
func CGBitmapContextGetColorSpace(context: CGContext?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGBitmapContextGetAlphaInfo(context: CGContext?) -> CGImageAlphaInfo
@available(tvOS 2.0, *)
func CGBitmapContextGetBitmapInfo(context: CGContext?) -> CGBitmapInfo
@available(tvOS 2.0, *)
func CGBitmapContextCreateImage(context: CGContext?) -> CGImage?
