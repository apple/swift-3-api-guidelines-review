
@available(tvOS 8.0, *)
class AVAudioUnitSampler : AVAudioUnitMIDIInstrument {
  func loadSoundBankInstrumentAt(bankURL: URL, program: UInt8, bankMSB: UInt8, bankLSB: UInt8) throws
  func loadInstrumentAt(instrumentURL: URL) throws
  func loadAudioFilesAt(audioFiles: [URL]) throws
  var stereoPan: Float
  var masterGain: Float
  var globalTuning: Float
  init(audioComponentDescription description: AudioComponentDescription)
  init()
}
