
protocol AUCocoaUIBase {
  func interfaceVersion() -> UInt32
  func uiViewForAudioUnit(inAudioUnit: AudioUnit, withSize inPreferredSize: NSSize) -> NSView?
}
