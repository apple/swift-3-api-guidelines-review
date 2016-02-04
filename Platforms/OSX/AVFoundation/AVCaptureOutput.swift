
@available(OSX 10.7, *)
class AVCaptureOutput : NSObject {
  var connections: [AnyObject]! { get }
  @available(OSX 10.7, *)
  func connectionWithMediaType(mediaType: String!) -> AVCaptureConnection!
  init()
}
@available(OSX 10.7, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  var videoSettings: [NSObject : AnyObject]!
  @available(OSX 10.7, *)
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }
  @available(OSX 10.7, *)
  var availableVideoCodecTypes: [AnyObject]! { get }
  var alwaysDiscardsLateVideoFrames: Bool
  init()
}
protocol AVCaptureVideoDataOutputSampleBufferDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didDropSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
}
@available(OSX 10.7, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  @available(OSX 10.7, *)
  var audioSettings: [NSObject : AnyObject]!
  init()
}
protocol AVCaptureAudioDataOutputSampleBufferDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
}
@available(OSX 10.7, *)
class AVCaptureFileOutput : AVCaptureOutput {
  @available(OSX 10.7, *)
  unowned(unsafe) var delegate: @sil_unmanaged AVCaptureFileOutputDelegate!
  var outputFileURL: NSURL! { get }
  func startRecordingToOutputFileURL(outputFileURL: NSURL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  func stopRecording()
  var recording: Bool { get }
  @available(OSX 10.7, *)
  var recordingPaused: Bool { get }
  @available(OSX 10.7, *)
  func pauseRecording()
  @available(OSX 10.7, *)
  func resumeRecording()
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
  init()
}
protocol AVCaptureFileOutputRecordingDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAtURL fileURL: NSURL!, fromConnections connections: [AnyObject]!)
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureFileOutput!, didPauseRecordingToOutputFileAtURL fileURL: NSURL!, fromConnections connections: [AnyObject]!)
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureFileOutput!, didResumeRecordingToOutputFileAtURL fileURL: NSURL!, fromConnections connections: [AnyObject]!)
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureFileOutput!, willFinishRecordingToOutputFileAtURL fileURL: NSURL!, fromConnections connections: [AnyObject]!, error: NSError!)
  @available(OSX 10.7, *)
  func captureOutput(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAtURL outputFileURL: NSURL!, fromConnections connections: [AnyObject]!, error: NSError!)
}
protocol AVCaptureFileOutputDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  func captureOutputShouldProvideSampleAccurateRecordingStart(captureOutput: AVCaptureOutput!) -> Bool
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureFileOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!)
}
@available(OSX 10.7, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AnyObject]!
  @available(OSX 10.7, *)
  func outputSettingsForConnection(connection: AVCaptureConnection!) -> [NSObject : AnyObject]!
  @available(OSX 10.7, *)
  func setOutputSettings(outputSettings: [NSObject : AnyObject]!, forConnection connection: AVCaptureConnection!)
  init()
}
@available(OSX 10.7, *)
class AVCaptureAudioFileOutput : AVCaptureFileOutput {
  class func availableOutputFileTypes() -> [AnyObject]!
  func startRecordingToOutputFileURL(outputFileURL: NSURL!, outputFileType fileType: String!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  var metadata: [AnyObject]!
  var audioSettings: [NSObject : AnyObject]!
  init()
}
@available(OSX 10.7, *)
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [NSObject : AnyObject]!
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }
  var availableImageDataCodecTypes: [AnyObject]! { get }
  @available(OSX 10.8, *)
  var capturingStillImage: Bool { get }
  func captureStillImageAsynchronouslyFromConnection(connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, NSError!) -> Void)!)
  class func jpegStillImageNSDataRepresentation(jpegSampleBuffer: CMSampleBuffer!) -> NSData!
  init()
}
@available(OSX 10.7, *)
class AVCaptureAudioPreviewOutput : AVCaptureOutput {
  var outputDeviceUniqueID: String!
  var volume: Float
  init()
}
protocol AVCaptureMetadataOutputObjectsDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, fromConnection connection: AVCaptureConnection!)
}
