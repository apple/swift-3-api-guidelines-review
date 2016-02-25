
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
  func captureDevicePointOfInterest(for pointInLayer: CGPoint) -> CGPoint
  @available(iOS 6.0, *)
  func pointForCaptureDevicePoint(ofInterest captureDevicePointOfInterest: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func metadataOutputRectOfInterest(for rectInLayerCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func rectForMetadataOutputRect(ofInterest rectInMetadataOutputCoordinates: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func transformedMetadataObject(for metadataObject: AVMetadataObject!) -> AVMetadataObject!
}
