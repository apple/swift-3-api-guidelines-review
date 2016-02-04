
@available(iOS 8.0, *)
class AVAudioUnitSampler : AVAudioUnitMIDIInstrument {
  func loadSoundBankInstrumentAtURL(bankURL: NSURL, program: UInt8, bankMSB: UInt8, bankLSB: UInt8) throws
  func loadInstrumentAtURL(instrumentURL: NSURL) throws
  func loadAudioFilesAtURLs(audioFiles: [NSURL]) throws
  var stereoPan: Float
  var masterGain: Float
  var globalTuning: Float
  init(audioComponentDescription description: AudioComponentDescription)
  init()
}
