
@available(tvOS 8.0, *)
class AVAudioUnitSampler : AVAudioUnitMIDIInstrument {
  func loadSoundBankInstrument(at bankURL: NSURL, program: UInt8, bankMSB: UInt8, bankLSB: UInt8) throws
  func loadInstrument(at instrumentURL: NSURL) throws
  func loadAudioFiles(at audioFiles: [NSURL]) throws
  var stereoPan: Float
  var masterGain: Float
  var globalTuning: Float
  init(audioComponentDescription description: AudioComponentDescription)
  init()
}
