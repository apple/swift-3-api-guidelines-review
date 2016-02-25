
struct cssm_spi_ac_funcs {
  var AuthCompute: (@convention(c) (CSSM_AC_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafePointer<CSSM_TUPLEGROUP>, uint32, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, CSSM_TUPLEGROUP_PTR) -> CSSM_RETURN)!
  var PassThrough: (@convention(c) (CSSM_AC_HANDLE, CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!
  init()
  init(AuthCompute AuthCompute: (@convention(c) (CSSM_AC_HANDLE, UnsafePointer<CSSM_TUPLEGROUP>, UnsafePointer<CSSM_TUPLEGROUP>, uint32, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, UnsafePointer<CSSM_LIST>, CSSM_TUPLEGROUP_PTR) -> CSSM_RETURN)!, PassThrough PassThrough: (@convention(c) (CSSM_AC_HANDLE, CSSM_TP_HANDLE, CSSM_CL_HANDLE, CSSM_CC_HANDLE, UnsafePointer<CSSM_DL_DB_LIST>, uint32, UnsafePointer<Void>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> CSSM_RETURN)!)
}
