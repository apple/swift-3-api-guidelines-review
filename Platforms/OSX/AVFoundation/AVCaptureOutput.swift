
@available(OSX 10.7, *)
class AVCaptureOutput : Object {
  var connections: [AnyObject]! { get }
  @available(OSX 10.7, *)
  func connection(withMediaType mediaType: String!) -> AVCaptureConnection!
  init()
}
@available(OSX 10.7, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  var videoSettings: [Object : AnyObject]!
  @available(OSX 10.7, *)
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }
  @available(OSX 10.7, *)
  var availableVideoCodecTypes: [AnyObject]! { get }
  var alwaysDiscardsLateVideoFrames: Bool
  init()
}
protocol AVCaptureVideoDataOutputSampleBufferDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didDrop sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(OSX 10.7, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  @available(OSX 10.7, *)
  var audioSettings: [Object : AnyObject]!
  init()
}
protocol AVCaptureAudioDataOutputSampleBufferDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(OSX 10.7, *)
class AVCaptureFileOutput : AVCaptureOutput {
  @available(OSX 10.7, *)
  unowned(unsafe) var delegate: @sil_unmanaged AVCaptureFileOutputDelegate!
  var outputFileURL: URL! { get }
  func startRecording(toOutputFileURL outputFileURL: URL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  func stopRecording()
  var isRecording: Bool { get }
  @available(OSX 10.7, *)
  var isRecordingPaused: Bool { get }
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
protocol AVCaptureFileOutputRecordingDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [AnyObject]!)
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didPauseRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [AnyObject]!)
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didResumeRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [AnyObject]!)
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, willFinishRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [AnyObject]!, error: Error!)
  @available(OSX 10.7, *)
  func capture(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAt outputFileURL: URL!, fromConnections connections: [AnyObject]!, error: Error!)
}
protocol AVCaptureFileOutputDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  func captureOutputShouldProvideSampleAccurateRecordingStart(captureOutput: AVCaptureOutput!) -> Bool
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(OSX 10.7, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AnyObject]!
  @available(OSX 10.7, *)
  func outputSettings(forConnection connection: AVCaptureConnection!) -> [Object : AnyObject]!
  @available(OSX 10.7, *)
  func setOutputSettings(outputSettings: [Object : AnyObject]!, forConnection connection: AVCaptureConnection!)
  init()
}
@available(OSX 10.7, *)
class AVCaptureAudioFileOutput : AVCaptureFileOutput {
  class func availableOutputFileTypes() -> [AnyObject]!
  func startRecording(toOutputFileURL outputFileURL: URL!, outputFileType fileType: String!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  var metadata: [AnyObject]!
  var audioSettings: [Object : AnyObject]!
  init()
}
@available(OSX 10.7, *)
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [Object : AnyObject]!
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }
  var availableImageDataCodecTypes: [AnyObject]! { get }
  @available(OSX 10.8, *)
  var isCapturingStillImage: Bool { get }
  func captureStillImageAsynchronously(from connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, Error!) -> Void)!)
  class func jpegStillImageNSDataRepresentation(jpegSampleBuffer: CMSampleBuffer!) -> Data!
  init()
}
@available(OSX 10.7, *)
class AVCaptureAudioPreviewOutput : AVCaptureOutput {
  var outputDeviceUniqueID: String!
  var volume: Float
  init()
}
protocol AVCaptureMetadataOutputObjectsDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, from connection: AVCaptureConnection!)
}
