
protocol AUCocoaUIBase {
  func interfaceVersion() -> UInt32
  func uiView(forAudioUnit inAudioUnit: AudioUnit, withSize inPreferredSize: Size) -> NSView?
}
