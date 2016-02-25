
@available(iOS 4.0, *)
class AVCaptureOutput : NSObject {
  var connections: [AnyObject]! { get }
  @available(iOS 5.0, *)
  func connectionWithMediaType(_ mediaType: String!) -> AVCaptureConnection!
  @available(iOS 6.0, *)
  func transformedMetadataObjectForMetadataObject(_ metadataObject: AVMetadataObject!, connection connection: AVCaptureConnection!) -> AVMetadataObject!
  @available(iOS 7.0, *)
  func metadataOutputRectOfInterestForRect(_ rectInOutputCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func rectForMetadataOutputRectOfInterest(_ rectInMetadataOutputCoordinates: CGRect) -> CGRect
}
@available(iOS 4.0, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(_ sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  var videoSettings: [NSObject : AnyObject]!
  @available(iOS 7.0, *)
  func recommendedVideoSettingsForAssetWriterWithOutputFileType(_ outputFileType: String!) -> [NSObject : AnyObject]!
  @available(iOS 5.0, *)
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }
  @available(iOS 5.0, *)
  var availableVideoCodecTypes: [AnyObject]! { get }
  var alwaysDiscardsLateVideoFrames: Bool
}
protocol AVCaptureVideoDataOutputSampleBufferDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
  @available(iOS 6.0, *)
  optional func captureOutput(_ captureOutput: AVCaptureOutput!, didDropSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(_ sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  @available(iOS 7.0, *)
  func recommendedAudioSettingsForAssetWriterWithOutputFileType(_ outputFileType: String!) -> [NSObject : AnyObject]!
}
protocol AVCaptureAudioDataOutputSampleBufferDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureFileOutput : AVCaptureOutput {
  var outputFileURL: NSURL! { get }
  func startRecordingToOutputFileURL(_ outputFileURL: NSURL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  func stopRecording()
  var recording: Bool { get }
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
}
protocol AVCaptureFileOutputRecordingDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(_ captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAtURL fileURL: NSURL!, fromConnections connections: [AnyObject]!)
  @available(iOS 4.0, *)
  func captureOutput(_ captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAtURL outputFileURL: NSURL!, fromConnections connections: [AnyObject]!, error error: NSError!)
}
@available(iOS 4.0, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AnyObject]!
  @available(iOS 9.0, *)
  func recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection(_ connection: AVCaptureConnection!) -> Bool
  @available(iOS 9.0, *)
  func setRecordsVideoOrientationAndMirroringChanges(_ doRecordChanges: Bool, asMetadataTrackForConnection connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [NSObject : AnyObject]!
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }
  var availableImageDataCodecTypes: [AnyObject]! { get }
  @available(iOS 7.0, *)
  var stillImageStabilizationSupported: Bool { get }
  @available(iOS 7.0, *)
  var automaticallyEnablesStillImageStabilizationWhenAvailable: Bool
  @available(iOS 7.0, *)
  var stillImageStabilizationActive: Bool { get }
  @available(iOS 8.0, *)
  var highResolutionStillImageOutputEnabled: Bool
  @available(iOS 5.0, *)
  var capturingStillImage: Bool { get }
  func captureStillImageAsynchronouslyFromConnection(_ connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, NSError!) -> Void)!)
  class func jpegStillImageNSDataRepresentation(_ jpegSampleBuffer: CMSampleBuffer!) -> NSData!
}
@available(iOS 8.0, *)
class AVCaptureBracketedStillImageSettings : NSObject {
}
@available(iOS 8.0, *)
class AVCaptureManualExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func manualExposureSettingsWithExposureDuration(_ duration: CMTime, ISO ISO: Float) -> Self!
  var exposureDuration: CMTime { get }
  var ISO: Float { get }
}
@available(iOS 8.0, *)
class AVCaptureAutoExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func autoExposureSettingsWithExposureTargetBias(_ exposureTargetBias: Float) -> Self!
  var exposureTargetBias: Float { get }
}
extension AVCaptureStillImageOutput {
  @available(iOS 8.0, *)
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(iOS 9.0, *)
  var lensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(iOS 9.0, *)
  var lensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(iOS 8.0, *)
  func prepareToCaptureStillImageBracketFromConnection(_ connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((Bool, NSError!) -> Void)!)
  @available(iOS 8.0, *)
  func captureStillImageBracketAsynchronouslyFromConnection(_ connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((CMSampleBuffer!, AVCaptureBracketedStillImageSettings!, NSError!) -> Void)!)
}
@available(iOS 6.0, *)
class AVCaptureMetadataOutput : AVCaptureOutput {
  func setMetadataObjectsDelegate(_ objectsDelegate: AVCaptureMetadataOutputObjectsDelegate!, queue objectsCallbackQueue: dispatch_queue_t!)
  var metadataObjectsDelegate: AVCaptureMetadataOutputObjectsDelegate! { get }
  var metadataObjectsCallbackQueue: dispatch_queue_t! { get }
  var availableMetadataObjectTypes: [AnyObject]! { get }
  var metadataObjectTypes: [AnyObject]!
  @available(iOS 7.0, *)
  var rectOfInterest: CGRect
}
protocol AVCaptureMetadataOutputObjectsDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, fromConnection connection: AVCaptureConnection!)
}
