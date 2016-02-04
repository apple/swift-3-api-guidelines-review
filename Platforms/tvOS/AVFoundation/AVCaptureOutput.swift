
extension AVCaptureStillImageOutput {
  @available(tvOS 8.0, *)
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(tvOS 9.0, *)
  var lensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(tvOS 9.0, *)
  var lensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(tvOS 8.0, *)
  func prepareToCaptureStillImageBracketFromConnection(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((Bool, NSError!) -> Void)!)
  @available(tvOS 8.0, *)
  func captureStillImageBracketAsynchronouslyFromConnection(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((CMSampleBuffer!, AVCaptureBracketedStillImageSettings!, NSError!) -> Void)!)
}
