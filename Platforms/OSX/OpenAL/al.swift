
var AL_INVALID: Int32 { get }
var AL_ILLEGAL_ENUM: Int32 { get }
var AL_ILLEGAL_COMMAND: Int32 { get }
typealias ALboolean = Int8
typealias ALchar = Int8
typealias ALbyte = Int8
typealias ALubyte = UInt8
typealias ALshort = Int16
typealias ALushort = UInt16
typealias ALint = Int32
typealias ALuint = UInt32
typealias ALsizei = Int32
typealias ALenum = Int32
typealias ALfloat = Float
typealias ALdouble = Double
var AL_NONE: Int32 { get }
var AL_FALSE: Int32 { get }
var AL_TRUE: Int32 { get }
var AL_SOURCE_RELATIVE: Int32 { get }
var AL_CONE_INNER_ANGLE: Int32 { get }
var AL_CONE_OUTER_ANGLE: Int32 { get }
var AL_PITCH: Int32 { get }
var AL_POSITION: Int32 { get }
var AL_DIRECTION: Int32 { get }
var AL_VELOCITY: Int32 { get }
var AL_LOOPING: Int32 { get }
var AL_BUFFER: Int32 { get }
var AL_GAIN: Int32 { get }
var AL_MIN_GAIN: Int32 { get }
var AL_MAX_GAIN: Int32 { get }
var AL_ORIENTATION: Int32 { get }
var AL_SOURCE_STATE: Int32 { get }
var AL_INITIAL: Int32 { get }
var AL_PLAYING: Int32 { get }
var AL_PAUSED: Int32 { get }
var AL_STOPPED: Int32 { get }
var AL_BUFFERS_QUEUED: Int32 { get }
var AL_BUFFERS_PROCESSED: Int32 { get }
var AL_SEC_OFFSET: Int32 { get }
var AL_SAMPLE_OFFSET: Int32 { get }
var AL_BYTE_OFFSET: Int32 { get }
var AL_SOURCE_TYPE: Int32 { get }
var AL_STATIC: Int32 { get }
var AL_STREAMING: Int32 { get }
var AL_UNDETERMINED: Int32 { get }
var AL_FORMAT_MONO8: Int32 { get }
var AL_FORMAT_MONO16: Int32 { get }
var AL_FORMAT_STEREO8: Int32 { get }
var AL_FORMAT_STEREO16: Int32 { get }
var AL_REFERENCE_DISTANCE: Int32 { get }
var AL_ROLLOFF_FACTOR: Int32 { get }
var AL_CONE_OUTER_GAIN: Int32 { get }
var AL_MAX_DISTANCE: Int32 { get }
var AL_FREQUENCY: Int32 { get }
var AL_BITS: Int32 { get }
var AL_CHANNELS: Int32 { get }
var AL_SIZE: Int32 { get }
var AL_UNUSED: Int32 { get }
var AL_PENDING: Int32 { get }
var AL_PROCESSED: Int32 { get }
var AL_NO_ERROR: Int32 { get }
var AL_INVALID_NAME: Int32 { get }
var AL_INVALID_ENUM: Int32 { get }
var AL_INVALID_VALUE: Int32 { get }
var AL_INVALID_OPERATION: Int32 { get }
var AL_OUT_OF_MEMORY: Int32 { get }
var AL_VENDOR: Int32 { get }
var AL_VERSION: Int32 { get }
var AL_RENDERER: Int32 { get }
var AL_EXTENSIONS: Int32 { get }
var AL_DOPPLER_FACTOR: Int32 { get }
var AL_DOPPLER_VELOCITY: Int32 { get }
var AL_SPEED_OF_SOUND: Int32 { get }
var AL_DISTANCE_MODEL: Int32 { get }
var AL_INVERSE_DISTANCE: Int32 { get }
var AL_INVERSE_DISTANCE_CLAMPED: Int32 { get }
var AL_LINEAR_DISTANCE: Int32 { get }
var AL_LINEAR_DISTANCE_CLAMPED: Int32 { get }
var AL_EXPONENT_DISTANCE: Int32 { get }
var AL_EXPONENT_DISTANCE_CLAMPED: Int32 { get }
func alEnable(capability: ALenum)
func alDisable(capability: ALenum)
func alIsEnabled(capability: ALenum) -> ALboolean
func alGetString(param: ALenum) -> UnsafePointer<ALchar>
func alGetBooleanv(param: ALenum, _ data: UnsafeMutablePointer<ALboolean>)
func alGetIntegerv(param: ALenum, _ data: UnsafeMutablePointer<ALint>)
func alGetFloatv(param: ALenum, _ data: UnsafeMutablePointer<ALfloat>)
func alGetDoublev(param: ALenum, _ data: UnsafeMutablePointer<ALdouble>)
func alGetBoolean(param: ALenum) -> ALboolean
func alGetInteger(param: ALenum) -> ALint
func alGetFloat(param: ALenum) -> ALfloat
func alGetDouble(param: ALenum) -> ALdouble
func alGetError() -> ALenum
func alIsExtensionPresent(extname: UnsafePointer<ALchar>) -> ALboolean
func alGetProcAddress(fname: UnsafePointer<ALchar>) -> UnsafeMutablePointer<Void>
func alGetEnumValue(ename: UnsafePointer<ALchar>) -> ALenum
func alListenerf(param: ALenum, _ value: ALfloat)
func alListener3f(param: ALenum, _ value1: ALfloat, _ value2: ALfloat, _ value3: ALfloat)
func alListenerfv(param: ALenum, _ values: UnsafePointer<ALfloat>)
func alListeneri(param: ALenum, _ value: ALint)
func alListener3i(param: ALenum, _ value1: ALint, _ value2: ALint, _ value3: ALint)
func alListeneriv(param: ALenum, _ values: UnsafePointer<ALint>)
func alGetListenerf(param: ALenum, _ value: UnsafeMutablePointer<ALfloat>)
func alGetListener3f(param: ALenum, _ value1: UnsafeMutablePointer<ALfloat>, _ value2: UnsafeMutablePointer<ALfloat>, _ value3: UnsafeMutablePointer<ALfloat>)
func alGetListenerfv(param: ALenum, _ values: UnsafeMutablePointer<ALfloat>)
func alGetListeneri(param: ALenum, _ value: UnsafeMutablePointer<ALint>)
func alGetListener3i(param: ALenum, _ value1: UnsafeMutablePointer<ALint>, _ value2: UnsafeMutablePointer<ALint>, _ value3: UnsafeMutablePointer<ALint>)
func alGetListeneriv(param: ALenum, _ values: UnsafeMutablePointer<ALint>)
func alGenSources(n: ALsizei, _ sources: UnsafeMutablePointer<ALuint>)
func alDeleteSources(n: ALsizei, _ sources: UnsafePointer<ALuint>)
func alIsSource(sid: ALuint) -> ALboolean
func alSourcef(sid: ALuint, _ param: ALenum, _ value: ALfloat)
func alSource3f(sid: ALuint, _ param: ALenum, _ value1: ALfloat, _ value2: ALfloat, _ value3: ALfloat)
func alSourcefv(sid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALfloat>)
func alSourcei(sid: ALuint, _ param: ALenum, _ value: ALint)
func alSource3i(sid: ALuint, _ param: ALenum, _ value1: ALint, _ value2: ALint, _ value3: ALint)
func alSourceiv(sid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALint>)
func alGetSourcef(sid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALfloat>)
func alGetSource3f(sid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALfloat>, _ value2: UnsafeMutablePointer<ALfloat>, _ value3: UnsafeMutablePointer<ALfloat>)
func alGetSourcefv(sid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALfloat>)
func alGetSourcei(sid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALint>)
func alGetSource3i(sid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALint>, _ value2: UnsafeMutablePointer<ALint>, _ value3: UnsafeMutablePointer<ALint>)
func alGetSourceiv(sid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALint>)
func alSourcePlayv(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourceStopv(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourceRewindv(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourcePausev(ns: ALsizei, _ sids: UnsafePointer<ALuint>)
func alSourcePlay(sid: ALuint)
func alSourceStop(sid: ALuint)
func alSourceRewind(sid: ALuint)
func alSourcePause(sid: ALuint)
func alSourceQueueBuffers(sid: ALuint, _ numEntries: ALsizei, _ bids: UnsafePointer<ALuint>)
func alSourceUnqueueBuffers(sid: ALuint, _ numEntries: ALsizei, _ bids: UnsafeMutablePointer<ALuint>)
func alGenBuffers(n: ALsizei, _ buffers: UnsafeMutablePointer<ALuint>)
func alDeleteBuffers(n: ALsizei, _ buffers: UnsafePointer<ALuint>)
func alIsBuffer(bid: ALuint) -> ALboolean
func alBufferData(bid: ALuint, _ format: ALenum, _ data: UnsafePointer<Void>, _ size: ALsizei, _ freq: ALsizei)
func alBufferf(bid: ALuint, _ param: ALenum, _ value: ALfloat)
func alBuffer3f(bid: ALuint, _ param: ALenum, _ value1: ALfloat, _ value2: ALfloat, _ value3: ALfloat)
func alBufferfv(bid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALfloat>)
func alBufferi(bid: ALuint, _ param: ALenum, _ value: ALint)
func alBuffer3i(bid: ALuint, _ param: ALenum, _ value1: ALint, _ value2: ALint, _ value3: ALint)
func alBufferiv(bid: ALuint, _ param: ALenum, _ values: UnsafePointer<ALint>)
func alGetBufferf(bid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALfloat>)
func alGetBuffer3f(bid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALfloat>, _ value2: UnsafeMutablePointer<ALfloat>, _ value3: UnsafeMutablePointer<ALfloat>)
func alGetBufferfv(bid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALfloat>)
func alGetBufferi(bid: ALuint, _ param: ALenum, _ value: UnsafeMutablePointer<ALint>)
func alGetBuffer3i(bid: ALuint, _ param: ALenum, _ value1: UnsafeMutablePointer<ALint>, _ value2: UnsafeMutablePointer<ALint>, _ value3: UnsafeMutablePointer<ALint>)
func alGetBufferiv(bid: ALuint, _ param: ALenum, _ values: UnsafeMutablePointer<ALint>)
func alDopplerFactor(value: ALfloat)
func alDopplerVelocity(value: ALfloat)
func alSpeedOfSound(value: ALfloat)
func alDistanceModel(distanceModel: ALenum)
typealias LPALENABLE = @convention(c) (ALenum) -> Void
typealias LPALDISABLE = @convention(c) (ALenum) -> Void
typealias LPALISENABLED = @convention(c) (ALenum) -> ALboolean
typealias LPALGETSTRING = @convention(c) (ALenum) -> UnsafePointer<ALchar>
typealias LPALGETBOOLEANV = @convention(c) (ALenum, UnsafeMutablePointer<ALboolean>) -> Void
typealias LPALGETINTEGERV = @convention(c) (ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETFLOATV = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETDOUBLEV = @convention(c) (ALenum, UnsafeMutablePointer<ALdouble>) -> Void
typealias LPALGETBOOLEAN = @convention(c) (ALenum) -> ALboolean
typealias LPALGETINTEGER = @convention(c) (ALenum) -> ALint
typealias LPALGETFLOAT = @convention(c) (ALenum) -> ALfloat
typealias LPALGETDOUBLE = @convention(c) (ALenum) -> ALdouble
typealias LPALGETERROR = @convention(c) () -> ALenum
typealias LPALISEXTENSIONPRESENT = @convention(c) (UnsafePointer<ALchar>) -> ALboolean
typealias LPALGETPROCADDRESS = @convention(c) (UnsafePointer<ALchar>) -> UnsafeMutablePointer<Void>
typealias LPALGETENUMVALUE = @convention(c) (UnsafePointer<ALchar>) -> ALenum
typealias LPALLISTENERF = @convention(c) (ALenum, ALfloat) -> Void
typealias LPALLISTENER3F = @convention(c) (ALenum, ALfloat, ALfloat, ALfloat) -> Void
typealias LPALLISTENERFV = @convention(c) (ALenum, UnsafePointer<ALfloat>) -> Void
typealias LPALLISTENERI = @convention(c) (ALenum, ALint) -> Void
typealias LPALLISTENER3I = @convention(c) (ALenum, ALint, ALint, ALint) -> Void
typealias LPALLISTENERIV = @convention(c) (ALenum, UnsafePointer<ALint>) -> Void
typealias LPALGETLISTENERF = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETLISTENER3F = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETLISTENERFV = @convention(c) (ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETLISTENERI = @convention(c) (ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETLISTENER3I = @convention(c) (ALenum, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETLISTENERIV = @convention(c) (ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGENSOURCES = @convention(c) (ALsizei, UnsafeMutablePointer<ALuint>) -> Void
typealias LPALDELETESOURCES = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALISSOURCE = @convention(c) (ALuint) -> ALboolean
typealias LPALSOURCEF = @convention(c) (ALuint, ALenum, ALfloat) -> Void
typealias LPALSOURCE3F = @convention(c) (ALuint, ALenum, ALfloat, ALfloat, ALfloat) -> Void
typealias LPALSOURCEFV = @convention(c) (ALuint, ALenum, UnsafePointer<ALfloat>) -> Void
typealias LPALSOURCEI = @convention(c) (ALuint, ALenum, ALint) -> Void
typealias LPALSOURCE3I = @convention(c) (ALuint, ALenum, ALint, ALint, ALint) -> Void
typealias LPALSOURCEIV = @convention(c) (ALuint, ALenum, UnsafePointer<ALint>) -> Void
typealias LPALGETSOURCEF = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETSOURCE3F = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETSOURCEFV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETSOURCEI = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETSOURCE3I = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETSOURCEIV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALSOURCEPLAYV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCESTOPV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEREWINDV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEPAUSEV = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEPLAY = @convention(c) (ALuint) -> Void
typealias LPALSOURCESTOP = @convention(c) (ALuint) -> Void
typealias LPALSOURCEREWIND = @convention(c) (ALuint) -> Void
typealias LPALSOURCEPAUSE = @convention(c) (ALuint) -> Void
typealias LPALSOURCEQUEUEBUFFERS = @convention(c) (ALuint, ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALSOURCEUNQUEUEBUFFERS = @convention(c) (ALuint, ALsizei, UnsafeMutablePointer<ALuint>) -> Void
typealias LPALGENBUFFERS = @convention(c) (ALsizei, UnsafeMutablePointer<ALuint>) -> Void
typealias LPALDELETEBUFFERS = @convention(c) (ALsizei, UnsafePointer<ALuint>) -> Void
typealias LPALISBUFFER = @convention(c) (ALuint) -> ALboolean
typealias LPALBUFFERDATA = @convention(c) (ALuint, ALenum, UnsafePointer<Void>, ALsizei, ALsizei) -> Void
typealias LPALBUFFERF = @convention(c) (ALuint, ALenum, ALfloat) -> Void
typealias LPALBUFFER3F = @convention(c) (ALuint, ALenum, ALfloat, ALfloat, ALfloat) -> Void
typealias LPALBUFFERFV = @convention(c) (ALuint, ALenum, UnsafePointer<ALfloat>) -> Void
typealias LPALBUFFERI = @convention(c) (ALuint, ALenum, ALint) -> Void
typealias LPALBUFFER3I = @convention(c) (ALuint, ALenum, ALint, ALint, ALint) -> Void
typealias LPALBUFFERIV = @convention(c) (ALuint, ALenum, UnsafePointer<ALint>) -> Void
typealias LPALGETBUFFERF = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETBUFFER3F = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETBUFFERFV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALfloat>) -> Void
typealias LPALGETBUFFERI = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETBUFFER3I = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>, UnsafeMutablePointer<ALint>) -> Void
typealias LPALGETBUFFERIV = @convention(c) (ALuint, ALenum, UnsafeMutablePointer<ALint>) -> Void
typealias LPALDOPPLERFACTOR = @convention(c) (ALfloat) -> Void
typealias LPALDOPPLERVELOCITY = @convention(c) (ALfloat) -> Void
typealias LPALSPEEDOFSOUND = @convention(c) (ALfloat) -> Void
typealias LPALDISTANCEMODEL = @convention(c) (ALenum) -> Void
