
var ALC_INVALID: Int32 { get }
var ALC_VERSION_0_1: Int32 { get }
typealias ALCboolean = Int8
typealias ALCchar = Int8
typealias ALCbyte = Int8
typealias ALCubyte = UInt8
typealias ALCshort = Int16
typealias ALCushort = UInt16
typealias ALCint = Int32
typealias ALCuint = UInt32
typealias ALCsizei = Int32
typealias ALCenum = Int32
typealias ALCfloat = Float
typealias ALCdouble = Double
var ALC_FALSE: Int32 { get }
var ALC_TRUE: Int32 { get }
var ALC_FREQUENCY: Int32 { get }
var ALC_REFRESH: Int32 { get }
var ALC_SYNC: Int32 { get }
var ALC_MONO_SOURCES: Int32 { get }
var ALC_STEREO_SOURCES: Int32 { get }
var ALC_NO_ERROR: Int32 { get }
var ALC_INVALID_DEVICE: Int32 { get }
var ALC_INVALID_CONTEXT: Int32 { get }
var ALC_INVALID_ENUM: Int32 { get }
var ALC_INVALID_VALUE: Int32 { get }
var ALC_OUT_OF_MEMORY: Int32 { get }
var ALC_DEFAULT_DEVICE_SPECIFIER: Int32 { get }
var ALC_DEVICE_SPECIFIER: Int32 { get }
var ALC_EXTENSIONS: Int32 { get }
var ALC_MAJOR_VERSION: Int32 { get }
var ALC_MINOR_VERSION: Int32 { get }
var ALC_ATTRIBUTES_SIZE: Int32 { get }
var ALC_ALL_ATTRIBUTES: Int32 { get }
var ALC_DEFAULT_ALL_DEVICES_SPECIFIER: Int32 { get }
var ALC_ALL_DEVICES_SPECIFIER: Int32 { get }
var ALC_CAPTURE_DEVICE_SPECIFIER: Int32 { get }
var ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER: Int32 { get }
var ALC_CAPTURE_SAMPLES: Int32 { get }
func alcCreateContext(_ device: COpaquePointer, _ attrlist: UnsafePointer<ALCint>) -> COpaquePointer
func alcMakeContextCurrent(_ context: COpaquePointer) -> ALCboolean
func alcProcessContext(_ context: COpaquePointer)
func alcSuspendContext(_ context: COpaquePointer)
func alcDestroyContext(_ context: COpaquePointer)
func alcGetCurrentContext() -> COpaquePointer
func alcGetContextsDevice(_ context: COpaquePointer) -> COpaquePointer
func alcOpenDevice(_ devicename: UnsafePointer<ALCchar>) -> COpaquePointer
func alcCloseDevice(_ device: COpaquePointer) -> ALCboolean
func alcGetError(_ device: COpaquePointer) -> ALCenum
func alcIsExtensionPresent(_ device: COpaquePointer, _ extname: UnsafePointer<ALCchar>) -> ALCboolean
func alcGetProcAddress(_ device: COpaquePointer, _ funcname: UnsafePointer<ALCchar>) -> UnsafeMutablePointer<Void>
func alcGetEnumValue(_ device: COpaquePointer, _ enumname: UnsafePointer<ALCchar>) -> ALCenum
func alcGetString(_ device: COpaquePointer, _ param: ALCenum) -> UnsafePointer<ALCchar>
func alcGetIntegerv(_ device: COpaquePointer, _ param: ALCenum, _ size: ALCsizei, _ data: UnsafeMutablePointer<ALCint>)
func alcCaptureOpenDevice(_ devicename: UnsafePointer<ALCchar>, _ frequency: ALCuint, _ format: ALCenum, _ buffersize: ALCsizei) -> COpaquePointer
func alcCaptureCloseDevice(_ device: COpaquePointer) -> ALCboolean
func alcCaptureStart(_ device: COpaquePointer)
func alcCaptureStop(_ device: COpaquePointer)
func alcCaptureSamples(_ device: COpaquePointer, _ buffer: UnsafeMutablePointer<Void>, _ samples: ALCsizei)
typealias LPALCCREATECONTEXT = @convention(c) (COpaquePointer, UnsafePointer<ALCint>) -> COpaquePointer
typealias LPALCMAKECONTEXTCURRENT = @convention(c) (COpaquePointer) -> ALCboolean
typealias LPALCPROCESSCONTEXT = @convention(c) (COpaquePointer) -> Void
typealias LPALCSUSPENDCONTEXT = @convention(c) (COpaquePointer) -> Void
typealias LPALCDESTROYCONTEXT = @convention(c) (COpaquePointer) -> Void
typealias LPALCGETCURRENTCONTEXT = @convention(c) () -> COpaquePointer
typealias LPALCGETCONTEXTSDEVICE = @convention(c) (COpaquePointer) -> COpaquePointer
typealias LPALCOPENDEVICE = @convention(c) (UnsafePointer<ALCchar>) -> COpaquePointer
typealias LPALCCLOSEDEVICE = @convention(c) (COpaquePointer) -> ALCboolean
typealias LPALCGETERROR = @convention(c) (COpaquePointer) -> ALCenum
typealias LPALCISEXTENSIONPRESENT = @convention(c) (COpaquePointer, UnsafePointer<ALCchar>) -> ALCboolean
typealias LPALCGETPROCADDRESS = @convention(c) (COpaquePointer, UnsafePointer<ALCchar>) -> UnsafeMutablePointer<Void>
typealias LPALCGETENUMVALUE = @convention(c) (COpaquePointer, UnsafePointer<ALCchar>) -> ALCenum
typealias LPALCGETSTRING = @convention(c) (COpaquePointer, ALCenum) -> UnsafePointer<ALCchar>
typealias LPALCGETINTEGERV = @convention(c) (COpaquePointer, ALCenum, ALCsizei, UnsafeMutablePointer<ALCint>) -> Void
typealias LPALCCAPTUREOPENDEVICE = @convention(c) (UnsafePointer<ALCchar>, ALCuint, ALCenum, ALCsizei) -> COpaquePointer
typealias LPALCCAPTURECLOSEDEVICE = @convention(c) (COpaquePointer) -> ALCboolean
typealias LPALCCAPTURESTART = @convention(c) (COpaquePointer) -> Void
typealias LPALCCAPTURESTOP = @convention(c) (COpaquePointer) -> Void
typealias LPALCCAPTURESAMPLES = @convention(c) (COpaquePointer, UnsafeMutablePointer<Void>, ALCsizei) -> Void
