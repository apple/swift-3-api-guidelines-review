
var TCL_ALPHA_RELEASE: Int32 { get }
var TCL_BETA_RELEASE: Int32 { get }
var TCL_FINAL_RELEASE: Int32 { get }
var TCL_MAJOR_VERSION: Int32 { get }
var TCL_MINOR_VERSION: Int32 { get }
var TCL_RELEASE_LEVEL: Int32 { get }
var TCL_RELEASE_SERIAL: Int32 { get }
var TCL_VERSION: String { get }
var TCL_PATCH_LEVEL: String { get }
typealias ClientData = UnsafeMutablePointer<Void>
var TCL_WIDE_INT_IS_LONG: Int32 { get }
var TCL_CFG_DO64BIT: Int32 { get }
typealias Tcl_WideInt = Int
typealias Tcl_WideUInt = UInt
typealias Tcl_StatBuf = stat
var TCL_LL_MODIFIER: String { get }
struct Tcl_Interp {
  var result: UnsafeMutablePointer<Int8>
  var freeProc: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!
  var errorLine: Int32
  init()
  init(result: UnsafeMutablePointer<Int8>, freeProc: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!, errorLine: Int32)
}
typealias Tcl_AsyncHandler = COpaquePointer
typealias Tcl_Channel = COpaquePointer
typealias Tcl_ChannelTypeVersion = COpaquePointer
typealias Tcl_Command = COpaquePointer
typealias Tcl_Condition = COpaquePointer
typealias Tcl_Dict = COpaquePointer
typealias Tcl_EncodingState = COpaquePointer
typealias Tcl_Encoding = COpaquePointer
typealias Tcl_InterpState = COpaquePointer
typealias Tcl_LoadHandle = COpaquePointer
typealias Tcl_Mutex = COpaquePointer
typealias Tcl_Pid = COpaquePointer
typealias Tcl_RegExp = COpaquePointer
typealias Tcl_ThreadDataKey = COpaquePointer
typealias Tcl_ThreadId = COpaquePointer
typealias Tcl_TimerToken = COpaquePointer
typealias Tcl_Trace = COpaquePointer
typealias Tcl_Var = COpaquePointer
typealias Tcl_ThreadCreateProc = ((ClientData) -> Void)
var TCL_THREAD_STACK_DEFAULT: Int32 { get }
var TCL_THREAD_NOFLAGS: Int32 { get }
var TCL_THREAD_JOINABLE: Int32 { get }
var TCL_MATCH_NOCASE: Int32 { get }
var TCL_REG_BASIC: Int32 { get }
var TCL_REG_EXTENDED: Int32 { get }
var TCL_REG_ADVF: Int32 { get }
var TCL_REG_ADVANCED: Int32 { get }
var TCL_REG_QUOTE: Int32 { get }
var TCL_REG_NOCASE: Int32 { get }
var TCL_REG_NOSUB: Int32 { get }
var TCL_REG_EXPANDED: Int32 { get }
var TCL_REG_NLSTOP: Int32 { get }
var TCL_REG_NLANCH: Int32 { get }
var TCL_REG_NEWLINE: Int32 { get }
var TCL_REG_CANMATCH: Int32 { get }
var TCL_REG_NOTBOL: Int32 { get }
var TCL_REG_NOTEOL: Int32 { get }
struct Tcl_RegExpIndices {
  var start: Int
  var end: Int
  init()
  init(start: Int, end: Int)
}
struct Tcl_RegExpInfo {
  var nsubs: Int32
  var matches: UnsafeMutablePointer<Tcl_RegExpIndices>
  var extendStart: Int
  var reserved: Int
  init()
  init(nsubs: Int32, matches: UnsafeMutablePointer<Tcl_RegExpIndices>, extendStart: Int, reserved: Int)
}
typealias Tcl_Stat_ = UnsafeMutablePointer<Tcl_StatBuf>
typealias Tcl_OldStat_ = UnsafeMutablePointer<stat>
var TCL_OK: Int32 { get }
var TCL_ERROR: Int32 { get }
var TCL_RETURN: Int32 { get }
var TCL_BREAK: Int32 { get }
var TCL_CONTINUE: Int32 { get }
var TCL_RESULT_SIZE: Int32 { get }
var TCL_SUBST_COMMANDS: Int32 { get }
var TCL_SUBST_VARIABLES: Int32 { get }
var TCL_SUBST_BACKSLASHES: Int32 { get }
var TCL_SUBST_ALL: Int32 { get }
struct Tcl_ValueType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var TCL_INT: Tcl_ValueType { get }
var TCL_DOUBLE: Tcl_ValueType { get }
var TCL_EITHER: Tcl_ValueType { get }
var TCL_WIDE_INT: Tcl_ValueType { get }
struct Tcl_Value {
  var type: Tcl_ValueType
  var intValue: Int
  var doubleValue: Double
  var wideValue: Tcl_WideInt
  init()
  init(type: Tcl_ValueType, intValue: Int, doubleValue: Double, wideValue: Tcl_WideInt)
}
typealias Tcl_AppInitProc = ((UnsafeMutablePointer<Tcl_Interp>) -> Int32)
typealias Tcl_AsyncProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)
typealias Tcl_ChannelProc = ((ClientData, Int32) -> Void)
typealias Tcl_CloseProc = ((ClientData) -> Void)
typealias Tcl_CmdDeleteProc = ((ClientData) -> Void)
typealias Tcl_CmdProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)
typealias Tcl_CmdTraceProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, ClientData, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Void)
typealias Tcl_CmdObjTraceProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, Tcl_Command, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)
typealias Tcl_CmdObjTraceDeleteProc = ((ClientData) -> Void)
typealias Tcl_DupInternalRepProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Void)
typealias Tcl_EncodingConvertProc = ((ClientData, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)
typealias Tcl_EncodingFreeProc = ((ClientData) -> Void)
typealias Tcl_EventProc = ((UnsafeMutablePointer<Tcl_Event>, Int32) -> Int32)
typealias Tcl_EventCheckProc = ((ClientData, Int32) -> Void)
typealias Tcl_EventDeleteProc = ((UnsafeMutablePointer<Tcl_Event>, ClientData) -> Int32)
typealias Tcl_EventSetupProc = ((ClientData, Int32) -> Void)
typealias Tcl_ExitProc = ((ClientData) -> Void)
typealias Tcl_FileProc = ((ClientData, Int32) -> Void)
typealias Tcl_FileFreeProc = ((ClientData) -> Void)
typealias Tcl_FreeInternalRepProc = ((UnsafeMutablePointer<Tcl_Obj>) -> Void)
typealias Tcl_FreeProc = ((UnsafeMutablePointer<Int8>) -> Void)
typealias Tcl_IdleProc = ((ClientData) -> Void)
typealias Tcl_InterpDeleteProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)
typealias Tcl_MathProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)
typealias Tcl_NamespaceDeleteProc = ((ClientData) -> Void)
typealias Tcl_ObjCmdProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)
typealias Tcl_PackageInitProc = ((UnsafeMutablePointer<Tcl_Interp>) -> Int32)
typealias Tcl_PackageUnloadProc = ((UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)
typealias Tcl_TcpAcceptProc = ((ClientData, Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Void)
typealias Tcl_TimerProc = ((ClientData) -> Void)
typealias Tcl_SetFromAnyProc = ((UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_UpdateStringProc = ((UnsafeMutablePointer<Tcl_Obj>) -> Void)
typealias Tcl_VarTraceProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)
typealias Tcl_CommandTraceProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)
typealias Tcl_CreateFileHandlerProc = ((Int32, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)
typealias Tcl_DeleteFileHandlerProc = ((Int32) -> Void)
typealias Tcl_AlertNotifierProc = ((ClientData) -> Void)
typealias Tcl_ServiceModeHookProc = ((Int32) -> Void)
typealias Tcl_InitNotifierProc = (() -> ClientData)
typealias Tcl_FinalizeNotifierProc = ((ClientData) -> Void)
typealias Tcl_MainLoopProc = (() -> Void)
struct Tcl_ObjType {
  var name: UnsafeMutablePointer<Int8>
  var freeIntRepProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var dupIntRepProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var updateStringProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var setFromAnyProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  init()
  init(name: UnsafeMutablePointer<Int8>, freeIntRepProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!, dupIntRepProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, updateStringProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!, setFromAnyProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!)
}
struct Tcl_Obj {
  struct __Unnamed_union_internalRep {
    struct __Unnamed_struct_twoPtrValue {
      var ptr1: UnsafeMutablePointer<Void>
      var ptr2: UnsafeMutablePointer<Void>
      init()
      init(ptr1: UnsafeMutablePointer<Void>, ptr2: UnsafeMutablePointer<Void>)
    }
    struct __Unnamed_struct_ptrAndLongRep {
      var ptr: UnsafeMutablePointer<Void>
      var value: UInt
      init()
      init(ptr: UnsafeMutablePointer<Void>, value: UInt)
    }
    var longValue: Int
    var doubleValue: Double
    var otherValuePtr: UnsafeMutablePointer<Void>
    var wideValue: Tcl_WideInt
    var twoPtrValue: Tcl_Obj.__Unnamed_union_internalRep.__Unnamed_struct_twoPtrValue
    var ptrAndLongRep: Tcl_Obj.__Unnamed_union_internalRep.__Unnamed_struct_ptrAndLongRep
    init(longValue: Int)
    init(doubleValue: Double)
    init(otherValuePtr: UnsafeMutablePointer<Void>)
    init(wideValue: Tcl_WideInt)
    init(twoPtrValue: Tcl_Obj.__Unnamed_union_internalRep.__Unnamed_struct_twoPtrValue)
    init(ptrAndLongRep: Tcl_Obj.__Unnamed_union_internalRep.__Unnamed_struct_ptrAndLongRep)
    init()
  }
  var refCount: Int32
  var bytes: UnsafeMutablePointer<Int8>
  var length: Int32
  var typePtr: UnsafeMutablePointer<Tcl_ObjType>
  var internalRep: Tcl_Obj.__Unnamed_union_internalRep
  init()
  init(refCount: Int32, bytes: UnsafeMutablePointer<Int8>, length: Int32, typePtr: UnsafeMutablePointer<Tcl_ObjType>, internalRep: Tcl_Obj.__Unnamed_union_internalRep)
}
func Tcl_IncrRefCount(objPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_DecrRefCount(objPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_IsShared(objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
struct Tcl_SavedResult {
  var result: UnsafeMutablePointer<Int8>
  var freeProc: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!
  var objResultPtr: UnsafeMutablePointer<Tcl_Obj>
  var appendResult: UnsafeMutablePointer<Int8>
  var appendAvl: Int32
  var appendUsed: Int32
  var resultSpace: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(result: UnsafeMutablePointer<Int8>, freeProc: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!, objResultPtr: UnsafeMutablePointer<Tcl_Obj>, appendResult: UnsafeMutablePointer<Int8>, appendAvl: Int32, appendUsed: Int32, resultSpace: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
struct Tcl_Namespace {
  var name: UnsafeMutablePointer<Int8>
  var fullName: UnsafeMutablePointer<Int8>
  var clientData: ClientData
  var deleteProc: (@convention(c) (ClientData) -> Void)!
  var parentPtr: UnsafeMutablePointer<Tcl_Namespace>
  init()
  init(name: UnsafeMutablePointer<Int8>, fullName: UnsafeMutablePointer<Int8>, clientData: ClientData, deleteProc: (@convention(c) (ClientData) -> Void)!, parentPtr: UnsafeMutablePointer<Tcl_Namespace>)
}
struct Tcl_CallFrame {
  var nsPtr: UnsafeMutablePointer<Tcl_Namespace>
  var dummy1: Int32
  var dummy2: Int32
  var dummy3: UnsafeMutablePointer<Void>
  var dummy4: UnsafeMutablePointer<Void>
  var dummy5: UnsafeMutablePointer<Void>
  var dummy6: Int32
  var dummy7: UnsafeMutablePointer<Void>
  var dummy8: UnsafeMutablePointer<Void>
  var dummy9: Int32
  var dummy10: UnsafeMutablePointer<Void>
  var dummy11: UnsafeMutablePointer<Void>
  var dummy12: UnsafeMutablePointer<Void>
  var dummy13: UnsafeMutablePointer<Void>
  init()
  init(nsPtr: UnsafeMutablePointer<Tcl_Namespace>, dummy1: Int32, dummy2: Int32, dummy3: UnsafeMutablePointer<Void>, dummy4: UnsafeMutablePointer<Void>, dummy5: UnsafeMutablePointer<Void>, dummy6: Int32, dummy7: UnsafeMutablePointer<Void>, dummy8: UnsafeMutablePointer<Void>, dummy9: Int32, dummy10: UnsafeMutablePointer<Void>, dummy11: UnsafeMutablePointer<Void>, dummy12: UnsafeMutablePointer<Void>, dummy13: UnsafeMutablePointer<Void>)
}
struct Tcl_CmdInfo {
  var isNativeObjectProc: Int32
  var objProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var objClientData: ClientData
  var proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!
  var clientData: ClientData
  var deleteProc: (@convention(c) (ClientData) -> Void)!
  var deleteData: ClientData
  var namespacePtr: UnsafeMutablePointer<Tcl_Namespace>
  init()
  init(isNativeObjectProc: Int32, objProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, objClientData: ClientData, proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, clientData: ClientData, deleteProc: (@convention(c) (ClientData) -> Void)!, deleteData: ClientData, namespacePtr: UnsafeMutablePointer<Tcl_Namespace>)
}
var TCL_DSTRING_STATIC_SIZE: Int32 { get }
struct Tcl_DString {
  var string: UnsafeMutablePointer<Int8>
  var length: Int32
  var spaceAvl: Int32
  var staticSpace: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(string: UnsafeMutablePointer<Int8>, length: Int32, spaceAvl: Int32, staticSpace: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
var TCL_MAX_PREC: Int32 { get }
var TCL_INTEGER_SPACE: Int32 { get }
var TCL_DONT_USE_BRACES: Int32 { get }
var TCL_DONT_QUOTE_HASH: Int32 { get }
var TCL_EXACT: Int32 { get }
var TCL_NO_EVAL: Int32 { get }
var TCL_EVAL_GLOBAL: Int32 { get }
var TCL_EVAL_DIRECT: Int32 { get }
var TCL_EVAL_INVOKE: Int32 { get }
var TCL_GLOBAL_ONLY: Int32 { get }
var TCL_NAMESPACE_ONLY: Int32 { get }
var TCL_APPEND_VALUE: Int32 { get }
var TCL_LIST_ELEMENT: Int32 { get }
var TCL_TRACE_READS: Int32 { get }
var TCL_TRACE_WRITES: Int32 { get }
var TCL_TRACE_UNSETS: Int32 { get }
var TCL_TRACE_DESTROYED: Int32 { get }
var TCL_INTERP_DESTROYED: Int32 { get }
var TCL_LEAVE_ERR_MSG: Int32 { get }
var TCL_TRACE_ARRAY: Int32 { get }
var TCL_TRACE_OLD_STYLE: Int32 { get }
var TCL_TRACE_RESULT_DYNAMIC: Int32 { get }
var TCL_TRACE_RESULT_OBJECT: Int32 { get }
var TCL_ENSEMBLE_PREFIX: Int32 { get }
var TCL_TRACE_RENAME: Int32 { get }
var TCL_TRACE_DELETE: Int32 { get }
var TCL_ALLOW_INLINE_COMPILATION: Int32 { get }
var TCL_PARSE_PART1: Int32 { get }
var TCL_LINK_INT: Int32 { get }
var TCL_LINK_DOUBLE: Int32 { get }
var TCL_LINK_BOOLEAN: Int32 { get }
var TCL_LINK_STRING: Int32 { get }
var TCL_LINK_WIDE_INT: Int32 { get }
var TCL_LINK_CHAR: Int32 { get }
var TCL_LINK_UCHAR: Int32 { get }
var TCL_LINK_SHORT: Int32 { get }
var TCL_LINK_USHORT: Int32 { get }
var TCL_LINK_UINT: Int32 { get }
var TCL_LINK_LONG: Int32 { get }
var TCL_LINK_ULONG: Int32 { get }
var TCL_LINK_FLOAT: Int32 { get }
var TCL_LINK_WIDE_UINT: Int32 { get }
var TCL_LINK_READ_ONLY: Int32 { get }
typealias Tcl_HashKeyProc = ((UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Void>) -> UInt32)
typealias Tcl_CompareHashKeysProc = ((UnsafeMutablePointer<Void>, UnsafeMutablePointer<Tcl_HashEntry>) -> Int32)
typealias Tcl_AllocHashEntryProc = ((UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Tcl_HashEntry>)
typealias Tcl_FreeHashEntryProc = ((UnsafeMutablePointer<Tcl_HashEntry>) -> Void)
var TCL_HASH_KEY_STORE_HASH: Int32 { get }
struct Tcl_HashEntry {
  struct __Unnamed_union_key {
    var oneWordValue: UnsafeMutablePointer<Int8>
    var objPtr: UnsafeMutablePointer<Tcl_Obj>
    var words: (Int32)
    var string: (Int8, Int8, Int8, Int8)
    init(oneWordValue: UnsafeMutablePointer<Int8>)
    init(objPtr: UnsafeMutablePointer<Tcl_Obj>)
    init(words: (Int32))
    init(string: (Int8, Int8, Int8, Int8))
    init()
  }
  var nextPtr: UnsafeMutablePointer<Tcl_HashEntry>
  var tablePtr: UnsafeMutablePointer<Tcl_HashTable>
  var hash: UnsafeMutablePointer<Void>
  var clientData: ClientData
  var key: Tcl_HashEntry.__Unnamed_union_key
  init()
  init(nextPtr: UnsafeMutablePointer<Tcl_HashEntry>, tablePtr: UnsafeMutablePointer<Tcl_HashTable>, hash: UnsafeMutablePointer<Void>, clientData: ClientData, key: Tcl_HashEntry.__Unnamed_union_key)
}
var TCL_HASH_KEY_RANDOMIZE_HASH: Int32 { get }
var TCL_HASH_KEY_SYSTEM_HASH: Int32 { get }
var TCL_HASH_KEY_TYPE_VERSION: Int32 { get }
struct Tcl_HashKeyType {
  var version: Int32
  var flags: Int32
  var hashKeyProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Void>) -> UInt32)!
  var compareKeysProc: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Tcl_HashEntry>) -> Int32)!
  var allocEntryProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var freeEntryProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashEntry>) -> Void)!
  init()
  init(version: Int32, flags: Int32, hashKeyProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Void>) -> UInt32)!, compareKeysProc: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Tcl_HashEntry>) -> Int32)!, allocEntryProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, freeEntryProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashEntry>) -> Void)!)
}
var TCL_SMALL_HASH_TABLE: Int32 { get }
struct Tcl_HashTable {
  var buckets: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_HashEntry>>
  var staticBuckets: (UnsafeMutablePointer<Tcl_HashEntry>, UnsafeMutablePointer<Tcl_HashEntry>, UnsafeMutablePointer<Tcl_HashEntry>, UnsafeMutablePointer<Tcl_HashEntry>)
  var numBuckets: Int32
  var numEntries: Int32
  var rebuildSize: Int32
  var downShift: Int32
  var mask: Int32
  var keyType: Int32
  var findProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var createProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var typePtr: UnsafeMutablePointer<Tcl_HashKeyType>
  init()
  init(buckets: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_HashEntry>>, staticBuckets: (UnsafeMutablePointer<Tcl_HashEntry>, UnsafeMutablePointer<Tcl_HashEntry>, UnsafeMutablePointer<Tcl_HashEntry>, UnsafeMutablePointer<Tcl_HashEntry>), numBuckets: Int32, numEntries: Int32, rebuildSize: Int32, downShift: Int32, mask: Int32, keyType: Int32, findProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, createProc: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, typePtr: UnsafeMutablePointer<Tcl_HashKeyType>)
}
struct Tcl_HashSearch {
  var tablePtr: UnsafeMutablePointer<Tcl_HashTable>
  var nextIndex: Int32
  var nextEntryPtr: UnsafeMutablePointer<Tcl_HashEntry>
  init()
  init(tablePtr: UnsafeMutablePointer<Tcl_HashTable>, nextIndex: Int32, nextEntryPtr: UnsafeMutablePointer<Tcl_HashEntry>)
}
var TCL_STRING_KEYS: Int32 { get }
var TCL_ONE_WORD_KEYS: Int32 { get }
var TCL_CUSTOM_TYPE_KEYS: Int32 { get }
var TCL_CUSTOM_PTR_KEYS: Int32 { get }
struct Tcl_DictSearch {
  var next: UnsafeMutablePointer<Void>
  var epoch: Int32
  var dictionaryPtr: Tcl_Dict
  init()
  init(next: UnsafeMutablePointer<Void>, epoch: Int32, dictionaryPtr: Tcl_Dict)
}
var TCL_DONT_WAIT: Int32 { get }
var TCL_WINDOW_EVENTS: Int32 { get }
var TCL_FILE_EVENTS: Int32 { get }
var TCL_TIMER_EVENTS: Int32 { get }
var TCL_IDLE_EVENTS: Int32 { get }
struct Tcl_Event {
  var proc: (@convention(c) (UnsafeMutablePointer<Tcl_Event>, Int32) -> Int32)!
  var nextPtr: UnsafeMutablePointer<Tcl_Event>
  init()
  init(proc: (@convention(c) (UnsafeMutablePointer<Tcl_Event>, Int32) -> Int32)!, nextPtr: UnsafeMutablePointer<Tcl_Event>)
}
struct Tcl_QueuePosition : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var TCL_QUEUE_TAIL: Tcl_QueuePosition { get }
var TCL_QUEUE_HEAD: Tcl_QueuePosition { get }
var TCL_QUEUE_MARK: Tcl_QueuePosition { get }
var TCL_SERVICE_NONE: Int32 { get }
var TCL_SERVICE_ALL: Int32 { get }
struct Tcl_Time {
  var sec: Int
  var usec: Int
  init()
  init(sec: Int, usec: Int)
}
typealias Tcl_SetTimerProc = ((UnsafeMutablePointer<Tcl_Time>) -> Void)
typealias Tcl_WaitForEventProc = ((UnsafeMutablePointer<Tcl_Time>) -> Int32)
typealias Tcl_GetTimeProc = ((UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)
typealias Tcl_ScaleTimeProc = ((UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)
var TCL_READABLE: Int32 { get }
var TCL_WRITABLE: Int32 { get }
var TCL_EXCEPTION: Int32 { get }
var TCL_STDIN: Int32 { get }
var TCL_STDOUT: Int32 { get }
var TCL_STDERR: Int32 { get }
var TCL_ENFORCE_MODE: Int32 { get }
var TCL_CLOSE_READ: Int32 { get }
var TCL_CLOSE_WRITE: Int32 { get }
var TCL_CHANNEL_THREAD_INSERT: Int32 { get }
var TCL_CHANNEL_THREAD_REMOVE: Int32 { get }
typealias Tcl_DriverBlockModeProc = ((ClientData, Int32) -> Int32)
typealias Tcl_DriverCloseProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Int32)
typealias Tcl_DriverClose2Proc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)
typealias Tcl_DriverInputProc = ((ClientData, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)
typealias Tcl_DriverOutputProc = ((ClientData, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)
typealias Tcl_DriverSeekProc = ((ClientData, Int, Int32, UnsafeMutablePointer<Int32>) -> Int32)
typealias Tcl_DriverSetOptionProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)
typealias Tcl_DriverGetOptionProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)
typealias Tcl_DriverWatchProc = ((ClientData, Int32) -> Void)
typealias Tcl_DriverGetHandleProc = ((ClientData, Int32, UnsafeMutablePointer<ClientData>) -> Int32)
typealias Tcl_DriverFlushProc = ((ClientData) -> Int32)
typealias Tcl_DriverHandlerProc = ((ClientData, Int32) -> Int32)
typealias Tcl_DriverWideSeekProc = ((ClientData, Tcl_WideInt, Int32, UnsafeMutablePointer<Int32>) -> Tcl_WideInt)
typealias Tcl_DriverThreadActionProc = ((ClientData, Int32) -> Void)
typealias Tcl_DriverTruncateProc = ((ClientData, Tcl_WideInt) -> Int32)
struct Tcl_ChannelType {
  var typeName: UnsafeMutablePointer<Int8>
  var version: Tcl_ChannelTypeVersion
  var closeProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var inputProc: (@convention(c) (ClientData, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
  var outputProc: (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
  var seekProc: (@convention(c) (ClientData, Int, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
  var setOptionProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var getOptionProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!
  var watchProc: (@convention(c) (ClientData, Int32) -> Void)!
  var getHandleProc: (@convention(c) (ClientData, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!
  var close2Proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
  var blockModeProc: (@convention(c) (ClientData, Int32) -> Int32)!
  var flushProc: (@convention(c) (ClientData) -> Int32)!
  var handlerProc: (@convention(c) (ClientData, Int32) -> Int32)!
  var wideSeekProc: (@convention(c) (ClientData, Tcl_WideInt, Int32, UnsafeMutablePointer<Int32>) -> Tcl_WideInt)!
  var threadActionProc: (@convention(c) (ClientData, Int32) -> Void)!
  var truncateProc: (@convention(c) (ClientData, Tcl_WideInt) -> Int32)!
  init()
  init(typeName: UnsafeMutablePointer<Int8>, version: Tcl_ChannelTypeVersion, closeProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, inputProc: (@convention(c) (ClientData, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!, outputProc: (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!, seekProc: (@convention(c) (ClientData, Int, Int32, UnsafeMutablePointer<Int32>) -> Int32)!, setOptionProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, getOptionProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!, watchProc: (@convention(c) (ClientData, Int32) -> Void)!, getHandleProc: (@convention(c) (ClientData, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!, close2Proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, blockModeProc: (@convention(c) (ClientData, Int32) -> Int32)!, flushProc: (@convention(c) (ClientData) -> Int32)!, handlerProc: (@convention(c) (ClientData, Int32) -> Int32)!, wideSeekProc: (@convention(c) (ClientData, Tcl_WideInt, Int32, UnsafeMutablePointer<Int32>) -> Tcl_WideInt)!, threadActionProc: (@convention(c) (ClientData, Int32) -> Void)!, truncateProc: (@convention(c) (ClientData, Tcl_WideInt) -> Int32)!)
}
var TCL_MODE_BLOCKING: Int32 { get }
var TCL_MODE_NONBLOCKING: Int32 { get }
struct Tcl_PathType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var TCL_PATH_ABSOLUTE: Tcl_PathType { get }
var TCL_PATH_RELATIVE: Tcl_PathType { get }
var TCL_PATH_VOLUME_RELATIVE: Tcl_PathType { get }
struct Tcl_GlobTypeData {
  var type: Int32
  var perm: Int32
  var macType: UnsafeMutablePointer<Tcl_Obj>
  var macCreator: UnsafeMutablePointer<Tcl_Obj>
  init()
  init(type: Int32, perm: Int32, macType: UnsafeMutablePointer<Tcl_Obj>, macCreator: UnsafeMutablePointer<Tcl_Obj>)
}
var TCL_GLOB_TYPE_BLOCK: Int32 { get }
var TCL_GLOB_TYPE_CHAR: Int32 { get }
var TCL_GLOB_TYPE_DIR: Int32 { get }
var TCL_GLOB_TYPE_PIPE: Int32 { get }
var TCL_GLOB_TYPE_FILE: Int32 { get }
var TCL_GLOB_TYPE_LINK: Int32 { get }
var TCL_GLOB_TYPE_SOCK: Int32 { get }
var TCL_GLOB_TYPE_MOUNT: Int32 { get }
var TCL_GLOB_PERM_RONLY: Int32 { get }
var TCL_GLOB_PERM_HIDDEN: Int32 { get }
var TCL_GLOB_PERM_R: Int32 { get }
var TCL_GLOB_PERM_W: Int32 { get }
var TCL_GLOB_PERM_X: Int32 { get }
var TCL_UNLOAD_DETACH_FROM_INTERPRETER: Int32 { get }
var TCL_UNLOAD_DETACH_FROM_PROCESS: Int32 { get }
typealias Tcl_FSStatProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)
typealias Tcl_FSAccessProc = ((UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)
typealias Tcl_FSOpenFileChannelProc = ((UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> Tcl_Channel)
typealias Tcl_FSMatchInDirectoryProc = ((UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_GlobTypeData>) -> Int32)
typealias Tcl_FSGetCwdProc = ((UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)
typealias Tcl_FSChdirProc = ((UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_FSLstatProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)
typealias Tcl_FSCreateDirectoryProc = ((UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_FSDeleteFileProc = ((UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_FSCopyDirectoryProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)
typealias Tcl_FSCopyFileProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_FSRemoveDirectoryProc = ((UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)
typealias Tcl_FSRenameFileProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_FSUnloadFileProc = ((Tcl_LoadHandle) -> Void)
typealias Tcl_FSListVolumesProc = (() -> UnsafeMutablePointer<Tcl_Obj>)
typealias Tcl_FSUtimeProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<utimbuf>) -> Int32)
typealias Tcl_FSNormalizePathProc = ((UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)
typealias Tcl_FSFileAttrsGetProc = ((UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)
typealias Tcl_FSFileAttrStringsProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<UnsafePointer<Int8>>)
typealias Tcl_FSFileAttrsSetProc = ((UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)
typealias Tcl_FSLinkProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)
typealias Tcl_FSLoadFileProc = ((UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_LoadHandle>, UnsafeMutablePointer<(@convention(c) (Tcl_LoadHandle) -> Void)?>) -> Int32)
typealias Tcl_FSPathInFilesystemProc = ((UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<ClientData>) -> Int32)
typealias Tcl_FSFilesystemPathTypeProc = ((UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)
typealias Tcl_FSFilesystemSeparatorProc = ((UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)
typealias Tcl_FSFreeInternalRepProc = ((ClientData) -> Void)
typealias Tcl_FSDupInternalRepProc = ((ClientData) -> ClientData)
typealias Tcl_FSInternalToNormalizedProc = ((ClientData) -> UnsafeMutablePointer<Tcl_Obj>)
typealias Tcl_FSCreateInternalRepProc = ((UnsafeMutablePointer<Tcl_Obj>) -> ClientData)
typealias Tcl_FSVersion = COpaquePointer
struct Tcl_Filesystem {
  var typeName: UnsafePointer<Int8>
  var structureLength: Int32
  var version: Tcl_FSVersion
  var pathInFilesystemProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<ClientData>) -> Int32)!
  var dupInternalRepProc: (@convention(c) (ClientData) -> ClientData)!
  var freeInternalRepProc: (@convention(c) (ClientData) -> Void)!
  var internalToNormalizedProc: (@convention(c) (ClientData) -> UnsafeMutablePointer<Tcl_Obj>)!
  var createInternalRepProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> ClientData)!
  var normalizePathProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!
  var filesystemPathTypeProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var filesystemSeparatorProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var statProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!
  var accessProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!
  var openFileChannelProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> Tcl_Channel)!
  var matchInDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_GlobTypeData>) -> Int32)!
  var utimeProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<utimbuf>) -> Int32)!
  var linkProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var listVolumesProc: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!
  var fileAttrStringsProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<UnsafePointer<Int8>>)!
  var fileAttrsGetProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var fileAttrsSetProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var createDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var removeDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var deleteFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var copyFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var renameFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var copyDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var lstatProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!
  var loadFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_LoadHandle>, UnsafeMutablePointer<(@convention(c) (Tcl_LoadHandle) -> Void)?>) -> Int32)!
  var getCwdProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var chdirProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  init()
  init(typeName: UnsafePointer<Int8>, structureLength: Int32, version: Tcl_FSVersion, pathInFilesystemProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<ClientData>) -> Int32)!, dupInternalRepProc: (@convention(c) (ClientData) -> ClientData)!, freeInternalRepProc: (@convention(c) (ClientData) -> Void)!, internalToNormalizedProc: (@convention(c) (ClientData) -> UnsafeMutablePointer<Tcl_Obj>)!, createInternalRepProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> ClientData)!, normalizePathProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!, filesystemPathTypeProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, filesystemSeparatorProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, statProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!, accessProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!, openFileChannelProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> Tcl_Channel)!, matchInDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_GlobTypeData>) -> Int32)!, utimeProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<utimbuf>) -> Int32)!, linkProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, listVolumesProc: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!, fileAttrStringsProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<UnsafePointer<Int8>>)!, fileAttrsGetProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, fileAttrsSetProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, createDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, removeDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, deleteFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, copyFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, renameFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, copyDirectoryProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, lstatProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!, loadFileProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_LoadHandle>, UnsafeMutablePointer<(@convention(c) (Tcl_LoadHandle) -> Void)?>) -> Int32)!, getCwdProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)!, chdirProc: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!)
}
var TCL_CREATE_SYMBOLIC_LINK: Int32 { get }
var TCL_CREATE_HARD_LINK: Int32 { get }
struct Tcl_NotifierProcs {
  var setTimerProc: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var waitForEventProc: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Int32)!
  var createFileHandlerProc: (@convention(c) (Int32, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!
  var deleteFileHandlerProc: (@convention(c) (Int32) -> Void)!
  var initNotifierProc: (@convention(c) () -> ClientData)!
  var finalizeNotifierProc: (@convention(c) (ClientData) -> Void)!
  var alertNotifierProc: (@convention(c) (ClientData) -> Void)!
  var serviceModeHookProc: (@convention(c) (Int32) -> Void)!
  init()
  init(setTimerProc: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!, waitForEventProc: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Int32)!, createFileHandlerProc: (@convention(c) (Int32, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!, deleteFileHandlerProc: (@convention(c) (Int32) -> Void)!, initNotifierProc: (@convention(c) () -> ClientData)!, finalizeNotifierProc: (@convention(c) (ClientData) -> Void)!, alertNotifierProc: (@convention(c) (ClientData) -> Void)!, serviceModeHookProc: (@convention(c) (Int32) -> Void)!)
}
struct Tcl_EncodingType {
  var encodingName: UnsafePointer<Int8>
  var toUtfProc: (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!
  var fromUtfProc: (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!
  var freeProc: (@convention(c) (ClientData) -> Void)!
  var clientData: ClientData
  var nullSize: Int32
  init()
  init(encodingName: UnsafePointer<Int8>, toUtfProc: (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!, fromUtfProc: (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!, freeProc: (@convention(c) (ClientData) -> Void)!, clientData: ClientData, nullSize: Int32)
}
var TCL_ENCODING_START: Int32 { get }
var TCL_ENCODING_END: Int32 { get }
var TCL_ENCODING_STOPONERROR: Int32 { get }
struct Tcl_Token {
  var type: Int32
  var start: UnsafePointer<Int8>
  var size: Int32
  var numComponents: Int32
  init()
  init(type: Int32, start: UnsafePointer<Int8>, size: Int32, numComponents: Int32)
}
var TCL_TOKEN_WORD: Int32 { get }
var TCL_TOKEN_SIMPLE_WORD: Int32 { get }
var TCL_TOKEN_TEXT: Int32 { get }
var TCL_TOKEN_BS: Int32 { get }
var TCL_TOKEN_COMMAND: Int32 { get }
var TCL_TOKEN_VARIABLE: Int32 { get }
var TCL_TOKEN_SUB_EXPR: Int32 { get }
var TCL_TOKEN_OPERATOR: Int32 { get }
var TCL_TOKEN_EXPAND_WORD: Int32 { get }
var TCL_PARSE_SUCCESS: Int32 { get }
var TCL_PARSE_QUOTE_EXTRA: Int32 { get }
var TCL_PARSE_BRACE_EXTRA: Int32 { get }
var TCL_PARSE_MISSING_BRACE: Int32 { get }
var TCL_PARSE_MISSING_BRACKET: Int32 { get }
var TCL_PARSE_MISSING_PAREN: Int32 { get }
var TCL_PARSE_MISSING_QUOTE: Int32 { get }
var TCL_PARSE_MISSING_VAR_BRACE: Int32 { get }
var TCL_PARSE_SYNTAX: Int32 { get }
var TCL_PARSE_BAD_NUMBER: Int32 { get }
var NUM_STATIC_TOKENS: Int32 { get }
struct Tcl_Parse {
  var commentStart: UnsafePointer<Int8>
  var commentSize: Int32
  var commandStart: UnsafePointer<Int8>
  var commandSize: Int32
  var numWords: Int32
  var tokenPtr: UnsafeMutablePointer<Tcl_Token>
  var numTokens: Int32
  var tokensAvailable: Int32
  var errorType: Int32
  var string: UnsafePointer<Int8>
  var end: UnsafePointer<Int8>
  var interp: UnsafeMutablePointer<Tcl_Interp>
  var term: UnsafePointer<Int8>
  var incomplete: Int32
  var staticTokens: (Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token)
  init()
  init(commentStart: UnsafePointer<Int8>, commentSize: Int32, commandStart: UnsafePointer<Int8>, commandSize: Int32, numWords: Int32, tokenPtr: UnsafeMutablePointer<Tcl_Token>, numTokens: Int32, tokensAvailable: Int32, errorType: Int32, string: UnsafePointer<Int8>, end: UnsafePointer<Int8>, interp: UnsafeMutablePointer<Tcl_Interp>, term: UnsafePointer<Int8>, incomplete: Int32, staticTokens: (Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token, Tcl_Token))
}
var TCL_CONVERT_MULTIBYTE: Int32 { get }
var TCL_CONVERT_SYNTAX: Int32 { get }
var TCL_CONVERT_UNKNOWN: Int32 { get }
var TCL_CONVERT_NOSPACE: Int32 { get }
var TCL_UTF_MAX: Int32 { get }
typealias Tcl_UniChar = UInt16
struct Tcl_Config {
  var key: UnsafePointer<Int8>
  var value: UnsafePointer<Int8>
  init()
  init(key: UnsafePointer<Int8>, value: UnsafePointer<Int8>)
}
var TCL_LIMIT_COMMANDS: Int32 { get }
var TCL_LIMIT_TIME: Int32 { get }
typealias Tcl_LimitHandlerProc = ((ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)
typealias Tcl_LimitHandlerDeleteProc = ((ClientData) -> Void)
typealias mp_digit = UInt32
func Tcl_InitStubs(interp: UnsafeMutablePointer<Tcl_Interp>, _ version: UnsafePointer<Int8>, _ exact: Int32) -> UnsafePointer<Int8>
func TclTomMathInitializeStubs(interp: UnsafeMutablePointer<Tcl_Interp>, _ version: UnsafePointer<Int8>, _ epoch: Int32, _ revision: Int32) -> UnsafePointer<Int8>
func Tcl_Main(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ appInitProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!)
func Tcl_PkgInitStubsCheck(interp: UnsafeMutablePointer<Tcl_Interp>, _ version: UnsafePointer<Int8>, _ exact: Int32) -> UnsafePointer<Int8>
func Tcl_AppInit(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_PkgProvideEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ version: UnsafePointer<Int8>, _ clientData: ClientData) -> Int32
func Tcl_PkgRequireEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ version: UnsafePointer<Int8>, _ exact: Int32, _ clientDataPtr: UnsafeMutablePointer<ClientData>) -> UnsafePointer<Int8>
func Tcl_Alloc(size: UInt32) -> UnsafeMutablePointer<Int8>
func Tcl_Free(ptr: UnsafeMutablePointer<Int8>)
func Tcl_Realloc(ptr: UnsafeMutablePointer<Int8>, _ size: UInt32) -> UnsafeMutablePointer<Int8>
func Tcl_DbCkalloc(size: UInt32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Int8>
func Tcl_DbCkfree(ptr: UnsafeMutablePointer<Int8>, _ file: UnsafePointer<Int8>, _ line: Int32) -> Int32
func Tcl_DbCkrealloc(ptr: UnsafeMutablePointer<Int8>, _ size: UInt32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Int8>
func Tcl_CreateFileHandler(fd: Int32, _ mask: Int32, _ proc: (@convention(c) (ClientData, Int32) -> Void)!, _ clientData: ClientData)
func Tcl_DeleteFileHandler(fd: Int32)
func Tcl_SetTimer(timePtr: UnsafeMutablePointer<Tcl_Time>)
func Tcl_Sleep(ms: Int32)
func Tcl_WaitForEvent(timePtr: UnsafeMutablePointer<Tcl_Time>) -> Int32
func Tcl_AppendAllObjTypes(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_AppendToObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ bytes: UnsafePointer<Int8>, _ length: Int32)
func Tcl_ConcatObj(objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_ConvertToType(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ typePtr: UnsafeMutablePointer<Tcl_ObjType>) -> Int32
func Tcl_DbDecrRefCount(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ file: UnsafePointer<Int8>, _ line: Int32)
func Tcl_DbIncrRefCount(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ file: UnsafePointer<Int8>, _ line: Int32)
func Tcl_DbIsShared(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ file: UnsafePointer<Int8>, _ line: Int32) -> Int32
func Tcl_DbNewBooleanObj(boolValue: Int32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewByteArrayObj(bytes: UnsafePointer<UInt8>, _ length: Int32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewDoubleObj(doubleValue: Double, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewListObj(objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewLongObj(longValue: Int, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewObj(file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewStringObj(bytes: UnsafePointer<Int8>, _ length: Int32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DuplicateObj(objPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>
func TclFreeObj(objPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_GetBoolean(interp: UnsafeMutablePointer<Tcl_Interp>, _ src: UnsafePointer<Int8>, _ boolPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetBooleanFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ boolPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetByteArrayFromObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ lengthPtr: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<UInt8>
func Tcl_GetDouble(interp: UnsafeMutablePointer<Tcl_Interp>, _ src: UnsafePointer<Int8>, _ doublePtr: UnsafeMutablePointer<Double>) -> Int32
func Tcl_GetDoubleFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ doublePtr: UnsafeMutablePointer<Double>) -> Int32
func Tcl_GetIndexFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ tablePtr: UnsafeMutablePointer<UnsafePointer<Int8>>, _ msg: UnsafePointer<Int8>, _ flags: Int32, _ indexPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetInt(interp: UnsafeMutablePointer<Tcl_Interp>, _ src: UnsafePointer<Int8>, _ intPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetIntFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ intPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetLongFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ longPtr: UnsafeMutablePointer<Int>) -> Int32
func Tcl_GetObjType(typeName: UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_ObjType>
func Tcl_GetStringFromObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ lengthPtr: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Int8>
func Tcl_InvalidateStringRep(objPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_ListObjAppendList(interp: UnsafeMutablePointer<Tcl_Interp>, _ listPtr: UnsafeMutablePointer<Tcl_Obj>, _ elemListPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_ListObjAppendElement(interp: UnsafeMutablePointer<Tcl_Interp>, _ listPtr: UnsafeMutablePointer<Tcl_Obj>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_ListObjGetElements(interp: UnsafeMutablePointer<Tcl_Interp>, _ listPtr: UnsafeMutablePointer<Tcl_Obj>, _ objcPtr: UnsafeMutablePointer<Int32>, _ objvPtr: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>>) -> Int32
func Tcl_ListObjIndex(interp: UnsafeMutablePointer<Tcl_Interp>, _ listPtr: UnsafeMutablePointer<Tcl_Obj>, _ index: Int32, _ objPtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_ListObjLength(interp: UnsafeMutablePointer<Tcl_Interp>, _ listPtr: UnsafeMutablePointer<Tcl_Obj>, _ lengthPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_ListObjReplace(interp: UnsafeMutablePointer<Tcl_Interp>, _ listPtr: UnsafeMutablePointer<Tcl_Obj>, _ first: Int32, _ count: Int32, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_NewBooleanObj(boolValue: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewByteArrayObj(bytes: UnsafePointer<UInt8>, _ length: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewDoubleObj(doubleValue: Double) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewIntObj(intValue: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewListObj(objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewLongObj(longValue: Int) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewObj() -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_NewStringObj(bytes: UnsafePointer<Int8>, _ length: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SetBooleanObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ boolValue: Int32)
func Tcl_SetByteArrayLength(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ length: Int32) -> UnsafeMutablePointer<UInt8>
func Tcl_SetByteArrayObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ bytes: UnsafePointer<UInt8>, _ length: Int32)
func Tcl_SetDoubleObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ doubleValue: Double)
func Tcl_SetIntObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ intValue: Int32)
func Tcl_SetListObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>)
func Tcl_SetLongObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ longValue: Int)
func Tcl_SetObjLength(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ length: Int32)
func Tcl_SetStringObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ bytes: UnsafePointer<Int8>, _ length: Int32)
func Tcl_AddErrorInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ message: UnsafePointer<Int8>)
func Tcl_AddObjErrorInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ message: UnsafePointer<Int8>, _ length: Int32)
func Tcl_AllowExceptions(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_AppendElement(interp: UnsafeMutablePointer<Tcl_Interp>, _ element: UnsafePointer<Int8>)
func Tcl_AsyncCreate(proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, _ clientData: ClientData) -> Tcl_AsyncHandler
func Tcl_AsyncDelete(async: Tcl_AsyncHandler)
func Tcl_AsyncInvoke(interp: UnsafeMutablePointer<Tcl_Interp>, _ code: Int32) -> Int32
func Tcl_AsyncMark(async: Tcl_AsyncHandler)
func Tcl_AsyncReady() -> Int32
func Tcl_BackgroundError(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_Backslash(src: UnsafePointer<Int8>, _ readPtr: UnsafeMutablePointer<Int32>) -> Int8
func Tcl_BadChannelOption(interp: UnsafeMutablePointer<Tcl_Interp>, _ optionName: UnsafePointer<Int8>, _ optionList: UnsafePointer<Int8>) -> Int32
func Tcl_CallWhenDeleted(interp: UnsafeMutablePointer<Tcl_Interp>, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, _ clientData: ClientData)
func Tcl_CancelIdleCall(idleProc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_Close(interp: UnsafeMutablePointer<Tcl_Interp>, _ chan: Tcl_Channel) -> Int32
func Tcl_CommandComplete(cmd: UnsafePointer<Int8>) -> Int32
func Tcl_Concat(argc: Int32, _ argv: UnsafePointer<UnsafePointer<Int8>>) -> UnsafeMutablePointer<Int8>
func Tcl_ConvertElement(src: UnsafePointer<Int8>, _ dst: UnsafeMutablePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_ConvertCountedElement(src: UnsafePointer<Int8>, _ length: Int32, _ dst: UnsafeMutablePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_CreateAlias(slave: UnsafeMutablePointer<Tcl_Interp>, _ slaveCmd: UnsafePointer<Int8>, _ target: UnsafeMutablePointer<Tcl_Interp>, _ targetCmd: UnsafePointer<Int8>, _ argc: Int32, _ argv: UnsafePointer<UnsafePointer<Int8>>) -> Int32
func Tcl_CreateAliasObj(slave: UnsafeMutablePointer<Tcl_Interp>, _ slaveCmd: UnsafePointer<Int8>, _ target: UnsafeMutablePointer<Tcl_Interp>, _ targetCmd: UnsafePointer<Int8>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_CreateChannel(typePtr: UnsafeMutablePointer<Tcl_ChannelType>, _ chanName: UnsafePointer<Int8>, _ instanceData: ClientData, _ mask: Int32) -> Tcl_Channel
func Tcl_CreateChannelHandler(chan: Tcl_Channel, _ mask: Int32, _ proc: (@convention(c) (ClientData, Int32) -> Void)!, _ clientData: ClientData)
func Tcl_CreateCloseHandler(chan: Tcl_Channel, _ proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_CreateCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdName: UnsafePointer<Int8>, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, _ clientData: ClientData, _ deleteProc: (@convention(c) (ClientData) -> Void)!) -> Tcl_Command
func Tcl_CreateEventSource(setupProc: (@convention(c) (ClientData, Int32) -> Void)!, _ checkProc: (@convention(c) (ClientData, Int32) -> Void)!, _ clientData: ClientData)
func Tcl_CreateExitHandler(proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_CreateInterp() -> UnsafeMutablePointer<Tcl_Interp>
func Tcl_CreateMathFunc(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ numArgs: Int32, _ argTypes: UnsafeMutablePointer<Tcl_ValueType>, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)!, _ clientData: ClientData)
func Tcl_CreateObjCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdName: UnsafePointer<Int8>, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, _ clientData: ClientData, _ deleteProc: (@convention(c) (ClientData) -> Void)!) -> Tcl_Command
func Tcl_CreateSlave(interp: UnsafeMutablePointer<Tcl_Interp>, _ slaveName: UnsafePointer<Int8>, _ isSafe: Int32) -> UnsafeMutablePointer<Tcl_Interp>
func Tcl_CreateTimerHandler(milliseconds: Int32, _ proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData) -> Tcl_TimerToken
func Tcl_CreateTrace(interp: UnsafeMutablePointer<Tcl_Interp>, _ level: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, ClientData, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Void)!, _ clientData: ClientData) -> Tcl_Trace
func Tcl_DeleteAssocData(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>)
func Tcl_DeleteChannelHandler(chan: Tcl_Channel, _ proc: (@convention(c) (ClientData, Int32) -> Void)!, _ clientData: ClientData)
func Tcl_DeleteCloseHandler(chan: Tcl_Channel, _ proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_DeleteCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdName: UnsafePointer<Int8>) -> Int32
func Tcl_DeleteCommandFromToken(interp: UnsafeMutablePointer<Tcl_Interp>, _ command: Tcl_Command) -> Int32
func Tcl_DeleteEvents(proc: (@convention(c) (UnsafeMutablePointer<Tcl_Event>, ClientData) -> Int32)!, _ clientData: ClientData)
func Tcl_DeleteEventSource(setupProc: (@convention(c) (ClientData, Int32) -> Void)!, _ checkProc: (@convention(c) (ClientData, Int32) -> Void)!, _ clientData: ClientData)
func Tcl_DeleteExitHandler(proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_DeleteHashEntry(entryPtr: UnsafeMutablePointer<Tcl_HashEntry>)
func Tcl_DeleteHashTable(tablePtr: UnsafeMutablePointer<Tcl_HashTable>)
func Tcl_DeleteInterp(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_DetachPids(numPids: Int32, _ pidPtr: UnsafeMutablePointer<Tcl_Pid>)
func Tcl_DeleteTimerHandler(token: Tcl_TimerToken)
func Tcl_DeleteTrace(interp: UnsafeMutablePointer<Tcl_Interp>, _ trace: Tcl_Trace)
func Tcl_DontCallWhenDeleted(interp: UnsafeMutablePointer<Tcl_Interp>, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, _ clientData: ClientData)
func Tcl_DoOneEvent(flags: Int32) -> Int32
func Tcl_DoWhenIdle(proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_DStringAppend(dsPtr: UnsafeMutablePointer<Tcl_DString>, _ bytes: UnsafePointer<Int8>, _ length: Int32) -> UnsafeMutablePointer<Int8>
func Tcl_DStringAppendElement(dsPtr: UnsafeMutablePointer<Tcl_DString>, _ element: UnsafePointer<Int8>) -> UnsafeMutablePointer<Int8>
func Tcl_DStringEndSublist(dsPtr: UnsafeMutablePointer<Tcl_DString>)
func Tcl_DStringFree(dsPtr: UnsafeMutablePointer<Tcl_DString>)
func Tcl_DStringGetResult(interp: UnsafeMutablePointer<Tcl_Interp>, _ dsPtr: UnsafeMutablePointer<Tcl_DString>)
func Tcl_DStringInit(dsPtr: UnsafeMutablePointer<Tcl_DString>)
func Tcl_DStringResult(interp: UnsafeMutablePointer<Tcl_Interp>, _ dsPtr: UnsafeMutablePointer<Tcl_DString>)
func Tcl_DStringSetLength(dsPtr: UnsafeMutablePointer<Tcl_DString>, _ length: Int32)
func Tcl_DStringStartSublist(dsPtr: UnsafeMutablePointer<Tcl_DString>)
func Tcl_Eof(chan: Tcl_Channel) -> Int32
func Tcl_ErrnoId() -> UnsafePointer<Int8>
func Tcl_ErrnoMsg(err: Int32) -> UnsafePointer<Int8>
func Tcl_Eval(interp: UnsafeMutablePointer<Tcl_Interp>, _ script: UnsafePointer<Int8>) -> Int32
func Tcl_EvalFile(interp: UnsafeMutablePointer<Tcl_Interp>, _ fileName: UnsafePointer<Int8>) -> Int32
func Tcl_EvalObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_EventuallyFree(clientData: ClientData, _ freeProc: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!)
func Tcl_Exit(status: Int32)
func Tcl_ExposeCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ hiddenCmdToken: UnsafePointer<Int8>, _ cmdName: UnsafePointer<Int8>) -> Int32
func Tcl_ExprBoolean(interp: UnsafeMutablePointer<Tcl_Interp>, _ expr: UnsafePointer<Int8>, _ ptr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_ExprBooleanObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ ptr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_ExprDouble(interp: UnsafeMutablePointer<Tcl_Interp>, _ expr: UnsafePointer<Int8>, _ ptr: UnsafeMutablePointer<Double>) -> Int32
func Tcl_ExprDoubleObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ ptr: UnsafeMutablePointer<Double>) -> Int32
func Tcl_ExprLong(interp: UnsafeMutablePointer<Tcl_Interp>, _ expr: UnsafePointer<Int8>, _ ptr: UnsafeMutablePointer<Int>) -> Int32
func Tcl_ExprLongObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ ptr: UnsafeMutablePointer<Int>) -> Int32
func Tcl_ExprObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ resultPtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_ExprString(interp: UnsafeMutablePointer<Tcl_Interp>, _ expr: UnsafePointer<Int8>) -> Int32
func Tcl_Finalize()
func Tcl_FindExecutable(argv0: UnsafePointer<Int8>)
func Tcl_FirstHashEntry(tablePtr: UnsafeMutablePointer<Tcl_HashTable>, _ searchPtr: UnsafeMutablePointer<Tcl_HashSearch>) -> UnsafeMutablePointer<Tcl_HashEntry>
func Tcl_Flush(chan: Tcl_Channel) -> Int32
func Tcl_FreeResult(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_GetAlias(interp: UnsafeMutablePointer<Tcl_Interp>, _ slaveCmd: UnsafePointer<Int8>, _ targetInterpPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Interp>>, _ targetCmdPtr: UnsafeMutablePointer<UnsafePointer<Int8>>, _ argcPtr: UnsafeMutablePointer<Int32>, _ argvPtr: UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Int32
func Tcl_GetAliasObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ slaveCmd: UnsafePointer<Int8>, _ targetInterpPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Interp>>, _ targetCmdPtr: UnsafeMutablePointer<UnsafePointer<Int8>>, _ objcPtr: UnsafeMutablePointer<Int32>, _ objv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>>) -> Int32
func Tcl_GetAssocData(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ procPtr: UnsafeMutablePointer<(@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)?>) -> ClientData
func Tcl_GetChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ chanName: UnsafePointer<Int8>, _ modePtr: UnsafeMutablePointer<Int32>) -> Tcl_Channel
func Tcl_GetChannelBufferSize(chan: Tcl_Channel) -> Int32
func Tcl_GetChannelHandle(chan: Tcl_Channel, _ direction: Int32, _ handlePtr: UnsafeMutablePointer<ClientData>) -> Int32
func Tcl_GetChannelInstanceData(chan: Tcl_Channel) -> ClientData
func Tcl_GetChannelMode(chan: Tcl_Channel) -> Int32
func Tcl_GetChannelName(chan: Tcl_Channel) -> UnsafePointer<Int8>
func Tcl_GetChannelOption(interp: UnsafeMutablePointer<Tcl_Interp>, _ chan: Tcl_Channel, _ optionName: UnsafePointer<Int8>, _ dsPtr: UnsafeMutablePointer<Tcl_DString>) -> Int32
func Tcl_GetChannelType(chan: Tcl_Channel) -> UnsafeMutablePointer<Tcl_ChannelType>
func Tcl_GetCommandInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdName: UnsafePointer<Int8>, _ infoPtr: UnsafeMutablePointer<Tcl_CmdInfo>) -> Int32
func Tcl_GetCommandName(interp: UnsafeMutablePointer<Tcl_Interp>, _ command: Tcl_Command) -> UnsafePointer<Int8>
func Tcl_GetErrno() -> Int32
func Tcl_GetHostName() -> UnsafePointer<Int8>
func Tcl_GetInterpPath(askInterp: UnsafeMutablePointer<Tcl_Interp>, _ slaveInterp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_GetMaster(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Interp>
func Tcl_GetNameOfExecutable() -> UnsafePointer<Int8>
func Tcl_GetObjResult(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_GetOpenFile(interp: UnsafeMutablePointer<Tcl_Interp>, _ chanID: UnsafePointer<Int8>, _ forWriting: Int32, _ checkUsage: Int32, _ filePtr: UnsafeMutablePointer<ClientData>) -> Int32
func Tcl_GetPathType(path: UnsafePointer<Int8>) -> Tcl_PathType
func Tcl_Gets(chan: Tcl_Channel, _ dsPtr: UnsafeMutablePointer<Tcl_DString>) -> Int32
func Tcl_GetsObj(chan: Tcl_Channel, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_GetServiceMode() -> Int32
func Tcl_GetSlave(interp: UnsafeMutablePointer<Tcl_Interp>, _ slaveName: UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_Interp>
func Tcl_GetStdChannel(type: Int32) -> Tcl_Channel
func Tcl_GetStringResult(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafePointer<Int8>
func Tcl_GetVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32) -> UnsafePointer<Int8>
func Tcl_GetVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ flags: Int32) -> UnsafePointer<Int8>
func Tcl_GlobalEval(interp: UnsafeMutablePointer<Tcl_Interp>, _ command: UnsafePointer<Int8>) -> Int32
func Tcl_GlobalEvalObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_HideCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdName: UnsafePointer<Int8>, _ hiddenCmdToken: UnsafePointer<Int8>) -> Int32
func Tcl_Init(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_InitHashTable(tablePtr: UnsafeMutablePointer<Tcl_HashTable>, _ keyType: Int32)
func Tcl_InputBlocked(chan: Tcl_Channel) -> Int32
func Tcl_InputBuffered(chan: Tcl_Channel) -> Int32
func Tcl_InterpDeleted(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_IsSafe(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_JoinPath(argc: Int32, _ argv: UnsafePointer<UnsafePointer<Int8>>, _ resultPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>
func Tcl_LinkVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ addr: UnsafeMutablePointer<Int8>, _ type: Int32) -> Int32
func Tcl_MakeFileChannel(handle: ClientData, _ mode: Int32) -> Tcl_Channel
func Tcl_MakeSafe(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_MakeTcpClientChannel(tcpSocket: ClientData) -> Tcl_Channel
func Tcl_Merge(argc: Int32, _ argv: UnsafePointer<UnsafePointer<Int8>>) -> UnsafeMutablePointer<Int8>
func Tcl_NextHashEntry(searchPtr: UnsafeMutablePointer<Tcl_HashSearch>) -> UnsafeMutablePointer<Tcl_HashEntry>
func Tcl_NotifyChannel(channel: Tcl_Channel, _ mask: Int32)
func Tcl_ObjGetVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1Ptr: UnsafeMutablePointer<Tcl_Obj>, _ part2Ptr: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_ObjSetVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1Ptr: UnsafeMutablePointer<Tcl_Obj>, _ part2Ptr: UnsafeMutablePointer<Tcl_Obj>, _ newValuePtr: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_OpenCommandChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>, _ flags: Int32) -> Tcl_Channel
func Tcl_OpenFileChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ fileName: UnsafePointer<Int8>, _ modeString: UnsafePointer<Int8>, _ permissions: Int32) -> Tcl_Channel
func Tcl_OpenTcpClient(interp: UnsafeMutablePointer<Tcl_Interp>, _ port: Int32, _ address: UnsafePointer<Int8>, _ myaddr: UnsafePointer<Int8>, _ myport: Int32, _ async: Int32) -> Tcl_Channel
func Tcl_OpenTcpServer(interp: UnsafeMutablePointer<Tcl_Interp>, _ port: Int32, _ host: UnsafePointer<Int8>, _ acceptProc: (@convention(c) (ClientData, Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Void)!, _ callbackData: ClientData) -> Tcl_Channel
func Tcl_Preserve(data: ClientData)
func Tcl_PrintDouble(interp: UnsafeMutablePointer<Tcl_Interp>, _ value: Double, _ dst: UnsafeMutablePointer<Int8>)
func Tcl_PutEnv(assignment: UnsafePointer<Int8>) -> Int32
func Tcl_PosixError(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafePointer<Int8>
func Tcl_QueueEvent(evPtr: UnsafeMutablePointer<Tcl_Event>, _ position: Tcl_QueuePosition)
func Tcl_Read(chan: Tcl_Channel, _ bufPtr: UnsafeMutablePointer<Int8>, _ toRead: Int32) -> Int32
func Tcl_ReapDetachedProcs()
func Tcl_RecordAndEval(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmd: UnsafePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_RecordAndEvalObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdPtr: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> Int32
func Tcl_RegisterChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ chan: Tcl_Channel)
func Tcl_RegisterObjType(typePtr: UnsafeMutablePointer<Tcl_ObjType>)
func Tcl_RegExpCompile(interp: UnsafeMutablePointer<Tcl_Interp>, _ pattern: UnsafePointer<Int8>) -> Tcl_RegExp
func Tcl_RegExpExec(interp: UnsafeMutablePointer<Tcl_Interp>, _ regexp: Tcl_RegExp, _ text: UnsafePointer<Int8>, _ start: UnsafePointer<Int8>) -> Int32
func Tcl_RegExpMatch(interp: UnsafeMutablePointer<Tcl_Interp>, _ text: UnsafePointer<Int8>, _ pattern: UnsafePointer<Int8>) -> Int32
func Tcl_RegExpRange(regexp: Tcl_RegExp, _ index: Int32, _ startPtr: UnsafeMutablePointer<UnsafePointer<Int8>>, _ endPtr: UnsafeMutablePointer<UnsafePointer<Int8>>)
func Tcl_Release(clientData: ClientData)
func Tcl_ResetResult(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_ScanElement(str: UnsafePointer<Int8>, _ flagPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_ScanCountedElement(str: UnsafePointer<Int8>, _ length: Int32, _ flagPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_SeekOld(chan: Tcl_Channel, _ offset: Int32, _ mode: Int32) -> Int32
func Tcl_ServiceAll() -> Int32
func Tcl_ServiceEvent(flags: Int32) -> Int32
func Tcl_SetAssocData(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, _ clientData: ClientData)
func Tcl_SetChannelBufferSize(chan: Tcl_Channel, _ sz: Int32)
func Tcl_SetChannelOption(interp: UnsafeMutablePointer<Tcl_Interp>, _ chan: Tcl_Channel, _ optionName: UnsafePointer<Int8>, _ newValue: UnsafePointer<Int8>) -> Int32
func Tcl_SetCommandInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdName: UnsafePointer<Int8>, _ infoPtr: UnsafePointer<Tcl_CmdInfo>) -> Int32
func Tcl_SetErrno(err: Int32)
func Tcl_SetMaxBlockTime(timePtr: UnsafeMutablePointer<Tcl_Time>)
func Tcl_SetPanicProc(panicProc: COpaquePointer)
func Tcl_SetRecursionLimit(interp: UnsafeMutablePointer<Tcl_Interp>, _ depth: Int32) -> Int32
func Tcl_SetResult(interp: UnsafeMutablePointer<Tcl_Interp>, _ result: UnsafeMutablePointer<Int8>, _ freeProc: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!)
func Tcl_SetServiceMode(mode: Int32) -> Int32
func Tcl_SetObjErrorCode(interp: UnsafeMutablePointer<Tcl_Interp>, _ errorObjPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_SetObjResult(interp: UnsafeMutablePointer<Tcl_Interp>, _ resultObjPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_SetStdChannel(channel: Tcl_Channel, _ type: Int32)
func Tcl_SetVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ newValue: UnsafePointer<Int8>, _ flags: Int32) -> UnsafePointer<Int8>
func Tcl_SetVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ newValue: UnsafePointer<Int8>, _ flags: Int32) -> UnsafePointer<Int8>
func Tcl_SignalId(sig: Int32) -> UnsafePointer<Int8>
func Tcl_SignalMsg(sig: Int32) -> UnsafePointer<Int8>
func Tcl_SourceRCFile(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_SplitList(interp: UnsafeMutablePointer<Tcl_Interp>, _ listStr: UnsafePointer<Int8>, _ argcPtr: UnsafeMutablePointer<Int32>, _ argvPtr: UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Int32
func Tcl_SplitPath(path: UnsafePointer<Int8>, _ argcPtr: UnsafeMutablePointer<Int32>, _ argvPtr: UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>)
func Tcl_StaticPackage(interp: UnsafeMutablePointer<Tcl_Interp>, _ pkgName: UnsafePointer<Int8>, _ initProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, _ safeInitProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!)
func Tcl_StringMatch(str: UnsafePointer<Int8>, _ pattern: UnsafePointer<Int8>) -> Int32
func Tcl_TellOld(chan: Tcl_Channel) -> Int32
func Tcl_TraceVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, _ clientData: ClientData) -> Int32
func Tcl_TraceVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ flags: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, _ clientData: ClientData) -> Int32
func Tcl_TranslateFileName(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ bufferPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>
func Tcl_Ungets(chan: Tcl_Channel, _ str: UnsafePointer<Int8>, _ len: Int32, _ atHead: Int32) -> Int32
func Tcl_UnlinkVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>)
func Tcl_UnregisterChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ chan: Tcl_Channel) -> Int32
func Tcl_UnsetVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_UnsetVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_UntraceVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, _ clientData: ClientData)
func Tcl_UntraceVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ flags: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, _ clientData: ClientData)
func Tcl_UpdateLinkedVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>)
func Tcl_UpVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ frameName: UnsafePointer<Int8>, _ varName: UnsafePointer<Int8>, _ localName: UnsafePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_UpVar2(interp: UnsafeMutablePointer<Tcl_Interp>, _ frameName: UnsafePointer<Int8>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ localName: UnsafePointer<Int8>, _ flags: Int32) -> Int32
func Tcl_VarTraceInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32, _ procPtr: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, _ prevClientData: ClientData) -> ClientData
func Tcl_VarTraceInfo2(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ flags: Int32, _ procPtr: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, _ prevClientData: ClientData) -> ClientData
func Tcl_Write(chan: Tcl_Channel, _ s: UnsafePointer<Int8>, _ slen: Int32) -> Int32
func Tcl_WrongNumArgs(interp: UnsafeMutablePointer<Tcl_Interp>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, _ message: UnsafePointer<Int8>)
func Tcl_DumpActiveMemory(fileName: UnsafePointer<Int8>) -> Int32
func Tcl_ValidateAllMemory(file: UnsafePointer<Int8>, _ line: Int32)
func Tcl_AppendResultVA(interp: UnsafeMutablePointer<Tcl_Interp>, _ argList: CVaListPointer)
func Tcl_AppendStringsToObjVA(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ argList: CVaListPointer)
func Tcl_HashStats(tablePtr: UnsafeMutablePointer<Tcl_HashTable>) -> UnsafeMutablePointer<Int8>
func Tcl_ParseVar(interp: UnsafeMutablePointer<Tcl_Interp>, _ start: UnsafePointer<Int8>, _ termPtr: UnsafeMutablePointer<UnsafePointer<Int8>>) -> UnsafePointer<Int8>
func Tcl_PkgPresent(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ version: UnsafePointer<Int8>, _ exact: Int32) -> UnsafePointer<Int8>
func Tcl_PkgPresentEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ version: UnsafePointer<Int8>, _ exact: Int32, _ clientDataPtr: UnsafeMutablePointer<ClientData>) -> UnsafePointer<Int8>
func Tcl_PkgProvide(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ version: UnsafePointer<Int8>) -> Int32
func Tcl_PkgRequire(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ version: UnsafePointer<Int8>, _ exact: Int32) -> UnsafePointer<Int8>
func Tcl_SetErrorCodeVA(interp: UnsafeMutablePointer<Tcl_Interp>, _ argList: CVaListPointer)
func Tcl_VarEvalVA(interp: UnsafeMutablePointer<Tcl_Interp>, _ argList: CVaListPointer) -> Int32
func Tcl_WaitPid(pid: Tcl_Pid, _ statPtr: UnsafeMutablePointer<Int32>, _ options: Int32) -> Tcl_Pid
func Tcl_PanicVA(format: UnsafePointer<Int8>, _ argList: CVaListPointer)
func Tcl_GetVersion(major: UnsafeMutablePointer<Int32>, _ minor: UnsafeMutablePointer<Int32>, _ patchLevel: UnsafeMutablePointer<Int32>, _ type: UnsafeMutablePointer<Int32>)
func Tcl_InitMemory(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_StackChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ typePtr: UnsafeMutablePointer<Tcl_ChannelType>, _ instanceData: ClientData, _ mask: Int32, _ prevChan: Tcl_Channel) -> Tcl_Channel
func Tcl_UnstackChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ chan: Tcl_Channel) -> Int32
func Tcl_GetStackedChannel(chan: Tcl_Channel) -> Tcl_Channel
func Tcl_SetMainLoop(proc: (@convention(c) () -> Void)!)
func Tcl_AppendObjToObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ appendObjPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_CreateEncoding(typePtr: UnsafePointer<Tcl_EncodingType>) -> Tcl_Encoding
func Tcl_CreateThreadExitHandler(proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_DeleteThreadExitHandler(proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_DiscardResult(statePtr: UnsafeMutablePointer<Tcl_SavedResult>)
func Tcl_EvalEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ script: UnsafePointer<Int8>, _ numBytes: Int32, _ flags: Int32) -> Int32
func Tcl_EvalObjv(interp: UnsafeMutablePointer<Tcl_Interp>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, _ flags: Int32) -> Int32
func Tcl_EvalObjEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> Int32
func Tcl_ExitThread(status: Int32)
func Tcl_ExternalToUtf(interp: UnsafeMutablePointer<Tcl_Interp>, _ encoding: Tcl_Encoding, _ src: UnsafePointer<Int8>, _ srcLen: Int32, _ flags: Int32, _ statePtr: UnsafeMutablePointer<Tcl_EncodingState>, _ dst: UnsafeMutablePointer<Int8>, _ dstLen: Int32, _ srcReadPtr: UnsafeMutablePointer<Int32>, _ dstWrotePtr: UnsafeMutablePointer<Int32>, _ dstCharsPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_ExternalToUtfDString(encoding: Tcl_Encoding, _ src: UnsafePointer<Int8>, _ srcLen: Int32, _ dsPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>
func Tcl_FinalizeThread()
func Tcl_FinalizeNotifier(clientData: ClientData)
func Tcl_FreeEncoding(encoding: Tcl_Encoding)
func Tcl_GetCurrentThread() -> Tcl_ThreadId
func Tcl_GetEncoding(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>) -> Tcl_Encoding
func Tcl_GetEncodingName(encoding: Tcl_Encoding) -> UnsafePointer<Int8>
func Tcl_GetEncodingNames(interp: UnsafeMutablePointer<Tcl_Interp>)
func Tcl_GetIndexFromObjStruct(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ tablePtr: UnsafePointer<Void>, _ offset: Int32, _ msg: UnsafePointer<Int8>, _ flags: Int32, _ indexPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetThreadData(keyPtr: UnsafeMutablePointer<Tcl_ThreadDataKey>, _ size: Int32) -> UnsafeMutablePointer<Void>
func Tcl_GetVar2Ex(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ flags: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_InitNotifier() -> ClientData
func Tcl_MutexLock(mutexPtr: UnsafeMutablePointer<Tcl_Mutex>)
func Tcl_MutexUnlock(mutexPtr: UnsafeMutablePointer<Tcl_Mutex>)
func Tcl_ConditionNotify(condPtr: UnsafeMutablePointer<Tcl_Condition>)
func Tcl_ConditionWait(condPtr: UnsafeMutablePointer<Tcl_Condition>, _ mutexPtr: UnsafeMutablePointer<Tcl_Mutex>, _ timePtr: UnsafeMutablePointer<Tcl_Time>)
func Tcl_NumUtfChars(src: UnsafePointer<Int8>, _ length: Int32) -> Int32
func Tcl_ReadChars(channel: Tcl_Channel, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ charsToRead: Int32, _ appendFlag: Int32) -> Int32
func Tcl_RestoreResult(interp: UnsafeMutablePointer<Tcl_Interp>, _ statePtr: UnsafeMutablePointer<Tcl_SavedResult>)
func Tcl_SaveResult(interp: UnsafeMutablePointer<Tcl_Interp>, _ statePtr: UnsafeMutablePointer<Tcl_SavedResult>)
func Tcl_SetSystemEncoding(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>) -> Int32
func Tcl_SetVar2Ex(interp: UnsafeMutablePointer<Tcl_Interp>, _ part1: UnsafePointer<Int8>, _ part2: UnsafePointer<Int8>, _ newValuePtr: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_ThreadAlert(threadId: Tcl_ThreadId)
func Tcl_ThreadQueueEvent(threadId: Tcl_ThreadId, _ evPtr: UnsafeMutablePointer<Tcl_Event>, _ position: Tcl_QueuePosition)
func Tcl_UniCharAtIndex(src: UnsafePointer<Int8>, _ index: Int32) -> Tcl_UniChar
func Tcl_UniCharToLower(ch: Int32) -> Tcl_UniChar
func Tcl_UniCharToTitle(ch: Int32) -> Tcl_UniChar
func Tcl_UniCharToUpper(ch: Int32) -> Tcl_UniChar
func Tcl_UniCharToUtf(ch: Int32, _ buf: UnsafeMutablePointer<Int8>) -> Int32
func Tcl_UtfAtIndex(src: UnsafePointer<Int8>, _ index: Int32) -> UnsafePointer<Int8>
func Tcl_UtfCharComplete(src: UnsafePointer<Int8>, _ length: Int32) -> Int32
func Tcl_UtfBackslash(src: UnsafePointer<Int8>, _ readPtr: UnsafeMutablePointer<Int32>, _ dst: UnsafeMutablePointer<Int8>) -> Int32
func Tcl_UtfFindFirst(src: UnsafePointer<Int8>, _ ch: Int32) -> UnsafePointer<Int8>
func Tcl_UtfFindLast(src: UnsafePointer<Int8>, _ ch: Int32) -> UnsafePointer<Int8>
func Tcl_UtfNext(src: UnsafePointer<Int8>) -> UnsafePointer<Int8>
func Tcl_UtfPrev(src: UnsafePointer<Int8>, _ start: UnsafePointer<Int8>) -> UnsafePointer<Int8>
func Tcl_UtfToExternal(interp: UnsafeMutablePointer<Tcl_Interp>, _ encoding: Tcl_Encoding, _ src: UnsafePointer<Int8>, _ srcLen: Int32, _ flags: Int32, _ statePtr: UnsafeMutablePointer<Tcl_EncodingState>, _ dst: UnsafeMutablePointer<Int8>, _ dstLen: Int32, _ srcReadPtr: UnsafeMutablePointer<Int32>, _ dstWrotePtr: UnsafeMutablePointer<Int32>, _ dstCharsPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_UtfToExternalDString(encoding: Tcl_Encoding, _ src: UnsafePointer<Int8>, _ srcLen: Int32, _ dsPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>
func Tcl_UtfToLower(src: UnsafeMutablePointer<Int8>) -> Int32
func Tcl_UtfToTitle(src: UnsafeMutablePointer<Int8>) -> Int32
func Tcl_UtfToUniChar(src: UnsafePointer<Int8>, _ chPtr: UnsafeMutablePointer<Tcl_UniChar>) -> Int32
func Tcl_UtfToUpper(src: UnsafeMutablePointer<Int8>) -> Int32
func Tcl_WriteChars(chan: Tcl_Channel, _ src: UnsafePointer<Int8>, _ srcLen: Int32) -> Int32
func Tcl_WriteObj(chan: Tcl_Channel, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_GetString(objPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Int8>
func Tcl_GetDefaultEncodingDir() -> UnsafePointer<Int8>
func Tcl_SetDefaultEncodingDir(path: UnsafePointer<Int8>)
func Tcl_AlertNotifier(clientData: ClientData)
func Tcl_ServiceModeHook(mode: Int32)
func Tcl_UniCharIsAlnum(ch: Int32) -> Int32
func Tcl_UniCharIsAlpha(ch: Int32) -> Int32
func Tcl_UniCharIsDigit(ch: Int32) -> Int32
func Tcl_UniCharIsLower(ch: Int32) -> Int32
func Tcl_UniCharIsSpace(ch: Int32) -> Int32
func Tcl_UniCharIsUpper(ch: Int32) -> Int32
func Tcl_UniCharIsWordChar(ch: Int32) -> Int32
func Tcl_UniCharLen(uniStr: UnsafePointer<Tcl_UniChar>) -> Int32
func Tcl_UniCharNcmp(ucs: UnsafePointer<Tcl_UniChar>, _ uct: UnsafePointer<Tcl_UniChar>, _ numChars: UInt) -> Int32
func Tcl_UniCharToUtfDString(uniStr: UnsafePointer<Tcl_UniChar>, _ uniLength: Int32, _ dsPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>
func Tcl_UtfToUniCharDString(src: UnsafePointer<Int8>, _ length: Int32, _ dsPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Tcl_UniChar>
func Tcl_GetRegExpFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ patObj: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> Tcl_RegExp
func Tcl_EvalTokens(interp: UnsafeMutablePointer<Tcl_Interp>, _ tokenPtr: UnsafeMutablePointer<Tcl_Token>, _ count: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FreeParse(parsePtr: UnsafeMutablePointer<Tcl_Parse>)
func Tcl_LogCommandInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ script: UnsafePointer<Int8>, _ command: UnsafePointer<Int8>, _ length: Int32)
func Tcl_ParseBraces(interp: UnsafeMutablePointer<Tcl_Interp>, _ start: UnsafePointer<Int8>, _ numBytes: Int32, _ parsePtr: UnsafeMutablePointer<Tcl_Parse>, _ append: Int32, _ termPtr: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func Tcl_ParseCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ start: UnsafePointer<Int8>, _ numBytes: Int32, _ nested: Int32, _ parsePtr: UnsafeMutablePointer<Tcl_Parse>) -> Int32
func Tcl_ParseExpr(interp: UnsafeMutablePointer<Tcl_Interp>, _ start: UnsafePointer<Int8>, _ numBytes: Int32, _ parsePtr: UnsafeMutablePointer<Tcl_Parse>) -> Int32
func Tcl_ParseQuotedString(interp: UnsafeMutablePointer<Tcl_Interp>, _ start: UnsafePointer<Int8>, _ numBytes: Int32, _ parsePtr: UnsafeMutablePointer<Tcl_Parse>, _ append: Int32, _ termPtr: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func Tcl_ParseVarName(interp: UnsafeMutablePointer<Tcl_Interp>, _ start: UnsafePointer<Int8>, _ numBytes: Int32, _ parsePtr: UnsafeMutablePointer<Tcl_Parse>, _ append: Int32) -> Int32
func Tcl_GetCwd(interp: UnsafeMutablePointer<Tcl_Interp>, _ cwdPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>
func Tcl_Chdir(dirName: UnsafePointer<Int8>) -> Int32
func Tcl_Access(path: UnsafePointer<Int8>, _ mode: Int32) -> Int32
func Tcl_Stat(path: UnsafePointer<Int8>, _ bufPtr: UnsafeMutablePointer<stat>) -> Int32
func Tcl_UtfNcmp(s1: UnsafePointer<Int8>, _ s2: UnsafePointer<Int8>, _ n: UInt) -> Int32
func Tcl_UtfNcasecmp(s1: UnsafePointer<Int8>, _ s2: UnsafePointer<Int8>, _ n: UInt) -> Int32
func Tcl_StringCaseMatch(str: UnsafePointer<Int8>, _ pattern: UnsafePointer<Int8>, _ nocase: Int32) -> Int32
func Tcl_UniCharIsControl(ch: Int32) -> Int32
func Tcl_UniCharIsGraph(ch: Int32) -> Int32
func Tcl_UniCharIsPrint(ch: Int32) -> Int32
func Tcl_UniCharIsPunct(ch: Int32) -> Int32
func Tcl_RegExpExecObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ regexp: Tcl_RegExp, _ textObj: UnsafeMutablePointer<Tcl_Obj>, _ offset: Int32, _ nmatches: Int32, _ flags: Int32) -> Int32
func Tcl_RegExpGetInfo(regexp: Tcl_RegExp, _ infoPtr: UnsafeMutablePointer<Tcl_RegExpInfo>)
func Tcl_NewUnicodeObj(unicode: UnsafePointer<Tcl_UniChar>, _ numChars: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SetUnicodeObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ unicode: UnsafePointer<Tcl_UniChar>, _ numChars: Int32)
func Tcl_GetCharLength(objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_GetUniChar(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ index: Int32) -> Tcl_UniChar
func Tcl_GetUnicode(objPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_UniChar>
func Tcl_GetRange(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ first: Int32, _ last: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_AppendUnicodeToObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ unicode: UnsafePointer<Tcl_UniChar>, _ length: Int32)
func Tcl_RegExpMatchObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ textObj: UnsafeMutablePointer<Tcl_Obj>, _ patternObj: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_SetNotifier(notifierProcPtr: UnsafeMutablePointer<Tcl_NotifierProcs>)
func Tcl_GetAllocMutex() -> UnsafeMutablePointer<Tcl_Mutex>
func Tcl_GetChannelNames(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_GetChannelNamesEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ pattern: UnsafePointer<Int8>) -> Int32
func Tcl_ProcObjCmd(clientData: ClientData, _ interp: UnsafeMutablePointer<Tcl_Interp>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_ConditionFinalize(condPtr: UnsafeMutablePointer<Tcl_Condition>)
func Tcl_MutexFinalize(mutex: UnsafeMutablePointer<Tcl_Mutex>)
func Tcl_CreateThread(idPtr: UnsafeMutablePointer<Tcl_ThreadId>, _ proc: (@convention(c) (ClientData) -> Void)!, _ clientData: ClientData, _ stackSize: Int32, _ flags: Int32) -> Int32
func Tcl_ReadRaw(chan: Tcl_Channel, _ dst: UnsafeMutablePointer<Int8>, _ bytesToRead: Int32) -> Int32
func Tcl_WriteRaw(chan: Tcl_Channel, _ src: UnsafePointer<Int8>, _ srcLen: Int32) -> Int32
func Tcl_GetTopChannel(chan: Tcl_Channel) -> Tcl_Channel
func Tcl_ChannelBuffered(chan: Tcl_Channel) -> Int32
func Tcl_ChannelName(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> UnsafePointer<Int8>
func Tcl_ChannelVersion(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> Tcl_ChannelTypeVersion
func Tcl_ChannelBlockModeProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Int32)!
func Tcl_ChannelCloseProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
func Tcl_ChannelClose2Proc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
func Tcl_ChannelInputProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
func Tcl_ChannelOutputProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
func Tcl_ChannelSeekProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
func Tcl_ChannelSetOptionProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
func Tcl_ChannelGetOptionProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!
func Tcl_ChannelWatchProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Void)!
func Tcl_ChannelGetHandleProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!
func Tcl_ChannelFlushProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData) -> Int32)!
func Tcl_ChannelHandlerProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Int32)!
func Tcl_JoinThread(threadId: Tcl_ThreadId, _ result: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_IsChannelShared(channel: Tcl_Channel) -> Int32
func Tcl_IsChannelRegistered(interp: UnsafeMutablePointer<Tcl_Interp>, _ channel: Tcl_Channel) -> Int32
func Tcl_CutChannel(channel: Tcl_Channel)
func Tcl_SpliceChannel(channel: Tcl_Channel)
func Tcl_ClearChannelHandlers(channel: Tcl_Channel)
func Tcl_IsChannelExisting(channelName: UnsafePointer<Int8>) -> Int32
func Tcl_UniCharNcasecmp(ucs: UnsafePointer<Tcl_UniChar>, _ uct: UnsafePointer<Tcl_UniChar>, _ numChars: UInt) -> Int32
func Tcl_UniCharCaseMatch(uniStr: UnsafePointer<Tcl_UniChar>, _ uniPattern: UnsafePointer<Tcl_UniChar>, _ nocase: Int32) -> Int32
func Tcl_FindHashEntry(tablePtr: UnsafeMutablePointer<Tcl_HashTable>, _ key: UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_HashEntry>
func Tcl_CreateHashEntry(tablePtr: UnsafeMutablePointer<Tcl_HashTable>, _ key: UnsafePointer<Int8>, _ newPtr: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_HashEntry>
func Tcl_InitCustomHashTable(tablePtr: UnsafeMutablePointer<Tcl_HashTable>, _ keyType: Int32, _ typePtr: UnsafeMutablePointer<Tcl_HashKeyType>)
func Tcl_InitObjHashTable(tablePtr: UnsafeMutablePointer<Tcl_HashTable>)
func Tcl_CommandTraceInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32, _ procPtr: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, _ prevClientData: ClientData) -> ClientData
func Tcl_TraceCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, _ clientData: ClientData) -> Int32
func Tcl_UntraceCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ varName: UnsafePointer<Int8>, _ flags: Int32, _ proc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, _ clientData: ClientData)
func Tcl_AttemptAlloc(size: UInt32) -> UnsafeMutablePointer<Int8>
func Tcl_AttemptDbCkalloc(size: UInt32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Int8>
func Tcl_AttemptRealloc(ptr: UnsafeMutablePointer<Int8>, _ size: UInt32) -> UnsafeMutablePointer<Int8>
func Tcl_AttemptDbCkrealloc(ptr: UnsafeMutablePointer<Int8>, _ size: UInt32, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Int8>
func Tcl_AttemptSetObjLength(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ length: Int32) -> Int32
func Tcl_GetChannelThread(channel: Tcl_Channel) -> Tcl_ThreadId
func Tcl_GetUnicodeFromObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ lengthPtr: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_UniChar>
func Tcl_GetMathFuncInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ numArgsPtr: UnsafeMutablePointer<Int32>, _ argTypesPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_ValueType>>, _ procPtr: UnsafeMutablePointer<(@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)?>, _ clientDataPtr: UnsafeMutablePointer<ClientData>) -> Int32
func Tcl_ListMathFuncs(interp: UnsafeMutablePointer<Tcl_Interp>, _ pattern: UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SubstObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DetachChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ channel: Tcl_Channel) -> Int32
func Tcl_IsStandardChannel(channel: Tcl_Channel) -> Int32
func Tcl_FSCopyFile(srcPathPtr: UnsafeMutablePointer<Tcl_Obj>, _ destPathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSCopyDirectory(srcPathPtr: UnsafeMutablePointer<Tcl_Obj>, _ destPathPtr: UnsafeMutablePointer<Tcl_Obj>, _ errorPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_FSCreateDirectory(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSDeleteFile(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSLoadFile(interp: UnsafeMutablePointer<Tcl_Interp>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ sym1: UnsafePointer<Int8>, _ sym2: UnsafePointer<Int8>, _ proc1Ptr: UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)?>, _ proc2Ptr: UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)?>, _ handlePtr: UnsafeMutablePointer<Tcl_LoadHandle>, _ unloadProcPtr: UnsafeMutablePointer<(@convention(c) (Tcl_LoadHandle) -> Void)?>) -> Int32
func Tcl_FSMatchInDirectory(interp: UnsafeMutablePointer<Tcl_Interp>, _ result: UnsafeMutablePointer<Tcl_Obj>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ pattern: UnsafePointer<Int8>, _ types: UnsafeMutablePointer<Tcl_GlobTypeData>) -> Int32
func Tcl_FSLink(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ toPtr: UnsafeMutablePointer<Tcl_Obj>, _ linkAction: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSRemoveDirectory(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ recursive: Int32, _ errorPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_FSRenameFile(srcPathPtr: UnsafeMutablePointer<Tcl_Obj>, _ destPathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSLstat(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ buf: UnsafeMutablePointer<Tcl_StatBuf>) -> Int32
func Tcl_FSUtime(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ tval: UnsafeMutablePointer<utimbuf>) -> Int32
func Tcl_FSFileAttrsGet(interp: UnsafeMutablePointer<Tcl_Interp>, _ index: Int32, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ objPtrRef: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_FSFileAttrsSet(interp: UnsafeMutablePointer<Tcl_Interp>, _ index: Int32, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSFileAttrStrings(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ objPtrRef: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<UnsafePointer<Int8>>
func Tcl_FSStat(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ buf: UnsafeMutablePointer<Tcl_StatBuf>) -> Int32
func Tcl_FSAccess(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ mode: Int32) -> Int32
func Tcl_FSOpenFileChannel(interp: UnsafeMutablePointer<Tcl_Interp>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ modeString: UnsafePointer<Int8>, _ permissions: Int32) -> Tcl_Channel
func Tcl_FSGetCwd(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSChdir(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSConvertToPathType(interp: UnsafeMutablePointer<Tcl_Interp>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSJoinPath(listObj: UnsafeMutablePointer<Tcl_Obj>, _ elements: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSSplitPath(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ lenPtr: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSEqualPaths(firstPtr: UnsafeMutablePointer<Tcl_Obj>, _ secondPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSGetNormalizedPath(interp: UnsafeMutablePointer<Tcl_Interp>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSJoinToPath(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSGetInternalRep(pathPtr: UnsafeMutablePointer<Tcl_Obj>, _ fsPtr: UnsafeMutablePointer<Tcl_Filesystem>) -> ClientData
func Tcl_FSGetTranslatedPath(interp: UnsafeMutablePointer<Tcl_Interp>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSEvalFile(interp: UnsafeMutablePointer<Tcl_Interp>, _ fileName: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_FSNewNativePath(fromFilesystem: UnsafeMutablePointer<Tcl_Filesystem>, _ clientData: ClientData) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSGetNativePath(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafePointer<Int8>
func Tcl_FSFileSystemInfo(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSPathSeparator(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSListVolumes() -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_FSRegister(clientData: ClientData, _ fsPtr: UnsafeMutablePointer<Tcl_Filesystem>) -> Int32
func Tcl_FSUnregister(fsPtr: UnsafeMutablePointer<Tcl_Filesystem>) -> Int32
func Tcl_FSData(fsPtr: UnsafeMutablePointer<Tcl_Filesystem>) -> ClientData
func Tcl_FSGetTranslatedStringPath(interp: UnsafeMutablePointer<Tcl_Interp>, _ pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafePointer<Int8>
func Tcl_FSGetFileSystemForPath(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Filesystem>
func Tcl_FSGetPathType(pathPtr: UnsafeMutablePointer<Tcl_Obj>) -> Tcl_PathType
func Tcl_OutputBuffered(chan: Tcl_Channel) -> Int32
func Tcl_FSMountsChanged(fsPtr: UnsafeMutablePointer<Tcl_Filesystem>)
func Tcl_EvalTokensStandard(interp: UnsafeMutablePointer<Tcl_Interp>, _ tokenPtr: UnsafeMutablePointer<Tcl_Token>, _ count: Int32) -> Int32
func Tcl_GetTime(timeBuf: UnsafeMutablePointer<Tcl_Time>)
func Tcl_CreateObjTrace(interp: UnsafeMutablePointer<Tcl_Interp>, _ level: Int32, _ flags: Int32, _ objProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, Tcl_Command, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, _ clientData: ClientData, _ delProc: (@convention(c) (ClientData) -> Void)!) -> Tcl_Trace
func Tcl_GetCommandInfoFromToken(token: Tcl_Command, _ infoPtr: UnsafeMutablePointer<Tcl_CmdInfo>) -> Int32
func Tcl_SetCommandInfoFromToken(token: Tcl_Command, _ infoPtr: UnsafePointer<Tcl_CmdInfo>) -> Int32
func Tcl_DbNewWideIntObj(wideValue: Tcl_WideInt, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_GetWideIntFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ widePtr: UnsafeMutablePointer<Tcl_WideInt>) -> Int32
func Tcl_NewWideIntObj(wideValue: Tcl_WideInt) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SetWideIntObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ wideValue: Tcl_WideInt)
func Tcl_AllocStatBuf() -> UnsafeMutablePointer<Tcl_StatBuf>
func Tcl_Seek(chan: Tcl_Channel, _ offset: Tcl_WideInt, _ mode: Int32) -> Tcl_WideInt
func Tcl_Tell(chan: Tcl_Channel) -> Tcl_WideInt
func Tcl_ChannelWideSeekProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Tcl_WideInt, Int32, UnsafeMutablePointer<Int32>) -> Tcl_WideInt)!
func Tcl_DictObjPut(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ keyPtr: UnsafeMutablePointer<Tcl_Obj>, _ valuePtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_DictObjGet(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ keyPtr: UnsafeMutablePointer<Tcl_Obj>, _ valuePtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_DictObjRemove(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ keyPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_DictObjSize(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ sizePtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_DictObjFirst(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ searchPtr: UnsafeMutablePointer<Tcl_DictSearch>, _ keyPtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, _ valuePtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, _ donePtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_DictObjNext(searchPtr: UnsafeMutablePointer<Tcl_DictSearch>, _ keyPtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, _ valuePtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, _ donePtr: UnsafeMutablePointer<Int32>)
func Tcl_DictObjDone(searchPtr: UnsafeMutablePointer<Tcl_DictSearch>)
func Tcl_DictObjPutKeyList(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ keyc: Int32, _ keyv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, _ valuePtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_DictObjRemoveKeyList(interp: UnsafeMutablePointer<Tcl_Interp>, _ dictPtr: UnsafeMutablePointer<Tcl_Obj>, _ keyc: Int32, _ keyv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_NewDictObj() -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewDictObj(file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_RegisterConfig(interp: UnsafeMutablePointer<Tcl_Interp>, _ pkgName: UnsafePointer<Int8>, _ configuration: UnsafeMutablePointer<Tcl_Config>, _ valEncoding: UnsafePointer<Int8>)
func Tcl_CreateNamespace(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ clientData: ClientData, _ deleteProc: (@convention(c) (ClientData) -> Void)!) -> UnsafeMutablePointer<Tcl_Namespace>
func Tcl_DeleteNamespace(nsPtr: UnsafeMutablePointer<Tcl_Namespace>)
func Tcl_AppendExportList(interp: UnsafeMutablePointer<Tcl_Interp>, _ nsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_Export(interp: UnsafeMutablePointer<Tcl_Interp>, _ nsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ pattern: UnsafePointer<Int8>, _ resetListFirst: Int32) -> Int32
func Tcl_Import(interp: UnsafeMutablePointer<Tcl_Interp>, _ nsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ pattern: UnsafePointer<Int8>, _ allowOverwrite: Int32) -> Int32
func Tcl_ForgetImport(interp: UnsafeMutablePointer<Tcl_Interp>, _ nsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ pattern: UnsafePointer<Int8>) -> Int32
func Tcl_GetCurrentNamespace(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Namespace>
func Tcl_GetGlobalNamespace(interp: UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Namespace>
func Tcl_FindNamespace(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ contextNsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ flags: Int32) -> UnsafeMutablePointer<Tcl_Namespace>
func Tcl_FindCommand(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ contextNsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ flags: Int32) -> Tcl_Command
func Tcl_GetCommandFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>) -> Tcl_Command
func Tcl_GetCommandFullName(interp: UnsafeMutablePointer<Tcl_Interp>, _ command: Tcl_Command, _ objPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_FSEvalFileEx(interp: UnsafeMutablePointer<Tcl_Interp>, _ fileName: UnsafeMutablePointer<Tcl_Obj>, _ encodingName: UnsafePointer<Int8>) -> Int32
func Tcl_SetExitProc(proc: (@convention(c) (ClientData) -> Void)!) -> (@convention(c) (ClientData) -> Void)!
func Tcl_LimitAddHandler(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32, _ handlerProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, _ clientData: ClientData, _ deleteProc: (@convention(c) (ClientData) -> Void)!)
func Tcl_LimitRemoveHandler(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32, _ handlerProc: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, _ clientData: ClientData)
func Tcl_LimitReady(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_LimitCheck(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_LimitExceeded(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_LimitSetCommands(interp: UnsafeMutablePointer<Tcl_Interp>, _ commandLimit: Int32)
func Tcl_LimitSetTime(interp: UnsafeMutablePointer<Tcl_Interp>, _ timeLimitPtr: UnsafeMutablePointer<Tcl_Time>)
func Tcl_LimitSetGranularity(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32, _ granularity: Int32)
func Tcl_LimitTypeEnabled(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32) -> Int32
func Tcl_LimitTypeExceeded(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32) -> Int32
func Tcl_LimitTypeSet(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32)
func Tcl_LimitTypeReset(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32)
func Tcl_LimitGetCommands(interp: UnsafeMutablePointer<Tcl_Interp>) -> Int32
func Tcl_LimitGetTime(interp: UnsafeMutablePointer<Tcl_Interp>, _ timeLimitPtr: UnsafeMutablePointer<Tcl_Time>)
func Tcl_LimitGetGranularity(interp: UnsafeMutablePointer<Tcl_Interp>, _ type: Int32) -> Int32
func Tcl_SaveInterpState(interp: UnsafeMutablePointer<Tcl_Interp>, _ status: Int32) -> Tcl_InterpState
func Tcl_RestoreInterpState(interp: UnsafeMutablePointer<Tcl_Interp>, _ state: Tcl_InterpState) -> Int32
func Tcl_DiscardInterpState(state: Tcl_InterpState)
func Tcl_SetReturnOptions(interp: UnsafeMutablePointer<Tcl_Interp>, _ options: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_GetReturnOptions(interp: UnsafeMutablePointer<Tcl_Interp>, _ result: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_IsEnsemble(token: Tcl_Command) -> Int32
func Tcl_CreateEnsemble(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ namespacePtr: UnsafeMutablePointer<Tcl_Namespace>, _ flags: Int32) -> Tcl_Command
func Tcl_FindEnsemble(interp: UnsafeMutablePointer<Tcl_Interp>, _ cmdNameObj: UnsafeMutablePointer<Tcl_Obj>, _ flags: Int32) -> Tcl_Command
func Tcl_SetEnsembleSubcommandList(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ subcmdList: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_SetEnsembleMappingDict(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ mapDict: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_SetEnsembleUnknownHandler(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ unknownList: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_SetEnsembleFlags(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ flags: Int32) -> Int32
func Tcl_GetEnsembleSubcommandList(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ subcmdListPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_GetEnsembleMappingDict(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ mapDictPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_GetEnsembleUnknownHandler(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ unknownListPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
func Tcl_GetEnsembleFlags(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ flagsPtr: UnsafeMutablePointer<Int32>) -> Int32
func Tcl_GetEnsembleNamespace(interp: UnsafeMutablePointer<Tcl_Interp>, _ token: Tcl_Command, _ namespacePtrPtr: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Namespace>>) -> Int32
func Tcl_SetTimeProc(getProc: (@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)!, _ scaleProc: (@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)!, _ clientData: ClientData)
func Tcl_QueryTimeProc(getProc: UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)?>, _ scaleProc: UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)?>, _ clientData: UnsafeMutablePointer<ClientData>)
func Tcl_ChannelThreadActionProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Void)!
func Tcl_NewBignumObj(value: UnsafeMutablePointer<mp_int>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_DbNewBignumObj(value: UnsafeMutablePointer<mp_int>, _ file: UnsafePointer<Int8>, _ line: Int32) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SetBignumObj(obj: UnsafeMutablePointer<Tcl_Obj>, _ value: UnsafeMutablePointer<mp_int>)
func Tcl_GetBignumFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ obj: UnsafeMutablePointer<Tcl_Obj>, _ value: UnsafeMutablePointer<mp_int>) -> Int32
func Tcl_TakeBignumFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ obj: UnsafeMutablePointer<Tcl_Obj>, _ value: UnsafeMutablePointer<mp_int>) -> Int32
func Tcl_TruncateChannel(chan: Tcl_Channel, _ length: Tcl_WideInt) -> Int32
func Tcl_ChannelTruncateProc(chanTypePtr: UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Tcl_WideInt) -> Int32)!
func Tcl_SetChannelErrorInterp(interp: UnsafeMutablePointer<Tcl_Interp>, _ msg: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_GetChannelErrorInterp(interp: UnsafeMutablePointer<Tcl_Interp>, _ msg: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>)
func Tcl_SetChannelError(chan: Tcl_Channel, _ msg: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_GetChannelError(chan: Tcl_Channel, _ msg: UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>)
func Tcl_InitBignumFromDouble(interp: UnsafeMutablePointer<Tcl_Interp>, _ initval: Double, _ toInit: UnsafeMutablePointer<mp_int>) -> Int32
func Tcl_GetNamespaceUnknownHandler(interp: UnsafeMutablePointer<Tcl_Interp>, _ nsPtr: UnsafeMutablePointer<Tcl_Namespace>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SetNamespaceUnknownHandler(interp: UnsafeMutablePointer<Tcl_Interp>, _ nsPtr: UnsafeMutablePointer<Tcl_Namespace>, _ handlerPtr: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_GetEncodingFromObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ encodingPtr: UnsafeMutablePointer<Tcl_Encoding>) -> Int32
func Tcl_GetEncodingSearchPath() -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_SetEncodingSearchPath(searchPath: UnsafeMutablePointer<Tcl_Obj>) -> Int32
func Tcl_GetEncodingNameFromEnvironment(bufPtr: UnsafeMutablePointer<Tcl_DString>) -> UnsafePointer<Int8>
func Tcl_PkgRequireProc(interp: UnsafeMutablePointer<Tcl_Interp>, _ name: UnsafePointer<Int8>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, _ clientDataPtr: UnsafeMutablePointer<ClientData>) -> Int32
func Tcl_AppendObjToErrorInfo(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>)
func Tcl_AppendLimitedToObj(objPtr: UnsafeMutablePointer<Tcl_Obj>, _ bytes: UnsafePointer<Int8>, _ length: Int32, _ limit: Int32, _ ellipsis: UnsafePointer<Int8>)
func Tcl_Format(interp: UnsafeMutablePointer<Tcl_Interp>, _ format: UnsafePointer<Int8>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>
func Tcl_AppendFormatToObj(interp: UnsafeMutablePointer<Tcl_Interp>, _ objPtr: UnsafeMutablePointer<Tcl_Obj>, _ format: UnsafePointer<Int8>, _ objc: Int32, _ objv: UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32
struct TclStubHooks {
  var tclPlatStubs: UnsafeMutablePointer<TclPlatStubs>
  var tclIntStubs: COpaquePointer
  var tclIntPlatStubs: COpaquePointer
  init()
}
struct TclStubs {
  var magic: Int32
  var hooks: UnsafeMutablePointer<TclStubHooks>
  var tcl_PkgProvideEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, ClientData) -> Int32)!
  var tcl_PkgRequireEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<ClientData>) -> UnsafePointer<Int8>)!
  var tcl_Panic: COpaquePointer
  var tcl_Alloc: (@convention(c) (UInt32) -> UnsafeMutablePointer<Int8>)!
  var tcl_Free: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!
  var tcl_Realloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32) -> UnsafeMutablePointer<Int8>)!
  var tcl_DbCkalloc: (@convention(c) (UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!
  var tcl_DbCkfree: (@convention(c) (UnsafeMutablePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_DbCkrealloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!
  var tcl_CreateFileHandler: (@convention(c) (Int32, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!
  var tcl_DeleteFileHandler: (@convention(c) (Int32) -> Void)!
  var tcl_SetTimer: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var tcl_Sleep: (@convention(c) (Int32) -> Void)!
  var tcl_WaitForEvent: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Int32)!
  var tcl_AppendAllObjTypes: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_AppendStringsToObj: COpaquePointer
  var tcl_AppendToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_ConcatObj: (@convention(c) (Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_ConvertToType: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_ObjType>) -> Int32)!
  var tcl_DbDecrRefCount: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_DbIncrRefCount: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_DbIsShared: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_DbNewBooleanObj: (@convention(c) (Int32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewByteArrayObj: (@convention(c) (UnsafePointer<UInt8>, Int32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewDoubleObj: (@convention(c) (Double, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewListObj: (@convention(c) (Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewLongObj: (@convention(c) (Int, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewObj: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewStringObj: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DuplicateObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tclFreeObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_GetBoolean: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetBooleanFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetByteArrayFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<UInt8>)!
  var tcl_GetDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Double>) -> Int32)!
  var tcl_GetDoubleFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Double>) -> Int32)!
  var tcl_GetIndexFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetInt: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetIntFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetLongFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int>) -> Int32)!
  var tcl_GetObjType: (@convention(c) (UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_ObjType>)!
  var tcl_GetStringFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Int8>)!
  var tcl_InvalidateStringRep: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_ListObjAppendList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_ListObjAppendElement: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_ListObjGetElements: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>>) -> Int32)!
  var tcl_ListObjIndex: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_ListObjLength: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_ListObjReplace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_NewBooleanObj: (@convention(c) (Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewByteArrayObj: (@convention(c) (UnsafePointer<UInt8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewDoubleObj: (@convention(c) (Double) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewIntObj: (@convention(c) (Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewListObj: (@convention(c) (Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewLongObj: (@convention(c) (Int) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewObj: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_NewStringObj: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SetBooleanObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Void)!
  var tcl_SetByteArrayLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<UInt8>)!
  var tcl_SetByteArrayObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<UInt8>, Int32) -> Void)!
  var tcl_SetDoubleObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Double) -> Void)!
  var tcl_SetIntObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Void)!
  var tcl_SetListObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Void)!
  var tcl_SetLongObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int) -> Void)!
  var tcl_SetObjLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Void)!
  var tcl_SetStringObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_AddErrorInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!
  var tcl_AddObjErrorInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_AllowExceptions: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_AppendElement: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!
  var tcl_AppendResult: COpaquePointer
  var tcl_AsyncCreate: (@convention(c) ((@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, ClientData) -> Tcl_AsyncHandler)!
  var tcl_AsyncDelete: (@convention(c) (Tcl_AsyncHandler) -> Void)!
  var tcl_AsyncInvoke: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
  var tcl_AsyncMark: (@convention(c) (Tcl_AsyncHandler) -> Void)!
  var tcl_AsyncReady: (@convention(c) () -> Int32)!
  var tcl_BackgroundError: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_Backslash: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int8)!
  var tcl_BadChannelOption: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_CallWhenDeleted: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!
  var tcl_CancelIdleCall: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_Close: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!
  var tcl_CommandComplete: (@convention(c) (UnsafePointer<Int8>) -> Int32)!
  var tcl_Concat: (@convention(c) (Int32, UnsafePointer<UnsafePointer<Int8>>) -> UnsafeMutablePointer<Int8>)!
  var tcl_ConvertElement: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int8>, Int32) -> Int32)!
  var tcl_ConvertCountedElement: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int8>, Int32) -> Int32)!
  var tcl_CreateAlias: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafePointer<Int8>>) -> Int32)!
  var tcl_CreateAliasObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_CreateChannel: (@convention(c) (UnsafeMutablePointer<Tcl_ChannelType>, UnsafePointer<Int8>, ClientData, Int32) -> Tcl_Channel)!
  var tcl_CreateChannelHandler: (@convention(c) (Tcl_Channel, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!
  var tcl_CreateCloseHandler: (@convention(c) (Tcl_Channel, (@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_CreateCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Tcl_Command)!
  var tcl_CreateEventSource: (@convention(c) ((@convention(c) (ClientData, Int32) -> Void)!, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!
  var tcl_CreateExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_CreateInterp: (@convention(c) () -> UnsafeMutablePointer<Tcl_Interp>)!
  var tcl_CreateMathFunc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_ValueType>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)!, ClientData) -> Void)!
  var tcl_CreateObjCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Tcl_Command)!
  var tcl_CreateSlave: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Interp>)!
  var tcl_CreateTimerHandler: (@convention(c) (Int32, (@convention(c) (ClientData) -> Void)!, ClientData) -> Tcl_TimerToken)!
  var tcl_CreateTrace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, ClientData, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Void)!, ClientData) -> Tcl_Trace)!
  var tcl_DeleteAssocData: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!
  var tcl_DeleteChannelHandler: (@convention(c) (Tcl_Channel, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!
  var tcl_DeleteCloseHandler: (@convention(c) (Tcl_Channel, (@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_DeleteCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_DeleteCommandFromToken: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command) -> Int32)!
  var tcl_DeleteEvents: (@convention(c) ((@convention(c) (UnsafeMutablePointer<Tcl_Event>, ClientData) -> Int32)!, ClientData) -> Void)!
  var tcl_DeleteEventSource: (@convention(c) ((@convention(c) (ClientData, Int32) -> Void)!, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!
  var tcl_DeleteExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_DeleteHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashEntry>) -> Void)!
  var tcl_DeleteHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>) -> Void)!
  var tcl_DeleteInterp: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_DetachPids: (@convention(c) (Int32, UnsafeMutablePointer<Tcl_Pid>) -> Void)!
  var tcl_DeleteTimerHandler: (@convention(c) (Tcl_TimerToken) -> Void)!
  var tcl_DeleteTrace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Trace) -> Void)!
  var tcl_DontCallWhenDeleted: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!
  var tcl_DoOneEvent: (@convention(c) (Int32) -> Int32)!
  var tcl_DoWhenIdle: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_DStringAppend: (@convention(c) (UnsafeMutablePointer<Tcl_DString>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!
  var tcl_DStringAppendElement: (@convention(c) (UnsafeMutablePointer<Tcl_DString>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Int8>)!
  var tcl_DStringEndSublist: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!
  var tcl_DStringFree: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!
  var tcl_DStringGetResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_DString>) -> Void)!
  var tcl_DStringInit: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!
  var tcl_DStringResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_DString>) -> Void)!
  var tcl_DStringSetLength: (@convention(c) (UnsafeMutablePointer<Tcl_DString>, Int32) -> Void)!
  var tcl_DStringStartSublist: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!
  var tcl_Eof: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_ErrnoId: (@convention(c) () -> UnsafePointer<Int8>)!
  var tcl_ErrnoMsg: (@convention(c) (Int32) -> UnsafePointer<Int8>)!
  var tcl_Eval: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_EvalFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_EvalObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_EventuallyFree: (@convention(c) (ClientData, (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!) -> Void)!
  var tcl_Exit: (@convention(c) (Int32) -> Void)!
  var tcl_ExposeCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_ExprBoolean: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_ExprBooleanObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_ExprDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Double>) -> Int32)!
  var tcl_ExprDoubleObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Double>) -> Int32)!
  var tcl_ExprLong: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int>) -> Int32)!
  var tcl_ExprLongObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int>) -> Int32)!
  var tcl_ExprObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_ExprString: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_Finalize: (@convention(c) () -> Void)!
  var tcl_FindExecutable: (@convention(c) (UnsafePointer<Int8>) -> Void)!
  var tcl_FirstHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Tcl_HashSearch>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var tcl_Flush: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_FreeResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_GetAlias: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Interp>>, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Int32)!
  var tcl_GetAliasObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Interp>>, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>>) -> Int32)!
  var tcl_GetAssocData: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<(@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)?>) -> ClientData)!
  var tcl_GetChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Tcl_Channel)!
  var tcl_GetChannelBufferSize: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_GetChannelHandle: (@convention(c) (Tcl_Channel, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!
  var tcl_GetChannelInstanceData: (@convention(c) (Tcl_Channel) -> ClientData)!
  var tcl_GetChannelMode: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_GetChannelName: (@convention(c) (Tcl_Channel) -> UnsafePointer<Int8>)!
  var tcl_GetChannelOption: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!
  var tcl_GetChannelType: (@convention(c) (Tcl_Channel) -> UnsafeMutablePointer<Tcl_ChannelType>)!
  var tcl_GetCommandInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_CmdInfo>) -> Int32)!
  var tcl_GetCommandName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command) -> UnsafePointer<Int8>)!
  var tcl_GetErrno: (@convention(c) () -> Int32)!
  var tcl_GetHostName: (@convention(c) () -> UnsafePointer<Int8>)!
  var tcl_GetInterpPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_GetMaster: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Interp>)!
  var tcl_GetNameOfExecutable: (@convention(c) () -> UnsafePointer<Int8>)!
  var tcl_GetObjResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_GetOpenFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!
  var tcl_GetPathType: (@convention(c) (UnsafePointer<Int8>) -> Tcl_PathType)!
  var tcl_Gets: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_DString>) -> Int32)!
  var tcl_GetsObj: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_GetServiceMode: (@convention(c) () -> Int32)!
  var tcl_GetSlave: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_Interp>)!
  var tcl_GetStdChannel: (@convention(c) (Int32) -> Tcl_Channel)!
  var tcl_GetStringResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafePointer<Int8>)!
  var tcl_GetVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_GetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_GlobalEval: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_GlobalEvalObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_HideCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_Init: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_InitHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, Int32) -> Void)!
  var tcl_InputBlocked: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_InputBuffered: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_InterpDeleted: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_IsSafe: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_JoinPath: (@convention(c) (Int32, UnsafePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!
  var tcl_LinkVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int8>, Int32) -> Int32)!
  var reserved188: UnsafeMutablePointer<Void>
  var tcl_MakeFileChannel: (@convention(c) (ClientData, Int32) -> Tcl_Channel)!
  var tcl_MakeSafe: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_MakeTcpClientChannel: (@convention(c) (ClientData) -> Tcl_Channel)!
  var tcl_Merge: (@convention(c) (Int32, UnsafePointer<UnsafePointer<Int8>>) -> UnsafeMutablePointer<Int8>)!
  var tcl_NextHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashSearch>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var tcl_NotifyChannel: (@convention(c) (Tcl_Channel, Int32) -> Void)!
  var tcl_ObjGetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_ObjSetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_OpenCommandChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>, Int32) -> Tcl_Channel)!
  var tcl_OpenFileChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Tcl_Channel)!
  var tcl_OpenTcpClient: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, Int32) -> Tcl_Channel)!
  var tcl_OpenTcpServer: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, (@convention(c) (ClientData, Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Void)!, ClientData) -> Tcl_Channel)!
  var tcl_Preserve: (@convention(c) (ClientData) -> Void)!
  var tcl_PrintDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Double, UnsafeMutablePointer<Int8>) -> Void)!
  var tcl_PutEnv: (@convention(c) (UnsafePointer<Int8>) -> Int32)!
  var tcl_PosixError: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafePointer<Int8>)!
  var tcl_QueueEvent: (@convention(c) (UnsafeMutablePointer<Tcl_Event>, Tcl_QueuePosition) -> Void)!
  var tcl_Read: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Int32)!
  var tcl_ReapDetachedProcs: (@convention(c) () -> Void)!
  var tcl_RecordAndEval: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_RecordAndEvalObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!
  var tcl_RegisterChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Void)!
  var tcl_RegisterObjType: (@convention(c) (UnsafeMutablePointer<Tcl_ObjType>) -> Void)!
  var tcl_RegExpCompile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Tcl_RegExp)!
  var tcl_RegExpExec: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_RegExp, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_RegExpMatch: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_RegExpRange: (@convention(c) (Tcl_RegExp, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Void)!
  var tcl_Release: (@convention(c) (ClientData) -> Void)!
  var tcl_ResetResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_ScanElement: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_ScanCountedElement: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_SeekOld: (@convention(c) (Tcl_Channel, Int32, Int32) -> Int32)!
  var tcl_ServiceAll: (@convention(c) () -> Int32)!
  var tcl_ServiceEvent: (@convention(c) (Int32) -> Int32)!
  var tcl_SetAssocData: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!
  var tcl_SetChannelBufferSize: (@convention(c) (Tcl_Channel, Int32) -> Void)!
  var tcl_SetChannelOption: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_SetCommandInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Tcl_CmdInfo>) -> Int32)!
  var tcl_SetErrno: (@convention(c) (Int32) -> Void)!
  var tcl_SetErrorCode: COpaquePointer
  var tcl_SetMaxBlockTime: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var tcl_SetPanicProc: (@convention(c) (COpaquePointer) -> Void)!
  var tcl_SetRecursionLimit: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
  var tcl_SetResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Int8>, (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!) -> Void)!
  var tcl_SetServiceMode: (@convention(c) (Int32) -> Int32)!
  var tcl_SetObjErrorCode: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_SetObjResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_SetStdChannel: (@convention(c) (Tcl_Channel, Int32) -> Void)!
  var tcl_SetVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_SetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_SignalId: (@convention(c) (Int32) -> UnsafePointer<Int8>)!
  var tcl_SignalMsg: (@convention(c) (Int32) -> UnsafePointer<Int8>)!
  var tcl_SourceRCFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_SplitList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Int32)!
  var tcl_SplitPath: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Void)!
  var tcl_StaticPackage: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!) -> Void)!
  var tcl_StringMatch: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_TellOld: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_TraceVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Int32)!
  var tcl_TraceVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Int32)!
  var tcl_TranslateFileName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!
  var tcl_Ungets: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32, Int32) -> Int32)!
  var tcl_UnlinkVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!
  var tcl_UnregisterChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!
  var tcl_UnsetVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_UnsetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_UntraceVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Void)!
  var tcl_UntraceVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Void)!
  var tcl_UpdateLinkedVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!
  var tcl_UpVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_UpVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_VarEval: COpaquePointer
  var tcl_VarTraceInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> ClientData)!
  var tcl_VarTraceInfo2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> ClientData)!
  var tcl_Write: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_WrongNumArgs: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafePointer<Int8>) -> Void)!
  var tcl_DumpActiveMemory: (@convention(c) (UnsafePointer<Int8>) -> Int32)!
  var tcl_ValidateAllMemory: (@convention(c) (UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_AppendResultVA: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, CVaListPointer) -> Void)!
  var tcl_AppendStringsToObjVA: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, CVaListPointer) -> Void)!
  var tcl_HashStats: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>) -> UnsafeMutablePointer<Int8>)!
  var tcl_ParseVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<UnsafePointer<Int8>>) -> UnsafePointer<Int8>)!
  var tcl_PkgPresent: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_PkgPresentEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<ClientData>) -> UnsafePointer<Int8>)!
  var tcl_PkgProvide: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!
  var tcl_PkgRequire: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_SetErrorCodeVA: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, CVaListPointer) -> Void)!
  var tcl_VarEvalVA: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, CVaListPointer) -> Int32)!
  var tcl_WaitPid: (@convention(c) (Tcl_Pid, UnsafeMutablePointer<Int32>, Int32) -> Tcl_Pid)!
  var tcl_PanicVA: (@convention(c) (UnsafePointer<Int8>, CVaListPointer) -> Void)!
  var tcl_GetVersion: (@convention(c) (UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Void)!
  var tcl_InitMemory: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_StackChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_ChannelType>, ClientData, Int32, Tcl_Channel) -> Tcl_Channel)!
  var tcl_UnstackChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!
  var tcl_GetStackedChannel: (@convention(c) (Tcl_Channel) -> Tcl_Channel)!
  var tcl_SetMainLoop: (@convention(c) ((@convention(c) () -> Void)!) -> Void)!
  var reserved285: UnsafeMutablePointer<Void>
  var tcl_AppendObjToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_CreateEncoding: (@convention(c) (UnsafePointer<Tcl_EncodingType>) -> Tcl_Encoding)!
  var tcl_CreateThreadExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_DeleteThreadExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_DiscardResult: (@convention(c) (UnsafeMutablePointer<Tcl_SavedResult>) -> Void)!
  var tcl_EvalEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, Int32) -> Int32)!
  var tcl_EvalObjv: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, Int32) -> Int32)!
  var tcl_EvalObjEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!
  var tcl_ExitThread: (@convention(c) (Int32) -> Void)!
  var tcl_ExternalToUtf: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Encoding, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_ExternalToUtfDString: (@convention(c) (Tcl_Encoding, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!
  var tcl_FinalizeThread: (@convention(c) () -> Void)!
  var tcl_FinalizeNotifier: (@convention(c) (ClientData) -> Void)!
  var tcl_FreeEncoding: (@convention(c) (Tcl_Encoding) -> Void)!
  var tcl_GetCurrentThread: (@convention(c) () -> Tcl_ThreadId)!
  var tcl_GetEncoding: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Tcl_Encoding)!
  var tcl_GetEncodingName: (@convention(c) (Tcl_Encoding) -> UnsafePointer<Int8>)!
  var tcl_GetEncodingNames: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!
  var tcl_GetIndexFromObjStruct: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Void>, Int32, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetThreadData: (@convention(c) (UnsafeMutablePointer<Tcl_ThreadDataKey>, Int32) -> UnsafeMutablePointer<Void>)!
  var tcl_GetVar2Ex: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_InitNotifier: (@convention(c) () -> ClientData)!
  var tcl_MutexLock: (@convention(c) (UnsafeMutablePointer<Tcl_Mutex>) -> Void)!
  var tcl_MutexUnlock: (@convention(c) (UnsafeMutablePointer<Tcl_Mutex>) -> Void)!
  var tcl_ConditionNotify: (@convention(c) (UnsafeMutablePointer<Tcl_Condition>) -> Void)!
  var tcl_ConditionWait: (@convention(c) (UnsafeMutablePointer<Tcl_Condition>, UnsafeMutablePointer<Tcl_Mutex>, UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var tcl_NumUtfChars: (@convention(c) (UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_ReadChars: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> Int32)!
  var tcl_RestoreResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_SavedResult>) -> Void)!
  var tcl_SaveResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_SavedResult>) -> Void)!
  var tcl_SetSystemEncoding: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_SetVar2Ex: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_ThreadAlert: (@convention(c) (Tcl_ThreadId) -> Void)!
  var tcl_ThreadQueueEvent: (@convention(c) (Tcl_ThreadId, UnsafeMutablePointer<Tcl_Event>, Tcl_QueuePosition) -> Void)!
  var tcl_UniCharAtIndex: (@convention(c) (UnsafePointer<Int8>, Int32) -> Tcl_UniChar)!
  var tcl_UniCharToLower: (@convention(c) (Int32) -> Tcl_UniChar)!
  var tcl_UniCharToTitle: (@convention(c) (Int32) -> Tcl_UniChar)!
  var tcl_UniCharToUpper: (@convention(c) (Int32) -> Tcl_UniChar)!
  var tcl_UniCharToUtf: (@convention(c) (Int32, UnsafeMutablePointer<Int8>) -> Int32)!
  var tcl_UtfAtIndex: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_UtfCharComplete: (@convention(c) (UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_UtfBackslash: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int8>) -> Int32)!
  var tcl_UtfFindFirst: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_UtfFindLast: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!
  var tcl_UtfNext: (@convention(c) (UnsafePointer<Int8>) -> UnsafePointer<Int8>)!
  var tcl_UtfPrev: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>) -> UnsafePointer<Int8>)!
  var tcl_UtfToExternal: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Encoding, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_UtfToExternalDString: (@convention(c) (Tcl_Encoding, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!
  var tcl_UtfToLower: (@convention(c) (UnsafeMutablePointer<Int8>) -> Int32)!
  var tcl_UtfToTitle: (@convention(c) (UnsafeMutablePointer<Int8>) -> Int32)!
  var tcl_UtfToUniChar: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_UniChar>) -> Int32)!
  var tcl_UtfToUpper: (@convention(c) (UnsafeMutablePointer<Int8>) -> Int32)!
  var tcl_WriteChars: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_WriteObj: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_GetString: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Int8>)!
  var tcl_GetDefaultEncodingDir: (@convention(c) () -> UnsafePointer<Int8>)!
  var tcl_SetDefaultEncodingDir: (@convention(c) (UnsafePointer<Int8>) -> Void)!
  var tcl_AlertNotifier: (@convention(c) (ClientData) -> Void)!
  var tcl_ServiceModeHook: (@convention(c) (Int32) -> Void)!
  var tcl_UniCharIsAlnum: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsAlpha: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsDigit: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsLower: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsSpace: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsUpper: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsWordChar: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharLen: (@convention(c) (UnsafePointer<Tcl_UniChar>) -> Int32)!
  var tcl_UniCharNcmp: (@convention(c) (UnsafePointer<Tcl_UniChar>, UnsafePointer<Tcl_UniChar>, UInt) -> Int32)!
  var tcl_UniCharToUtfDString: (@convention(c) (UnsafePointer<Tcl_UniChar>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!
  var tcl_UtfToUniCharDString: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Tcl_UniChar>)!
  var tcl_GetRegExpFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Tcl_RegExp)!
  var tcl_EvalTokens: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Token>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FreeParse: (@convention(c) (UnsafeMutablePointer<Tcl_Parse>) -> Void)!
  var tcl_LogCommandInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!
  var tcl_ParseBraces: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!
  var tcl_ParseCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_Parse>) -> Int32)!
  var tcl_ParseExpr: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>) -> Int32)!
  var tcl_ParseQuotedString: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!
  var tcl_ParseVarName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>, Int32) -> Int32)!
  var tcl_GetCwd: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!
  var tcl_Chdir: (@convention(c) (UnsafePointer<Int8>) -> Int32)!
  var tcl_Access: (@convention(c) (UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_Stat: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<stat>) -> Int32)!
  var tcl_UtfNcmp: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>, UInt) -> Int32)!
  var tcl_UtfNcasecmp: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>, UInt) -> Int32)!
  var tcl_StringCaseMatch: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_UniCharIsControl: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsGraph: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsPrint: (@convention(c) (Int32) -> Int32)!
  var tcl_UniCharIsPunct: (@convention(c) (Int32) -> Int32)!
  var tcl_RegExpExecObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_RegExp, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32, Int32) -> Int32)!
  var tcl_RegExpGetInfo: (@convention(c) (Tcl_RegExp, UnsafeMutablePointer<Tcl_RegExpInfo>) -> Void)!
  var tcl_NewUnicodeObj: (@convention(c) (UnsafePointer<Tcl_UniChar>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SetUnicodeObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Tcl_UniChar>, Int32) -> Void)!
  var tcl_GetCharLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_GetUniChar: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Tcl_UniChar)!
  var tcl_GetUnicode: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_UniChar>)!
  var tcl_GetRange: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_AppendUnicodeToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Tcl_UniChar>, Int32) -> Void)!
  var tcl_RegExpMatchObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_SetNotifier: (@convention(c) (UnsafeMutablePointer<Tcl_NotifierProcs>) -> Void)!
  var tcl_GetAllocMutex: (@convention(c) () -> UnsafeMutablePointer<Tcl_Mutex>)!
  var tcl_GetChannelNames: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_GetChannelNamesEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!
  var tcl_ProcObjCmd: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_ConditionFinalize: (@convention(c) (UnsafeMutablePointer<Tcl_Condition>) -> Void)!
  var tcl_MutexFinalize: (@convention(c) (UnsafeMutablePointer<Tcl_Mutex>) -> Void)!
  var tcl_CreateThread: (@convention(c) (UnsafeMutablePointer<Tcl_ThreadId>, (@convention(c) (ClientData) -> Void)!, ClientData, Int32, Int32) -> Int32)!
  var tcl_ReadRaw: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Int32)!
  var tcl_WriteRaw: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_GetTopChannel: (@convention(c) (Tcl_Channel) -> Tcl_Channel)!
  var tcl_ChannelBuffered: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_ChannelName: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> UnsafePointer<Int8>)!
  var tcl_ChannelVersion: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> Tcl_ChannelTypeVersion)!
  var tcl_ChannelBlockModeProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Int32)!)!
  var tcl_ChannelCloseProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!)!
  var tcl_ChannelClose2Proc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!)!
  var tcl_ChannelInputProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!)!
  var tcl_ChannelOutputProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!)!
  var tcl_ChannelSeekProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int, Int32, UnsafeMutablePointer<Int32>) -> Int32)!)!
  var tcl_ChannelSetOptionProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!)!
  var tcl_ChannelGetOptionProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!)!
  var tcl_ChannelWatchProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Void)!)!
  var tcl_ChannelGetHandleProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!)!
  var tcl_ChannelFlushProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData) -> Int32)!)!
  var tcl_ChannelHandlerProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Int32)!)!
  var tcl_JoinThread: (@convention(c) (Tcl_ThreadId, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_IsChannelShared: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_IsChannelRegistered: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!
  var tcl_CutChannel: (@convention(c) (Tcl_Channel) -> Void)!
  var tcl_SpliceChannel: (@convention(c) (Tcl_Channel) -> Void)!
  var tcl_ClearChannelHandlers: (@convention(c) (Tcl_Channel) -> Void)!
  var tcl_IsChannelExisting: (@convention(c) (UnsafePointer<Int8>) -> Int32)!
  var tcl_UniCharNcasecmp: (@convention(c) (UnsafePointer<Tcl_UniChar>, UnsafePointer<Tcl_UniChar>, UInt) -> Int32)!
  var tcl_UniCharCaseMatch: (@convention(c) (UnsafePointer<Tcl_UniChar>, UnsafePointer<Tcl_UniChar>, Int32) -> Int32)!
  var tcl_FindHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var tcl_CreateHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_HashEntry>)!
  var tcl_InitCustomHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, Int32, UnsafeMutablePointer<Tcl_HashKeyType>) -> Void)!
  var tcl_InitObjHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>) -> Void)!
  var tcl_CommandTraceInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, ClientData) -> ClientData)!
  var tcl_TraceCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, ClientData) -> Int32)!
  var tcl_UntraceCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, ClientData) -> Void)!
  var tcl_AttemptAlloc: (@convention(c) (UInt32) -> UnsafeMutablePointer<Int8>)!
  var tcl_AttemptDbCkalloc: (@convention(c) (UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!
  var tcl_AttemptRealloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32) -> UnsafeMutablePointer<Int8>)!
  var tcl_AttemptDbCkrealloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!
  var tcl_AttemptSetObjLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!
  var tcl_GetChannelThread: (@convention(c) (Tcl_Channel) -> Tcl_ThreadId)!
  var tcl_GetUnicodeFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_UniChar>)!
  var tcl_GetMathFuncInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_ValueType>>, UnsafeMutablePointer<(@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)?>, UnsafeMutablePointer<ClientData>) -> Int32)!
  var tcl_ListMathFuncs: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SubstObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DetachChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!
  var tcl_IsStandardChannel: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_FSCopyFile: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSCopyDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_FSCreateDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSDeleteFile: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSLoadFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)?>, UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)?>, UnsafeMutablePointer<Tcl_LoadHandle>, UnsafeMutablePointer<(@convention(c) (Tcl_LoadHandle) -> Void)?>) -> Int32)!
  var tcl_FSMatchInDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_GlobTypeData>) -> Int32)!
  var tcl_FSLink: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSRemoveDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_FSRenameFile: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSLstat: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!
  var tcl_FSUtime: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<utimbuf>) -> Int32)!
  var tcl_FSFileAttrsGet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_FSFileAttrsSet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSFileAttrStrings: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<UnsafePointer<Int8>>)!
  var tcl_FSStat: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!
  var tcl_FSAccess: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!
  var tcl_FSOpenFileChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Tcl_Channel)!
  var tcl_FSGetCwd: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSChdir: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSConvertToPathType: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSJoinPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSSplitPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSEqualPaths: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSGetNormalizedPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSJoinToPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSGetInternalRep: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Filesystem>) -> ClientData)!
  var tcl_FSGetTranslatedPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSEvalFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_FSNewNativePath: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>, ClientData) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSGetNativePath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafePointer<Int8>)!
  var tcl_FSFileSystemInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSPathSeparator: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSListVolumes: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_FSRegister: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Filesystem>) -> Int32)!
  var tcl_FSUnregister: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>) -> Int32)!
  var tcl_FSData: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>) -> ClientData)!
  var tcl_FSGetTranslatedStringPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> UnsafePointer<Int8>)!
  var tcl_FSGetFileSystemForPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Filesystem>)!
  var tcl_FSGetPathType: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Tcl_PathType)!
  var tcl_OutputBuffered: (@convention(c) (Tcl_Channel) -> Int32)!
  var tcl_FSMountsChanged: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>) -> Void)!
  var tcl_EvalTokensStandard: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Token>, Int32) -> Int32)!
  var tcl_GetTime: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var tcl_CreateObjTrace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, Tcl_Command, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Tcl_Trace)!
  var tcl_GetCommandInfoFromToken: (@convention(c) (Tcl_Command, UnsafeMutablePointer<Tcl_CmdInfo>) -> Int32)!
  var tcl_SetCommandInfoFromToken: (@convention(c) (Tcl_Command, UnsafePointer<Tcl_CmdInfo>) -> Int32)!
  var tcl_DbNewWideIntObj: (@convention(c) (Tcl_WideInt, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_GetWideIntFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_WideInt>) -> Int32)!
  var tcl_NewWideIntObj: (@convention(c) (Tcl_WideInt) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SetWideIntObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Tcl_WideInt) -> Void)!
  var tcl_AllocStatBuf: (@convention(c) () -> UnsafeMutablePointer<Tcl_StatBuf>)!
  var tcl_Seek: (@convention(c) (Tcl_Channel, Tcl_WideInt, Int32) -> Tcl_WideInt)!
  var tcl_Tell: (@convention(c) (Tcl_Channel) -> Tcl_WideInt)!
  var tcl_ChannelWideSeekProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Tcl_WideInt, Int32, UnsafeMutablePointer<Int32>) -> Tcl_WideInt)!)!
  var tcl_DictObjPut: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_DictObjGet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_DictObjRemove: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_DictObjSize: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_DictObjFirst: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_DictSearch>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_DictObjNext: (@convention(c) (UnsafeMutablePointer<Tcl_DictSearch>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<Int32>) -> Void)!
  var tcl_DictObjDone: (@convention(c) (UnsafeMutablePointer<Tcl_DictSearch>) -> Void)!
  var tcl_DictObjPutKeyList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_DictObjRemoveKeyList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_NewDictObj: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewDictObj: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_RegisterConfig: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Config>, UnsafePointer<Int8>) -> Void)!
  var tcl_CreateNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, ClientData, (@convention(c) (ClientData) -> Void)!) -> UnsafeMutablePointer<Tcl_Namespace>)!
  var tcl_DeleteNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Namespace>) -> Void)!
  var tcl_AppendExportList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_Export: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_Import: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafePointer<Int8>, Int32) -> Int32)!
  var tcl_ForgetImport: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafePointer<Int8>) -> Int32)!
  var tcl_GetCurrentNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Namespace>)!
  var tcl_GetGlobalNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Namespace>)!
  var tcl_FindNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Namespace>, Int32) -> UnsafeMutablePointer<Tcl_Namespace>)!
  var tcl_FindCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Namespace>, Int32) -> Tcl_Command)!
  var tcl_GetCommandFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Tcl_Command)!
  var tcl_GetCommandFullName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_FSEvalFileEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>) -> Int32)!
  var tcl_SetExitProc: (@convention(c) ((@convention(c) (ClientData) -> Void)!) -> (@convention(c) (ClientData) -> Void)!)!
  var tcl_LimitAddHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Void)!
  var tcl_LimitRemoveHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!
  var tcl_LimitReady: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_LimitCheck: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_LimitExceeded: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_LimitSetCommands: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Void)!
  var tcl_LimitSetTime: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var tcl_LimitSetGranularity: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, Int32) -> Void)!
  var tcl_LimitTypeEnabled: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
  var tcl_LimitTypeExceeded: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
  var tcl_LimitTypeSet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Void)!
  var tcl_LimitTypeReset: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Void)!
  var tcl_LimitGetCommands: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!
  var tcl_LimitGetTime: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Time>) -> Void)!
  var tcl_LimitGetGranularity: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!
  var tcl_SaveInterpState: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Tcl_InterpState)!
  var tcl_RestoreInterpState: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_InterpState) -> Int32)!
  var tcl_DiscardInterpState: (@convention(c) (Tcl_InterpState) -> Void)!
  var tcl_SetReturnOptions: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_GetReturnOptions: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_IsEnsemble: (@convention(c) (Tcl_Command) -> Int32)!
  var tcl_CreateEnsemble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Namespace>, Int32) -> Tcl_Command)!
  var tcl_FindEnsemble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Tcl_Command)!
  var tcl_SetEnsembleSubcommandList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_SetEnsembleMappingDict: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_SetEnsembleUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_SetEnsembleFlags: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, Int32) -> Int32)!
  var tcl_GetEnsembleSubcommandList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_GetEnsembleMappingDict: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_GetEnsembleUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_GetEnsembleFlags: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Int32>) -> Int32)!
  var tcl_GetEnsembleNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Namespace>>) -> Int32)!
  var tcl_SetTimeProc: (@convention(c) ((@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)!, (@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)!, ClientData) -> Void)!
  var tcl_QueryTimeProc: (@convention(c) (UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)?>, UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)?>, UnsafeMutablePointer<ClientData>) -> Void)!
  var tcl_ChannelThreadActionProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Void)!)!
  var tcl_NewBignumObj: (@convention(c) (UnsafeMutablePointer<mp_int>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_DbNewBignumObj: (@convention(c) (UnsafeMutablePointer<mp_int>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SetBignumObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<mp_int>) -> Void)!
  var tcl_GetBignumFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<mp_int>) -> Int32)!
  var tcl_TakeBignumFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<mp_int>) -> Int32)!
  var tcl_TruncateChannel: (@convention(c) (Tcl_Channel, Tcl_WideInt) -> Int32)!
  var tcl_ChannelTruncateProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Tcl_WideInt) -> Int32)!)!
  var tcl_SetChannelErrorInterp: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_GetChannelErrorInterp: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Void)!
  var tcl_SetChannelError: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_GetChannelError: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Void)!
  var tcl_InitBignumFromDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Double, UnsafeMutablePointer<mp_int>) -> Int32)!
  var tcl_GetNamespaceUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SetNamespaceUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_GetEncodingFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Encoding>) -> Int32)!
  var tcl_GetEncodingSearchPath: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_SetEncodingSearchPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!
  var tcl_GetEncodingNameFromEnvironment: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> UnsafePointer<Int8>)!
  var tcl_PkgRequireProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<ClientData>) -> Int32)!
  var tcl_AppendObjToErrorInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!
  var tcl_AppendLimitedToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32, Int32, UnsafePointer<Int8>) -> Void)!
  var tcl_Format: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!
  var tcl_AppendFormatToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!
  var tcl_ObjPrintf: COpaquePointer
  var tcl_AppendPrintfToObj: COpaquePointer
  init()
  init(magic: Int32, hooks: UnsafeMutablePointer<TclStubHooks>, tcl_PkgProvideEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, ClientData) -> Int32)!, tcl_PkgRequireEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<ClientData>) -> UnsafePointer<Int8>)!, tcl_Panic: COpaquePointer, tcl_Alloc: (@convention(c) (UInt32) -> UnsafeMutablePointer<Int8>)!, tcl_Free: (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!, tcl_Realloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32) -> UnsafeMutablePointer<Int8>)!, tcl_DbCkalloc: (@convention(c) (UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, tcl_DbCkfree: (@convention(c) (UnsafeMutablePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_DbCkrealloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, tcl_CreateFileHandler: (@convention(c) (Int32, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!, tcl_DeleteFileHandler: (@convention(c) (Int32) -> Void)!, tcl_SetTimer: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!, tcl_Sleep: (@convention(c) (Int32) -> Void)!, tcl_WaitForEvent: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Int32)!, tcl_AppendAllObjTypes: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_AppendStringsToObj: COpaquePointer, tcl_AppendToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!, tcl_ConcatObj: (@convention(c) (Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_ConvertToType: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_ObjType>) -> Int32)!, tcl_DbDecrRefCount: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!, tcl_DbIncrRefCount: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!, tcl_DbIsShared: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_DbNewBooleanObj: (@convention(c) (Int32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewByteArrayObj: (@convention(c) (UnsafePointer<UInt8>, Int32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewDoubleObj: (@convention(c) (Double, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewListObj: (@convention(c) (Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewLongObj: (@convention(c) (Int, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewObj: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewStringObj: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DuplicateObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, tclFreeObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_GetBoolean: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetBooleanFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetByteArrayFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<UInt8>)!, tcl_GetDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Double>) -> Int32)!, tcl_GetDoubleFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Double>) -> Int32)!, tcl_GetIndexFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetInt: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetIntFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetLongFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int>) -> Int32)!, tcl_GetObjType: (@convention(c) (UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_ObjType>)!, tcl_GetStringFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Int8>)!, tcl_InvalidateStringRep: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_ListObjAppendList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_ListObjAppendElement: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_ListObjGetElements: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>>) -> Int32)!, tcl_ListObjIndex: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_ListObjLength: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_ListObjReplace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_NewBooleanObj: (@convention(c) (Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewByteArrayObj: (@convention(c) (UnsafePointer<UInt8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewDoubleObj: (@convention(c) (Double) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewIntObj: (@convention(c) (Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewListObj: (@convention(c) (Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewLongObj: (@convention(c) (Int) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewObj: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_NewStringObj: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SetBooleanObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Void)!, tcl_SetByteArrayLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<UInt8>)!, tcl_SetByteArrayObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<UInt8>, Int32) -> Void)!, tcl_SetDoubleObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Double) -> Void)!, tcl_SetIntObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Void)!, tcl_SetListObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Void)!, tcl_SetLongObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int) -> Void)!, tcl_SetObjLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Void)!, tcl_SetStringObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Void)!, tcl_AddErrorInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!, tcl_AddObjErrorInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> Void)!, tcl_AllowExceptions: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_AppendElement: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!, tcl_AppendResult: COpaquePointer, tcl_AsyncCreate: (@convention(c) ((@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, ClientData) -> Tcl_AsyncHandler)!, tcl_AsyncDelete: (@convention(c) (Tcl_AsyncHandler) -> Void)!, tcl_AsyncInvoke: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, tcl_AsyncMark: (@convention(c) (Tcl_AsyncHandler) -> Void)!, tcl_AsyncReady: (@convention(c) () -> Int32)!, tcl_BackgroundError: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_Backslash: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int8)!, tcl_BadChannelOption: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_CallWhenDeleted: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!, tcl_CancelIdleCall: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_Close: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!, tcl_CommandComplete: (@convention(c) (UnsafePointer<Int8>) -> Int32)!, tcl_Concat: (@convention(c) (Int32, UnsafePointer<UnsafePointer<Int8>>) -> UnsafeMutablePointer<Int8>)!, tcl_ConvertElement: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int8>, Int32) -> Int32)!, tcl_ConvertCountedElement: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int8>, Int32) -> Int32)!, tcl_CreateAlias: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafePointer<Int8>>) -> Int32)!, tcl_CreateAliasObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_CreateChannel: (@convention(c) (UnsafeMutablePointer<Tcl_ChannelType>, UnsafePointer<Int8>, ClientData, Int32) -> Tcl_Channel)!, tcl_CreateChannelHandler: (@convention(c) (Tcl_Channel, Int32, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!, tcl_CreateCloseHandler: (@convention(c) (Tcl_Channel, (@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_CreateCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Tcl_Command)!, tcl_CreateEventSource: (@convention(c) ((@convention(c) (ClientData, Int32) -> Void)!, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!, tcl_CreateExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_CreateInterp: (@convention(c) () -> UnsafeMutablePointer<Tcl_Interp>)!, tcl_CreateMathFunc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_ValueType>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)!, ClientData) -> Void)!, tcl_CreateObjCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Tcl_Command)!, tcl_CreateSlave: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Interp>)!, tcl_CreateTimerHandler: (@convention(c) (Int32, (@convention(c) (ClientData) -> Void)!, ClientData) -> Tcl_TimerToken)!, tcl_CreateTrace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, ClientData, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Void)!, ClientData) -> Tcl_Trace)!, tcl_DeleteAssocData: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!, tcl_DeleteChannelHandler: (@convention(c) (Tcl_Channel, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!, tcl_DeleteCloseHandler: (@convention(c) (Tcl_Channel, (@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_DeleteCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_DeleteCommandFromToken: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command) -> Int32)!, tcl_DeleteEvents: (@convention(c) ((@convention(c) (UnsafeMutablePointer<Tcl_Event>, ClientData) -> Int32)!, ClientData) -> Void)!, tcl_DeleteEventSource: (@convention(c) ((@convention(c) (ClientData, Int32) -> Void)!, (@convention(c) (ClientData, Int32) -> Void)!, ClientData) -> Void)!, tcl_DeleteExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_DeleteHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashEntry>) -> Void)!, tcl_DeleteHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>) -> Void)!, tcl_DeleteInterp: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_DetachPids: (@convention(c) (Int32, UnsafeMutablePointer<Tcl_Pid>) -> Void)!, tcl_DeleteTimerHandler: (@convention(c) (Tcl_TimerToken) -> Void)!, tcl_DeleteTrace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Trace) -> Void)!, tcl_DontCallWhenDeleted: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!, tcl_DoOneEvent: (@convention(c) (Int32) -> Int32)!, tcl_DoWhenIdle: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_DStringAppend: (@convention(c) (UnsafeMutablePointer<Tcl_DString>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, tcl_DStringAppendElement: (@convention(c) (UnsafeMutablePointer<Tcl_DString>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Int8>)!, tcl_DStringEndSublist: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!, tcl_DStringFree: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!, tcl_DStringGetResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_DString>) -> Void)!, tcl_DStringInit: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!, tcl_DStringResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_DString>) -> Void)!, tcl_DStringSetLength: (@convention(c) (UnsafeMutablePointer<Tcl_DString>, Int32) -> Void)!, tcl_DStringStartSublist: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> Void)!, tcl_Eof: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_ErrnoId: (@convention(c) () -> UnsafePointer<Int8>)!, tcl_ErrnoMsg: (@convention(c) (Int32) -> UnsafePointer<Int8>)!, tcl_Eval: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_EvalFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_EvalObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_EventuallyFree: (@convention(c) (ClientData, (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!) -> Void)!, tcl_Exit: (@convention(c) (Int32) -> Void)!, tcl_ExposeCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_ExprBoolean: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_ExprBooleanObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_ExprDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Double>) -> Int32)!, tcl_ExprDoubleObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Double>) -> Int32)!, tcl_ExprLong: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int>) -> Int32)!, tcl_ExprLongObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int>) -> Int32)!, tcl_ExprObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_ExprString: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_Finalize: (@convention(c) () -> Void)!, tcl_FindExecutable: (@convention(c) (UnsafePointer<Int8>) -> Void)!, tcl_FirstHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafeMutablePointer<Tcl_HashSearch>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, tcl_Flush: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_FreeResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_GetAlias: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Interp>>, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Int32)!, tcl_GetAliasObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Interp>>, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>>) -> Int32)!, tcl_GetAssocData: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<(@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)?>) -> ClientData)!, tcl_GetChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Tcl_Channel)!, tcl_GetChannelBufferSize: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_GetChannelHandle: (@convention(c) (Tcl_Channel, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!, tcl_GetChannelInstanceData: (@convention(c) (Tcl_Channel) -> ClientData)!, tcl_GetChannelMode: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_GetChannelName: (@convention(c) (Tcl_Channel) -> UnsafePointer<Int8>)!, tcl_GetChannelOption: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!, tcl_GetChannelType: (@convention(c) (Tcl_Channel) -> UnsafeMutablePointer<Tcl_ChannelType>)!, tcl_GetCommandInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_CmdInfo>) -> Int32)!, tcl_GetCommandName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command) -> UnsafePointer<Int8>)!, tcl_GetErrno: (@convention(c) () -> Int32)!, tcl_GetHostName: (@convention(c) () -> UnsafePointer<Int8>)!, tcl_GetInterpPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_GetMaster: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Interp>)!, tcl_GetNameOfExecutable: (@convention(c) () -> UnsafePointer<Int8>)!, tcl_GetObjResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_GetOpenFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!, tcl_GetPathType: (@convention(c) (UnsafePointer<Int8>) -> Tcl_PathType)!, tcl_Gets: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_DString>) -> Int32)!, tcl_GetsObj: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_GetServiceMode: (@convention(c) () -> Int32)!, tcl_GetSlave: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_Interp>)!, tcl_GetStdChannel: (@convention(c) (Int32) -> Tcl_Channel)!, tcl_GetStringResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafePointer<Int8>)!, tcl_GetVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_GetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_GlobalEval: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_GlobalEvalObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_HideCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_Init: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_InitHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, Int32) -> Void)!, tcl_InputBlocked: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_InputBuffered: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_InterpDeleted: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_IsSafe: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_JoinPath: (@convention(c) (Int32, UnsafePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!, tcl_LinkVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int8>, Int32) -> Int32)!, reserved188: UnsafeMutablePointer<Void>, tcl_MakeFileChannel: (@convention(c) (ClientData, Int32) -> Tcl_Channel)!, tcl_MakeSafe: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_MakeTcpClientChannel: (@convention(c) (ClientData) -> Tcl_Channel)!, tcl_Merge: (@convention(c) (Int32, UnsafePointer<UnsafePointer<Int8>>) -> UnsafeMutablePointer<Int8>)!, tcl_NextHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashSearch>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, tcl_NotifyChannel: (@convention(c) (Tcl_Channel, Int32) -> Void)!, tcl_ObjGetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_ObjSetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_OpenCommandChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>, Int32) -> Tcl_Channel)!, tcl_OpenFileChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Tcl_Channel)!, tcl_OpenTcpClient: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, Int32) -> Tcl_Channel)!, tcl_OpenTcpServer: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, (@convention(c) (ClientData, Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Void)!, ClientData) -> Tcl_Channel)!, tcl_Preserve: (@convention(c) (ClientData) -> Void)!, tcl_PrintDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Double, UnsafeMutablePointer<Int8>) -> Void)!, tcl_PutEnv: (@convention(c) (UnsafePointer<Int8>) -> Int32)!, tcl_PosixError: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafePointer<Int8>)!, tcl_QueueEvent: (@convention(c) (UnsafeMutablePointer<Tcl_Event>, Tcl_QueuePosition) -> Void)!, tcl_Read: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Int32)!, tcl_ReapDetachedProcs: (@convention(c) () -> Void)!, tcl_RecordAndEval: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_RecordAndEvalObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!, tcl_RegisterChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Void)!, tcl_RegisterObjType: (@convention(c) (UnsafeMutablePointer<Tcl_ObjType>) -> Void)!, tcl_RegExpCompile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Tcl_RegExp)!, tcl_RegExpExec: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_RegExp, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_RegExpMatch: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_RegExpRange: (@convention(c) (Tcl_RegExp, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Void)!, tcl_Release: (@convention(c) (ClientData) -> Void)!, tcl_ResetResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_ScanElement: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_ScanCountedElement: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_SeekOld: (@convention(c) (Tcl_Channel, Int32, Int32) -> Int32)!, tcl_ServiceAll: (@convention(c) () -> Int32)!, tcl_ServiceEvent: (@convention(c) (Int32) -> Int32)!, tcl_SetAssocData: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!, tcl_SetChannelBufferSize: (@convention(c) (Tcl_Channel, Int32) -> Void)!, tcl_SetChannelOption: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_SetCommandInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Tcl_CmdInfo>) -> Int32)!, tcl_SetErrno: (@convention(c) (Int32) -> Void)!, tcl_SetErrorCode: COpaquePointer, tcl_SetMaxBlockTime: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!, tcl_SetPanicProc: (@convention(c) (COpaquePointer) -> Void)!, tcl_SetRecursionLimit: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, tcl_SetResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Int8>, (@convention(c) (UnsafeMutablePointer<Int8>) -> Void)!) -> Void)!, tcl_SetServiceMode: (@convention(c) (Int32) -> Int32)!, tcl_SetObjErrorCode: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_SetObjResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_SetStdChannel: (@convention(c) (Tcl_Channel, Int32) -> Void)!, tcl_SetVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_SetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_SignalId: (@convention(c) (Int32) -> UnsafePointer<Int8>)!, tcl_SignalMsg: (@convention(c) (Int32) -> UnsafePointer<Int8>)!, tcl_SourceRCFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_SplitList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Int32)!, tcl_SplitPath: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<Int8>>>) -> Void)!, tcl_StaticPackage: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!) -> Void)!, tcl_StringMatch: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_TellOld: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_TraceVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Int32)!, tcl_TraceVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Int32)!, tcl_TranslateFileName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!, tcl_Ungets: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32, Int32) -> Int32)!, tcl_UnlinkVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!, tcl_UnregisterChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!, tcl_UnsetVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_UnsetVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_UntraceVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Void)!, tcl_UntraceVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> Void)!, tcl_UpdateLinkedVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Void)!, tcl_UpVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_UpVar2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_VarEval: COpaquePointer, tcl_VarTraceInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> ClientData)!, tcl_VarTraceInfo2: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, ClientData) -> ClientData)!, tcl_Write: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_WrongNumArgs: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafePointer<Int8>) -> Void)!, tcl_DumpActiveMemory: (@convention(c) (UnsafePointer<Int8>) -> Int32)!, tcl_ValidateAllMemory: (@convention(c) (UnsafePointer<Int8>, Int32) -> Void)!, tcl_AppendResultVA: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, CVaListPointer) -> Void)!, tcl_AppendStringsToObjVA: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, CVaListPointer) -> Void)!, tcl_HashStats: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>) -> UnsafeMutablePointer<Int8>)!, tcl_ParseVar: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<UnsafePointer<Int8>>) -> UnsafePointer<Int8>)!, tcl_PkgPresent: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_PkgPresentEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<ClientData>) -> UnsafePointer<Int8>)!, tcl_PkgProvide: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!, tcl_PkgRequire: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_SetErrorCodeVA: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, CVaListPointer) -> Void)!, tcl_VarEvalVA: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, CVaListPointer) -> Int32)!, tcl_WaitPid: (@convention(c) (Tcl_Pid, UnsafeMutablePointer<Int32>, Int32) -> Tcl_Pid)!, tcl_PanicVA: (@convention(c) (UnsafePointer<Int8>, CVaListPointer) -> Void)!, tcl_GetVersion: (@convention(c) (UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Void)!, tcl_InitMemory: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_StackChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_ChannelType>, ClientData, Int32, Tcl_Channel) -> Tcl_Channel)!, tcl_UnstackChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!, tcl_GetStackedChannel: (@convention(c) (Tcl_Channel) -> Tcl_Channel)!, tcl_SetMainLoop: (@convention(c) ((@convention(c) () -> Void)!) -> Void)!, reserved285: UnsafeMutablePointer<Void>, tcl_AppendObjToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_CreateEncoding: (@convention(c) (UnsafePointer<Tcl_EncodingType>) -> Tcl_Encoding)!, tcl_CreateThreadExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_DeleteThreadExitHandler: (@convention(c) ((@convention(c) (ClientData) -> Void)!, ClientData) -> Void)!, tcl_DiscardResult: (@convention(c) (UnsafeMutablePointer<Tcl_SavedResult>) -> Void)!, tcl_EvalEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, Int32) -> Int32)!, tcl_EvalObjv: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, Int32) -> Int32)!, tcl_EvalObjEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!, tcl_ExitThread: (@convention(c) (Int32) -> Void)!, tcl_ExternalToUtf: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Encoding, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_ExternalToUtfDString: (@convention(c) (Tcl_Encoding, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!, tcl_FinalizeThread: (@convention(c) () -> Void)!, tcl_FinalizeNotifier: (@convention(c) (ClientData) -> Void)!, tcl_FreeEncoding: (@convention(c) (Tcl_Encoding) -> Void)!, tcl_GetCurrentThread: (@convention(c) () -> Tcl_ThreadId)!, tcl_GetEncoding: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Tcl_Encoding)!, tcl_GetEncodingName: (@convention(c) (Tcl_Encoding) -> UnsafePointer<Int8>)!, tcl_GetEncodingNames: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Void)!, tcl_GetIndexFromObjStruct: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Void>, Int32, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetThreadData: (@convention(c) (UnsafeMutablePointer<Tcl_ThreadDataKey>, Int32) -> UnsafeMutablePointer<Void>)!, tcl_GetVar2Ex: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_InitNotifier: (@convention(c) () -> ClientData)!, tcl_MutexLock: (@convention(c) (UnsafeMutablePointer<Tcl_Mutex>) -> Void)!, tcl_MutexUnlock: (@convention(c) (UnsafeMutablePointer<Tcl_Mutex>) -> Void)!, tcl_ConditionNotify: (@convention(c) (UnsafeMutablePointer<Tcl_Condition>) -> Void)!, tcl_ConditionWait: (@convention(c) (UnsafeMutablePointer<Tcl_Condition>, UnsafeMutablePointer<Tcl_Mutex>, UnsafeMutablePointer<Tcl_Time>) -> Void)!, tcl_NumUtfChars: (@convention(c) (UnsafePointer<Int8>, Int32) -> Int32)!, tcl_ReadChars: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> Int32)!, tcl_RestoreResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_SavedResult>) -> Void)!, tcl_SaveResult: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_SavedResult>) -> Void)!, tcl_SetSystemEncoding: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_SetVar2Ex: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_ThreadAlert: (@convention(c) (Tcl_ThreadId) -> Void)!, tcl_ThreadQueueEvent: (@convention(c) (Tcl_ThreadId, UnsafeMutablePointer<Tcl_Event>, Tcl_QueuePosition) -> Void)!, tcl_UniCharAtIndex: (@convention(c) (UnsafePointer<Int8>, Int32) -> Tcl_UniChar)!, tcl_UniCharToLower: (@convention(c) (Int32) -> Tcl_UniChar)!, tcl_UniCharToTitle: (@convention(c) (Int32) -> Tcl_UniChar)!, tcl_UniCharToUpper: (@convention(c) (Int32) -> Tcl_UniChar)!, tcl_UniCharToUtf: (@convention(c) (Int32, UnsafeMutablePointer<Int8>) -> Int32)!, tcl_UtfAtIndex: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_UtfCharComplete: (@convention(c) (UnsafePointer<Int8>, Int32) -> Int32)!, tcl_UtfBackslash: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int8>) -> Int32)!, tcl_UtfFindFirst: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_UtfFindLast: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafePointer<Int8>)!, tcl_UtfNext: (@convention(c) (UnsafePointer<Int8>) -> UnsafePointer<Int8>)!, tcl_UtfPrev: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>) -> UnsafePointer<Int8>)!, tcl_UtfToExternal: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Encoding, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_EncodingState>, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_UtfToExternalDString: (@convention(c) (Tcl_Encoding, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!, tcl_UtfToLower: (@convention(c) (UnsafeMutablePointer<Int8>) -> Int32)!, tcl_UtfToTitle: (@convention(c) (UnsafeMutablePointer<Int8>) -> Int32)!, tcl_UtfToUniChar: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_UniChar>) -> Int32)!, tcl_UtfToUpper: (@convention(c) (UnsafeMutablePointer<Int8>) -> Int32)!, tcl_WriteChars: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_WriteObj: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_GetString: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Int8>)!, tcl_GetDefaultEncodingDir: (@convention(c) () -> UnsafePointer<Int8>)!, tcl_SetDefaultEncodingDir: (@convention(c) (UnsafePointer<Int8>) -> Void)!, tcl_AlertNotifier: (@convention(c) (ClientData) -> Void)!, tcl_ServiceModeHook: (@convention(c) (Int32) -> Void)!, tcl_UniCharIsAlnum: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsAlpha: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsDigit: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsLower: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsSpace: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsUpper: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsWordChar: (@convention(c) (Int32) -> Int32)!, tcl_UniCharLen: (@convention(c) (UnsafePointer<Tcl_UniChar>) -> Int32)!, tcl_UniCharNcmp: (@convention(c) (UnsafePointer<Tcl_UniChar>, UnsafePointer<Tcl_UniChar>, UInt) -> Int32)!, tcl_UniCharToUtfDString: (@convention(c) (UnsafePointer<Tcl_UniChar>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!, tcl_UtfToUniCharDString: (@convention(c) (UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Tcl_UniChar>)!, tcl_GetRegExpFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Tcl_RegExp)!, tcl_EvalTokens: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Token>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FreeParse: (@convention(c) (UnsafeMutablePointer<Tcl_Parse>) -> Void)!, tcl_LogCommandInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, tcl_ParseBraces: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, tcl_ParseCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, Int32, UnsafeMutablePointer<Tcl_Parse>) -> Int32)!, tcl_ParseExpr: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>) -> Int32)!, tcl_ParseQuotedString: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>, Int32, UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32)!, tcl_ParseVarName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Tcl_Parse>, Int32) -> Int32)!, tcl_GetCwd: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_DString>) -> UnsafeMutablePointer<Int8>)!, tcl_Chdir: (@convention(c) (UnsafePointer<Int8>) -> Int32)!, tcl_Access: (@convention(c) (UnsafePointer<Int8>, Int32) -> Int32)!, tcl_Stat: (@convention(c) (UnsafePointer<Int8>, UnsafeMutablePointer<stat>) -> Int32)!, tcl_UtfNcmp: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>, UInt) -> Int32)!, tcl_UtfNcasecmp: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>, UInt) -> Int32)!, tcl_StringCaseMatch: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_UniCharIsControl: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsGraph: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsPrint: (@convention(c) (Int32) -> Int32)!, tcl_UniCharIsPunct: (@convention(c) (Int32) -> Int32)!, tcl_RegExpExecObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_RegExp, UnsafeMutablePointer<Tcl_Obj>, Int32, Int32, Int32) -> Int32)!, tcl_RegExpGetInfo: (@convention(c) (Tcl_RegExp, UnsafeMutablePointer<Tcl_RegExpInfo>) -> Void)!, tcl_NewUnicodeObj: (@convention(c) (UnsafePointer<Tcl_UniChar>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SetUnicodeObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Tcl_UniChar>, Int32) -> Void)!, tcl_GetCharLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_GetUniChar: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Tcl_UniChar)!, tcl_GetUnicode: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_UniChar>)!, tcl_GetRange: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_AppendUnicodeToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Tcl_UniChar>, Int32) -> Void)!, tcl_RegExpMatchObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_SetNotifier: (@convention(c) (UnsafeMutablePointer<Tcl_NotifierProcs>) -> Void)!, tcl_GetAllocMutex: (@convention(c) () -> UnsafeMutablePointer<Tcl_Mutex>)!, tcl_GetChannelNames: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_GetChannelNamesEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> Int32)!, tcl_ProcObjCmd: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_ConditionFinalize: (@convention(c) (UnsafeMutablePointer<Tcl_Condition>) -> Void)!, tcl_MutexFinalize: (@convention(c) (UnsafeMutablePointer<Tcl_Mutex>) -> Void)!, tcl_CreateThread: (@convention(c) (UnsafeMutablePointer<Tcl_ThreadId>, (@convention(c) (ClientData) -> Void)!, ClientData, Int32, Int32) -> Int32)!, tcl_ReadRaw: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Int8>, Int32) -> Int32)!, tcl_WriteRaw: (@convention(c) (Tcl_Channel, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_GetTopChannel: (@convention(c) (Tcl_Channel) -> Tcl_Channel)!, tcl_ChannelBuffered: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_ChannelName: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> UnsafePointer<Int8>)!, tcl_ChannelVersion: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> Tcl_ChannelTypeVersion)!, tcl_ChannelBlockModeProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Int32)!)!, tcl_ChannelCloseProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Int32)!)!, tcl_ChannelClose2Proc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!)!, tcl_ChannelInputProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!)!, tcl_ChannelOutputProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafePointer<Int8>, Int32, UnsafeMutablePointer<Int32>) -> Int32)!)!, tcl_ChannelSeekProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int, Int32, UnsafeMutablePointer<Int32>) -> Int32)!)!, tcl_ChannelSetOptionProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>) -> Int32)!)!, tcl_ChannelGetOptionProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_DString>) -> Int32)!)!, tcl_ChannelWatchProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Void)!)!, tcl_ChannelGetHandleProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32, UnsafeMutablePointer<ClientData>) -> Int32)!)!, tcl_ChannelFlushProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData) -> Int32)!)!, tcl_ChannelHandlerProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Int32)!)!, tcl_JoinThread: (@convention(c) (Tcl_ThreadId, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_IsChannelShared: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_IsChannelRegistered: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!, tcl_CutChannel: (@convention(c) (Tcl_Channel) -> Void)!, tcl_SpliceChannel: (@convention(c) (Tcl_Channel) -> Void)!, tcl_ClearChannelHandlers: (@convention(c) (Tcl_Channel) -> Void)!, tcl_IsChannelExisting: (@convention(c) (UnsafePointer<Int8>) -> Int32)!, tcl_UniCharNcasecmp: (@convention(c) (UnsafePointer<Tcl_UniChar>, UnsafePointer<Tcl_UniChar>, UInt) -> Int32)!, tcl_UniCharCaseMatch: (@convention(c) (UnsafePointer<Tcl_UniChar>, UnsafePointer<Tcl_UniChar>, Int32) -> Int32)!, tcl_FindHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, tcl_CreateHashEntry: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_HashEntry>)!, tcl_InitCustomHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>, Int32, UnsafeMutablePointer<Tcl_HashKeyType>) -> Void)!, tcl_InitObjHashTable: (@convention(c) (UnsafeMutablePointer<Tcl_HashTable>) -> Void)!, tcl_CommandTraceInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, ClientData) -> ClientData)!, tcl_TraceCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, ClientData) -> Int32)!, tcl_UntraceCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafePointer<Int8>, Int32) -> Void)!, ClientData) -> Void)!, tcl_AttemptAlloc: (@convention(c) (UInt32) -> UnsafeMutablePointer<Int8>)!, tcl_AttemptDbCkalloc: (@convention(c) (UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, tcl_AttemptRealloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32) -> UnsafeMutablePointer<Int8>)!, tcl_AttemptDbCkrealloc: (@convention(c) (UnsafeMutablePointer<Int8>, UInt32, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Int8>)!, tcl_AttemptSetObjLength: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!, tcl_GetChannelThread: (@convention(c) (Tcl_Channel) -> Tcl_ThreadId)!, tcl_GetUnicodeFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_UniChar>)!, tcl_GetMathFuncInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Int32>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_ValueType>>, UnsafeMutablePointer<(@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Value>, UnsafeMutablePointer<Tcl_Value>) -> Int32)?>, UnsafeMutablePointer<ClientData>) -> Int32)!, tcl_ListMathFuncs: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SubstObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DetachChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Channel) -> Int32)!, tcl_IsStandardChannel: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_FSCopyFile: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSCopyDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_FSCreateDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSDeleteFile: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSLoadFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafePointer<Int8>, UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)?>, UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)?>, UnsafeMutablePointer<Tcl_LoadHandle>, UnsafeMutablePointer<(@convention(c) (Tcl_LoadHandle) -> Void)?>) -> Int32)!, tcl_FSMatchInDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_GlobTypeData>) -> Int32)!, tcl_FSLink: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSRemoveDirectory: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_FSRenameFile: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSLstat: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!, tcl_FSUtime: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<utimbuf>) -> Int32)!, tcl_FSFileAttrsGet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_FSFileAttrsSet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSFileAttrStrings: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<UnsafePointer<Int8>>)!, tcl_FSStat: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_StatBuf>) -> Int32)!, tcl_FSAccess: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> Int32)!, tcl_FSOpenFileChannel: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32) -> Tcl_Channel)!, tcl_FSGetCwd: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSChdir: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSConvertToPathType: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSJoinPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSSplitPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSEqualPaths: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSGetNormalizedPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSJoinToPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSGetInternalRep: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Filesystem>) -> ClientData)!, tcl_FSGetTranslatedPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSEvalFile: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_FSNewNativePath: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>, ClientData) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSGetNativePath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafePointer<Int8>)!, tcl_FSFileSystemInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSPathSeparator: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSListVolumes: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_FSRegister: (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Filesystem>) -> Int32)!, tcl_FSUnregister: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>) -> Int32)!, tcl_FSData: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>) -> ClientData)!, tcl_FSGetTranslatedStringPath: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> UnsafePointer<Int8>)!, tcl_FSGetFileSystemForPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> UnsafeMutablePointer<Tcl_Filesystem>)!, tcl_FSGetPathType: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Tcl_PathType)!, tcl_OutputBuffered: (@convention(c) (Tcl_Channel) -> Int32)!, tcl_FSMountsChanged: (@convention(c) (UnsafeMutablePointer<Tcl_Filesystem>) -> Void)!, tcl_EvalTokensStandard: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Token>, Int32) -> Int32)!, tcl_GetTime: (@convention(c) (UnsafeMutablePointer<Tcl_Time>) -> Void)!, tcl_CreateObjTrace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>, Int32, UnsafePointer<Int8>, Tcl_Command, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Tcl_Trace)!, tcl_GetCommandInfoFromToken: (@convention(c) (Tcl_Command, UnsafeMutablePointer<Tcl_CmdInfo>) -> Int32)!, tcl_SetCommandInfoFromToken: (@convention(c) (Tcl_Command, UnsafePointer<Tcl_CmdInfo>) -> Int32)!, tcl_DbNewWideIntObj: (@convention(c) (Tcl_WideInt, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_GetWideIntFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_WideInt>) -> Int32)!, tcl_NewWideIntObj: (@convention(c) (Tcl_WideInt) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SetWideIntObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, Tcl_WideInt) -> Void)!, tcl_AllocStatBuf: (@convention(c) () -> UnsafeMutablePointer<Tcl_StatBuf>)!, tcl_Seek: (@convention(c) (Tcl_Channel, Tcl_WideInt, Int32) -> Tcl_WideInt)!, tcl_Tell: (@convention(c) (Tcl_Channel) -> Tcl_WideInt)!, tcl_ChannelWideSeekProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Tcl_WideInt, Int32, UnsafeMutablePointer<Int32>) -> Tcl_WideInt)!)!, tcl_DictObjPut: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_DictObjGet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_DictObjRemove: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_DictObjSize: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_DictObjFirst: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_DictSearch>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_DictObjNext: (@convention(c) (UnsafeMutablePointer<Tcl_DictSearch>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<Int32>) -> Void)!, tcl_DictObjDone: (@convention(c) (UnsafeMutablePointer<Tcl_DictSearch>) -> Void)!, tcl_DictObjPutKeyList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_DictObjRemoveKeyList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_NewDictObj: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewDictObj: (@convention(c) (UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_RegisterConfig: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Config>, UnsafePointer<Int8>) -> Void)!, tcl_CreateNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, ClientData, (@convention(c) (ClientData) -> Void)!) -> UnsafeMutablePointer<Tcl_Namespace>)!, tcl_DeleteNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Namespace>) -> Void)!, tcl_AppendExportList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_Export: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_Import: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafePointer<Int8>, Int32) -> Int32)!, tcl_ForgetImport: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafePointer<Int8>) -> Int32)!, tcl_GetCurrentNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Namespace>)!, tcl_GetGlobalNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> UnsafeMutablePointer<Tcl_Namespace>)!, tcl_FindNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Namespace>, Int32) -> UnsafeMutablePointer<Tcl_Namespace>)!, tcl_FindCommand: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Namespace>, Int32) -> Tcl_Command)!, tcl_GetCommandFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Tcl_Command)!, tcl_GetCommandFullName: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_FSEvalFileEx: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>) -> Int32)!, tcl_SetExitProc: (@convention(c) ((@convention(c) (ClientData) -> Void)!) -> (@convention(c) (ClientData) -> Void)!)!, tcl_LimitAddHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData, (@convention(c) (ClientData) -> Void)!) -> Void)!, tcl_LimitRemoveHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, (@convention(c) (ClientData, UnsafeMutablePointer<Tcl_Interp>) -> Void)!, ClientData) -> Void)!, tcl_LimitReady: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_LimitCheck: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_LimitExceeded: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_LimitSetCommands: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Void)!, tcl_LimitSetTime: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Time>) -> Void)!, tcl_LimitSetGranularity: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32, Int32) -> Void)!, tcl_LimitTypeEnabled: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, tcl_LimitTypeExceeded: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, tcl_LimitTypeSet: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Void)!, tcl_LimitTypeReset: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Void)!, tcl_LimitGetCommands: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>) -> Int32)!, tcl_LimitGetTime: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Time>) -> Void)!, tcl_LimitGetGranularity: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Int32)!, tcl_SaveInterpState: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> Tcl_InterpState)!, tcl_RestoreInterpState: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_InterpState) -> Int32)!, tcl_DiscardInterpState: (@convention(c) (Tcl_InterpState) -> Void)!, tcl_SetReturnOptions: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_GetReturnOptions: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_IsEnsemble: (@convention(c) (Tcl_Command) -> Int32)!, tcl_CreateEnsemble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, UnsafeMutablePointer<Tcl_Namespace>, Int32) -> Tcl_Command)!, tcl_FindEnsemble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, Int32) -> Tcl_Command)!, tcl_SetEnsembleSubcommandList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_SetEnsembleMappingDict: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_SetEnsembleUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_SetEnsembleFlags: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, Int32) -> Int32)!, tcl_GetEnsembleSubcommandList: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_GetEnsembleMappingDict: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_GetEnsembleUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_GetEnsembleFlags: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<Int32>) -> Int32)!, tcl_GetEnsembleNamespace: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Tcl_Command, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Namespace>>) -> Int32)!, tcl_SetTimeProc: (@convention(c) ((@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)!, (@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)!, ClientData) -> Void)!, tcl_QueryTimeProc: (@convention(c) (UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)?>, UnsafeMutablePointer<(@convention(c) (UnsafeMutablePointer<Tcl_Time>, ClientData) -> Void)?>, UnsafeMutablePointer<ClientData>) -> Void)!, tcl_ChannelThreadActionProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Int32) -> Void)!)!, tcl_NewBignumObj: (@convention(c) (UnsafeMutablePointer<mp_int>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_DbNewBignumObj: (@convention(c) (UnsafeMutablePointer<mp_int>, UnsafePointer<Int8>, Int32) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SetBignumObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<mp_int>) -> Void)!, tcl_GetBignumFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<mp_int>) -> Int32)!, tcl_TakeBignumFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<mp_int>) -> Int32)!, tcl_TruncateChannel: (@convention(c) (Tcl_Channel, Tcl_WideInt) -> Int32)!, tcl_ChannelTruncateProc: (@convention(c) (UnsafePointer<Tcl_ChannelType>) -> (@convention(c) (ClientData, Tcl_WideInt) -> Int32)!)!, tcl_SetChannelErrorInterp: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_GetChannelErrorInterp: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Void)!, tcl_SetChannelError: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_GetChannelError: (@convention(c) (Tcl_Channel, UnsafeMutablePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Void)!, tcl_InitBignumFromDouble: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, Double, UnsafeMutablePointer<mp_int>) -> Int32)!, tcl_GetNamespaceUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SetNamespaceUnknownHandler: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Namespace>, UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_GetEncodingFromObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafeMutablePointer<Tcl_Encoding>) -> Int32)!, tcl_GetEncodingSearchPath: (@convention(c) () -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_SetEncodingSearchPath: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>) -> Int32)!, tcl_GetEncodingNameFromEnvironment: (@convention(c) (UnsafeMutablePointer<Tcl_DString>) -> UnsafePointer<Int8>)!, tcl_PkgRequireProc: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>, UnsafeMutablePointer<ClientData>) -> Int32)!, tcl_AppendObjToErrorInfo: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>) -> Void)!, tcl_AppendLimitedToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32, Int32, UnsafePointer<Int8>) -> Void)!, tcl_Format: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> UnsafeMutablePointer<Tcl_Obj>)!, tcl_AppendFormatToObj: (@convention(c) (UnsafeMutablePointer<Tcl_Interp>, UnsafeMutablePointer<Tcl_Obj>, UnsafePointer<Int8>, Int32, UnsafePointer<UnsafeMutablePointer<Tcl_Obj>>) -> Int32)!, tcl_ObjPrintf: COpaquePointer, tcl_AppendPrintfToObj: COpaquePointer)
}
var tclStubsPtr: UnsafeMutablePointer<TclStubs>
struct TclPlatStubs {
  var magic: Int32
  var hooks: COpaquePointer
  init()
}
var tclPlatStubsPtr: UnsafeMutablePointer<TclPlatStubs>
