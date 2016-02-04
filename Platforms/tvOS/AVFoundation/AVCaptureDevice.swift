
extension AVCaptureDevice {
  var position: AVCaptureDevicePosition { get }
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  @available(tvOS 5.0, *)
  var flashAvailable: Bool { get }
  @available(tvOS 5.0, *)
  var flashActive: Bool { get }
  func isFlashModeSupported(flashMode: AVCaptureFlashMode) -> Bool
  var flashMode: AVCaptureFlashMode
}
let AVCaptureMaxAvailableTorchLevel: Float
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  @available(tvOS 5.0, *)
  var torchAvailable: Bool { get }
  @available(tvOS 6.0, *)
  var torchActive: Bool { get }
  @available(tvOS 5.0, *)
  var torchLevel: Float { get }
  func isTorchModeSupported(torchMode: AVCaptureTorchMode) -> Bool
  var torchMode: AVCaptureTorchMode
  @available(tvOS 6.0, *)
  func setTorchModeOnWithLevel(torchLevel: Float) throws
}
extension AVCaptureDevice {
  func isFocusModeSupported(focusMode: AVCaptureFocusMode) -> Bool
  var focusMode: AVCaptureFocusMode
  var focusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var adjustingFocus: Bool { get }
  @available(tvOS 7.0, *)
  var autoFocusRangeRestrictionSupported: Bool { get }
  @available(tvOS 7.0, *)
  var autoFocusRangeRestriction: AVCaptureAutoFocusRangeRestriction
  @available(tvOS 7.0, *)
  var smoothAutoFocusSupported: Bool { get }
  @available(tvOS 7.0, *)
  var smoothAutoFocusEnabled: Bool
  @available(tvOS 8.0, *)
  var lensPosition: Float { get }
  @available(tvOS 8.0, *)
  func setFocusModeLockedWithLensPosition(lensPosition: Float, completionHandler handler: ((CMTime) -> Void)!)
}
@available(tvOS 8.0, *)
let AVCaptureLensPositionCurrent: Float
extension AVCaptureDevice {
  func isExposureModeSupported(exposureMode: AVCaptureExposureMode) -> Bool
  var exposureMode: AVCaptureExposureMode
  var exposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  var adjustingExposure: Bool { get }
  @available(tvOS 8.0, *)
  var lensAperture: Float { get }
  @available(tvOS 8.0, *)
  var exposureDuration: CMTime { get }
  @available(tvOS 8.0, *)
  var ISO: Float { get }
  @available(tvOS 8.0, *)
  func setExposureModeCustomWithDuration(duration: CMTime, ISO: Float, completionHandler handler: ((CMTime) -> Void)!)
  @available(tvOS 8.0, *)
  var exposureTargetOffset: Float { get }
  @available(tvOS 8.0, *)
  var exposureTargetBias: Float { get }
  @available(tvOS 8.0, *)
  var minExposureTargetBias: Float { get }
  @available(tvOS 8.0, *)
  var maxExposureTargetBias: Float { get }
  @available(tvOS 8.0, *)
  func setExposureTargetBias(bias: Float, completionHandler handler: ((CMTime) -> Void)!)
}
@available(tvOS 8.0, *)
let AVCaptureExposureDurationCurrent: CMTime
@available(tvOS 8.0, *)
let AVCaptureISOCurrent: Float
@available(tvOS 8.0, *)
let AVCaptureExposureTargetBiasCurrent: Float
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(whiteBalanceMode: AVCaptureWhiteBalanceMode) -> Bool
  var whiteBalanceMode: AVCaptureWhiteBalanceMode
  var adjustingWhiteBalance: Bool { get }
  @available(tvOS 8.0, *)
  var deviceWhiteBalanceGains: AVCaptureWhiteBalanceGains { get }
  @available(tvOS 8.0, *)
  var grayWorldDeviceWhiteBalanceGains: AVCaptureWhiteBalanceGains { get }
  @available(tvOS 8.0, *)
  var maxWhiteBalanceGain: Float { get }
  @available(tvOS 8.0, *)
  func setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains(whiteBalanceGains: AVCaptureWhiteBalanceGains, completionHandler handler: ((CMTime) -> Void)!)
  @available(tvOS 8.0, *)
  func chromaticityValuesForDeviceWhiteBalanceGains(whiteBalanceGains: AVCaptureWhiteBalanceGains) -> AVCaptureWhiteBalanceChromaticityValues
  @available(tvOS 8.0, *)
  func deviceWhiteBalanceGainsForChromaticityValues(chromaticityValues: AVCaptureWhiteBalanceChromaticityValues) -> AVCaptureWhiteBalanceGains
  @available(tvOS 8.0, *)
  func temperatureAndTintValuesForDeviceWhiteBalanceGains(whiteBalanceGains: AVCaptureWhiteBalanceGains) -> AVCaptureWhiteBalanceTemperatureAndTintValues
  @available(tvOS 8.0, *)
  func deviceWhiteBalanceGainsForTemperatureAndTintValues(tempAndTintValues: AVCaptureWhiteBalanceTemperatureAndTintValues) -> AVCaptureWhiteBalanceGains
}
@available(tvOS 8.0, *)
let AVCaptureWhiteBalanceGainsCurrent: AVCaptureWhiteBalanceGains
extension AVCaptureDevice {
  @available(tvOS 5.0, *)
  var subjectAreaChangeMonitoringEnabled: Bool
}
extension AVCaptureDevice {
  @available(tvOS 6.0, *)
  var lowLightBoostSupported: Bool { get }
  @available(tvOS 6.0, *)
  var lowLightBoostEnabled: Bool { get }
  @available(tvOS 6.0, *)
  var automaticallyEnablesLowLightBoostWhenAvailable: Bool
}
extension AVCaptureDevice {
  @available(tvOS 7.0, *)
  var videoZoomFactor: CGFloat
  @available(tvOS 7.0, *)
  func rampToVideoZoomFactor(factor: CGFloat, withRate rate: Float)
  @available(tvOS 7.0, *)
  var rampingVideoZoom: Bool { get }
  @available(tvOS 7.0, *)
  func cancelVideoZoomRamp()
}
extension AVCaptureDevice {
  @available(tvOS 7.0, *)
  class func authorizationStatusForMediaType(mediaType: String!) -> AVAuthorizationStatus
  @available(tvOS 7.0, *)
  class func requestAccessForMediaType(mediaType: String!, completionHandler handler: ((Bool) -> Void)!)
}
extension AVCaptureDevice {
  @available(tvOS 8.0, *)
  var automaticallyAdjustsVideoHDREnabled: Bool
  @available(tvOS 8.0, *)
  var videoHDREnabled: Bool
}
