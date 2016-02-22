
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.6, *)
func CGBitmapContextCreateWithData(_ data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32, _ releaseCallback: CGBitmapContextReleaseDataCallback?, _ releaseInfo: UnsafeMutablePointer<Void>) -> CGContext?
@available(OSX 10.0, *)
func CGBitmapContextCreate(_ data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32) -> CGContext?
@available(OSX 10.2, *)
func CGBitmapContextGetData(_ context: CGContext?) -> UnsafeMutablePointer<Void>
@available(OSX 10.2, *)
func CGBitmapContextGetWidth(_ context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetHeight(_ context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBitsPerComponent(_ context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBitsPerPixel(_ context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBytesPerRow(_ context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetColorSpace(_ context: CGContext?) -> CGColorSpace?
@available(OSX 10.2, *)
func CGBitmapContextGetAlphaInfo(_ context: CGContext?) -> CGImageAlphaInfo
@available(OSX 10.4, *)
func CGBitmapContextGetBitmapInfo(_ context: CGContext?) -> CGBitmapInfo
@available(OSX 10.4, *)
func CGBitmapContextCreateImage(_ context: CGContext?) -> CGImage?
