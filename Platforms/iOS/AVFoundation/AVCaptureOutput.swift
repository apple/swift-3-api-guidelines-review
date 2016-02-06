
@available(iOS 4.0, *)
class AVCaptureOutput : Object {
  var connections: [AnyObject]! { get }
  @available(iOS 5.0, *)
  func connectionWith(mediaType mediaType: String!) -> AVCaptureConnection!
  @available(iOS 6.0, *)
  func transformedMetadataObjectFor(metadataObject: AVMetadataObject!, connection: AVCaptureConnection!) -> AVMetadataObject!
  @available(iOS 7.0, *)
  func metadataOutputRectOfInterestFor(rectInOutputCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func rectForMetadataOutputRectOfInterest(rectInMetadataOutputCoordinates: CGRect) -> CGRect
  init()
}
@available(iOS 4.0, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  var videoSettings: [Object : AnyObject]!
  @available(iOS 7.0, *)
  func recommendedVideoSettingsForAssetWriterWith(outputFileType outputFileType: String!) -> [Object : AnyObject]!
  @available(iOS 5.0, *)
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }
  @available(iOS 5.0, *)
  var availableVideoCodecTypes: [AnyObject]! { get }
  var alwaysDiscardsLateVideoFrames: Bool
  init()
}
protocol AVCaptureVideoDataOutputSampleBufferDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
  @available(iOS 6.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didDrop sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  @available(iOS 7.0, *)
  func recommendedAudioSettingsForAssetWriterWith(outputFileType outputFileType: String!) -> [Object : AnyObject]!
  init()
}
protocol AVCaptureAudioDataOutputSampleBufferDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureFileOutput : AVCaptureOutput {
  var outputFileURL: URL! { get }
  func startRecordingTo(outputFileURL outputFileURL: URL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  func stopRecording()
  var isRecording: Bool { get }
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
  init()
}
protocol AVCaptureFileOutputRecordingDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [AnyObject]!)
  @available(iOS 4.0, *)
  func capture(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAt outputFileURL: URL!, fromConnections connections: [AnyObject]!, error: Error!)
}
@available(iOS 4.0, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AnyObject]!
  @available(iOS 9.0, *)
  func recordsVideoOrientationAndMirroringChangesAsMetadataTrackFor(connection: AVCaptureConnection!) -> Bool
  @available(iOS 9.0, *)
  func setRecordsVideoOrientationAndMirroringChanges(doRecordChanges: Bool, asMetadataTrackFor connection: AVCaptureConnection!)
  init()
}
@available(iOS 4.0, *)
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [Object : AnyObject]!
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }
  var availableImageDataCodecTypes: [AnyObject]! { get }
  @available(iOS 7.0, *)
  var isStillImageStabilizationSupported: Bool { get }
  @available(iOS 7.0, *)
  var automaticallyEnablesStillImageStabilizationWhenAvailable: Bool
  @available(iOS 7.0, *)
  var isStillImageStabilizationActive: Bool { get }
  @available(iOS 8.0, *)
  var isHighResolutionStillImageOutputEnabled: Bool
  @available(iOS 5.0, *)
  var isCapturingStillImage: Bool { get }
  func captureStillImageAsynchronouslyFrom(connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, Error!) -> Void)!)
  class func jpegStillImageNSDataRepresentation(jpegSampleBuffer: CMSampleBuffer!) -> Data!
  init()
}
@available(iOS 8.0, *)
class AVCaptureBracketedStillImageSettings : Object {
  init()
}
@available(iOS 8.0, *)
class AVCaptureManualExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func manualExposureSettingsWith(exposureDuration duration: CMTime, iso ISO: Float) -> Self!
  var exposureDuration: CMTime { get }
  var iso: Float { get }
  init()
}
@available(iOS 8.0, *)
class AVCaptureAutoExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func autoExposureSettingsWith(exposureTargetBias exposureTargetBias: Float) -> Self!
  var exposureTargetBias: Float { get }
  init()
}
extension AVCaptureStillImageOutput {
  @available(iOS 8.0, *)
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(iOS 9.0, *)
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(iOS 9.0, *)
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(iOS 8.0, *)
  func prepareToCaptureStillImageBracketFrom(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((Bool, Error!) -> Void)!)
  @available(iOS 8.0, *)
  func captureStillImageBracketAsynchronouslyFrom(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((CMSampleBuffer!, AVCaptureBracketedStillImageSettings!, Error!) -> Void)!)
}
@available(iOS 6.0, *)
class AVCaptureMetadataOutput : AVCaptureOutput {
  func setMetadataObjectsDelegate(objectsDelegate: AVCaptureMetadataOutputObjectsDelegate!, queue objectsCallbackQueue: dispatch_queue_t!)
  var metadataObjectsDelegate: AVCaptureMetadataOutputObjectsDelegate! { get }
  var metadataObjectsCallbackQueue: dispatch_queue_t! { get }
  var availableMetadataObjectTypes: [AnyObject]! { get }
  var metadataObjectTypes: [AnyObject]!
  @available(iOS 7.0, *)
  var rectOfInterest: CGRect
  init()
}
protocol AVCaptureMetadataOutputObjectsDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, from connection: AVCaptureConnection!)
}
