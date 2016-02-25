
@available(iOS 4.0, *)
class AVCaptureVideoPreviewLayer : CALayer {
  init!(session session: AVCaptureSession!)
  @available(iOS 8.0, *)
  init!(sessionWithNoConnection session: AVCaptureSession!)
  var session: AVCaptureSession!
  @available(iOS 8.0, *)
  func setSessionWithNoConnection(_ session: AVCaptureSession!)
  @available(iOS 6.0, *)
  var connection: AVCaptureConnection! { get }
  var videoGravity: String!
  @available(iOS 6.0, *)
  func captureDevicePointOfInterestForPoint(_ pointInLayer: CGPoint) -> CGPoint
  @available(iOS 6.0, *)
  func pointForCaptureDevicePointOfInterest(_ captureDevicePointOfInterest: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func metadataOutputRectOfInterestForRect(_ rectInLayerCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func rectForMetadataOutputRectOfInterest(_ rectInMetadataOutputCoordinates: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func transformedMetadataObjectForMetadataObject(_ metadataObject: AVMetadataObject!) -> AVMetadataObject!
}
