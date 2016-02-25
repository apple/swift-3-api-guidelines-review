
typealias ExtAudioFileRef = COpaquePointer
typealias ExtAudioFilePropertyID = UInt32
var kExtAudioFileProperty_FileDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_CodecManufacturer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioConverter: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioFile: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileLengthFrames: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ConverterConfig: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBufferSizeBytes: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBuffer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_PacketTable: ExtAudioFilePropertyID { get }
var kExtAudioFileError_InvalidProperty: OSStatus { get }
var kExtAudioFileError_InvalidPropertySize: OSStatus { get }
var kExtAudioFileError_NonPCMClientFormat: OSStatus { get }
var kExtAudioFileError_InvalidChannelMap: OSStatus { get }
var kExtAudioFileError_InvalidOperationOrder: OSStatus { get }
var kExtAudioFileError_InvalidDataFormat: OSStatus { get }
var kExtAudioFileError_MaxPacketSizeUnknown: OSStatus { get }
var kExtAudioFileError_InvalidSeek: OSStatus { get }
var kExtAudioFileError_AsyncWriteTooLarge: OSStatus { get }
var kExtAudioFileError_AsyncWriteBufferOverflow: OSStatus { get }
var kExtAudioFileError_CodecUnavailableInputConsumed: OSStatus { get }
var kExtAudioFileError_CodecUnavailableInputNotConsumed: OSStatus { get }
@available(tvOS 2.1, *)
func ExtAudioFileOpenURL(_ inURL: CFURL, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileWrapAudioFileID(_ inFileID: AudioFileID, _ inForWriting: Bool, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileCreateWithURL(_ inURL: CFURL, _ inFileType: AudioFileTypeID, _ inStreamDesc: UnsafePointer<AudioStreamBasicDescription>, _ inChannelLayout: UnsafePointer<AudioChannelLayout>, _ inFlags: UInt32, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileDispose(_ inExtAudioFile: ExtAudioFileRef) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileRead(_ inExtAudioFile: ExtAudioFileRef, _ ioNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileWrite(_ inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileWriteAsync(_ inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileSeek(_ inExtAudioFile: ExtAudioFileRef, _ inFrameOffset: Int64) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileTell(_ inExtAudioFile: ExtAudioFileRef, _ outFrameOffset: UnsafeMutablePointer<Int64>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileGetPropertyInfo(_ inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileGetProperty(_ inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.1, *)
func ExtAudioFileSetProperty(_ inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
