
@available(iOS 4.0, *)
class AVCaptureVideoPreviewLayer : CALayer {
  init!(session: AVCaptureSession!)
  @available(iOS 8.0, *)
  init!(sessionWithNoConnection session: AVCaptureSession!)
  var session: AVCaptureSession!
  @available(iOS 8.0, *)
  func setSessionWithNoConnection(session: AVCaptureSession!)
  @available(iOS 6.0, *)
  var connection: AVCaptureConnection! { get }
  var videoGravity: String!
  @available(iOS 6.0, *)
  func captureDevicePointOfInterest(forPoint pointInLayer: CGPoint) -> CGPoint
  @available(iOS 6.0, *)
  func pointForCaptureDevicePointOfInterest(captureDevicePointOfInterest: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func metadataOutputRectOfInterest(forRect rectInLayerCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func rectForMetadataOutputRectOfInterest(rectInMetadataOutputCoordinates: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func transformedMetadataObject(forMetadataObject metadataObject: AVMetadataObject!) -> AVMetadataObject!
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
