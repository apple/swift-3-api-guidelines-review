
protocol AUCocoaUIBase {
  func interfaceVersion() -> UInt32
  func uiViewForAudioUnit(_ inAudioUnit: AudioUnit, withSize inPreferredSize: NSSize) -> NSView?
}
