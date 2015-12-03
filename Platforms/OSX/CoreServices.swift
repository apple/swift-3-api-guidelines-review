
var typeBoolean: Int { get }
var typeChar: Int { get }
var typeStyledUnicodeText: Int { get }
var typeEncodedString: Int { get }
var typeUnicodeText: Int { get }
var typeCString: Int { get }
var typePString: Int { get }
var typeUTF16ExternalRepresentation: Int { get }
var typeUTF8Text: Int { get }
var typeSInt16: Int { get }
var typeUInt16: Int { get }
var typeSInt32: Int { get }
var typeUInt32: Int { get }
var typeSInt64: Int { get }
var typeUInt64: Int { get }
var typeIEEE32BitFloatingPoint: Int { get }
var typeIEEE64BitFloatingPoint: Int { get }
var type128BitFloatingPoint: Int { get }
var typeDecimalStruct: Int { get }
var typeAEList: Int { get }
var typeAERecord: Int { get }
var typeAppleEvent: Int { get }
var typeEventRecord: Int { get }
var typeTrue: Int { get }
var typeFalse: Int { get }
var typeAlias: Int { get }
var typeEnumerated: Int { get }
var typeType: Int { get }
var typeAppParameters: Int { get }
var typeProperty: Int { get }
var typeFSRef: Int { get }
var typeFileURL: Int { get }
var typeBookmarkData: Int { get }
var typeKeyword: Int { get }
var typeSectionH: Int { get }
var typeWildCard: Int { get }
var typeApplSignature: Int { get }
var typeQDRectangle: Int { get }
var typeFixed: Int { get }
var typeProcessSerialNumber: Int { get }
var typeApplicationURL: Int { get }
var typeNull: Int { get }
var typeCFAttributedStringRef: Int { get }
var typeCFMutableAttributedStringRef: Int { get }
var typeCFStringRef: Int { get }
var typeCFMutableStringRef: Int { get }
var typeCFArrayRef: Int { get }
var typeCFMutableArrayRef: Int { get }
var typeCFDictionaryRef: Int { get }
var typeCFMutableDictionaryRef: Int { get }
var typeCFNumberRef: Int { get }
var typeCFBooleanRef: Int { get }
var typeCFTypeRef: Int { get }
var typeKernelProcessID: Int { get }
var typeMachPort: Int { get }
var typeAuditToken: Int { get }
var typeApplicationBundleID: Int { get }
var keyTransactionIDAttr: Int { get }
var keyReturnIDAttr: Int { get }
var keyEventClassAttr: Int { get }
var keyEventIDAttr: Int { get }
var keyAddressAttr: Int { get }
var keyOptionalKeywordAttr: Int { get }
var keyTimeoutAttr: Int { get }
var keyInteractLevelAttr: Int { get }
var keyEventSourceAttr: Int { get }
var keyMissedKeywordAttr: Int { get }
var keyOriginalAddressAttr: Int { get }
var keyAcceptTimeoutAttr: Int { get }
var keyReplyRequestedAttr: Int { get }
var keySenderEUIDAttr: Int { get }
var keySenderEGIDAttr: Int { get }
var keySenderUIDAttr: Int { get }
var keySenderGIDAttr: Int { get }
var keySenderPIDAttr: Int { get }
var keySenderAuditTokenAttr: Int { get }
var keySenderApplescriptEntitlementsAttr: Int { get }
var keySenderApplicationIdentifierEntitlementAttr: Int { get }
var keySenderApplicationSandboxed: Int { get }
var keyActualSenderAuditToken: Int { get }
var kAEDebugPOSTHeader: Int { get }
var kAEDebugReplyHeader: Int { get }
var kAEDebugXMLRequest: Int { get }
var kAEDebugXMLResponse: Int { get }
var kAEDebugXMLDebugAll: Int { get }
var kSOAP1999Schema: Int { get }
var kSOAP2001Schema: Int { get }
var keyUserNameAttr: Int { get }
var keyUserPasswordAttr: Int { get }
var keyDisableAuthenticationAttr: Int { get }
var keyXMLDebuggingAttr: Int { get }
var kAERPCClass: Int { get }
var kAEXMLRPCScheme: Int { get }
var kAESOAPScheme: Int { get }
var kAESharedScriptHandler: Int { get }
var keyRPCMethodName: Int { get }
var keyRPCMethodParam: Int { get }
var keyRPCMethodParamOrder: Int { get }
var keyAEPOSTHeaderData: Int { get }
var keyAEReplyHeaderData: Int { get }
var keyAEXMLRequestData: Int { get }
var keyAEXMLReplyData: Int { get }
var keyAdditionalHTTPHeaders: Int { get }
var keySOAPAction: Int { get }
var keySOAPMethodNameSpace: Int { get }
var keySOAPMethodNameSpaceURI: Int { get }
var keySOAPSchemaVersion: Int { get }
var keySOAPStructureMetaData: Int { get }
var keySOAPSMDNamespace: Int { get }
var keySOAPSMDNamespaceURI: Int { get }
var keySOAPSMDType: Int { get }
var kAEUseHTTPProxyAttr: Int { get }
var kAEHTTPProxyPortAttr: Int { get }
var kAEHTTPProxyHostAttr: Int { get }
var kAESocks4Protocol: Int { get }
var kAESocks5Protocol: Int { get }
var kAEUseSocksAttr: Int { get }
var kAESocksProxyAttr: Int { get }
var kAESocksHostAttr: Int { get }
var kAESocksPortAttr: Int { get }
var kAESocksUserAttr: Int { get }
var kAESocksPasswordAttr: Int { get }
var kAEDescListFactorNone: Int { get }
var kAEDescListFactorType: Int { get }
var kAEDescListFactorTypeAndSize: Int { get }
var kAutoGenerateReturnID: Int { get }
var kAnyTransactionID: Int { get }
typealias DescType = ResType
typealias AEKeyword = FourCharCode
typealias AEDataStorageType = COpaquePointer
typealias AEDataStorage = UnsafeMutablePointer<AEDataStorageType>
struct AEDesc {
  var descriptorType: DescType
  var dataHandle: AEDataStorage
  init()
  init(descriptorType: DescType, dataHandle: AEDataStorage)
}
typealias AEDescPtr = UnsafeMutablePointer<AEDesc>
struct AEKeyDesc {
  var descKey: AEKeyword
  var descContent: AEDesc
  init()
  init(descKey: AEKeyword, descContent: AEDesc)
}
typealias AEDescList = AEDesc
typealias AERecord = AEDescList
typealias AEAddressDesc = AEDesc
typealias AppleEvent = AERecord
typealias AppleEventPtr = UnsafeMutablePointer<AppleEvent>
typealias AEReturnID = Int16
typealias AETransactionID = Int32
typealias AEEventClass = FourCharCode
typealias AEEventID = FourCharCode
typealias AEArrayType = Int8
var kAEDataArray: Int { get }
var kAEPackedArray: Int { get }
var kAEDescArray: Int { get }
var kAEKeyDescArray: Int { get }
var kAEHandleArray: Int { get }
struct AEArrayData {
  var kAEDataArray: (Int16)
  var kAEPackedArray: (Int8)
  var kAEHandleArray: (Handle)
  var kAEDescArray: (AEDesc)
  var kAEKeyDescArray: (AEKeyDesc)
  init(kAEDataArray: (Int16))
  init(kAEPackedArray: (Int8))
  init(kAEHandleArray: (Handle))
  init(kAEDescArray: (AEDesc))
  init(kAEKeyDescArray: (AEKeyDesc))
  init()
}
typealias AEArrayDataPointer = UnsafeMutablePointer<AEArrayData>

/**************************************************************************
  These constants are used by AEMach and AEInteraction APIs.  They are not
  strictly part of the data format, but are declared here due to layering.
**************************************************************************/
typealias AESendPriority = Int16
var kAENormalPriority: Int { get }
var kAEHighPriority: Int { get }
typealias AESendMode = Int32
var kAENoReply: Int { get }
var kAEQueueReply: Int { get }
var kAEWaitReply: Int { get }
var kAEDontReconnect: Int { get }
var kAEWantReceipt: Int { get }
var kAENeverInteract: Int { get }
var kAECanInteract: Int { get }
var kAEAlwaysInteract: Int { get }
var kAECanSwitchLayer: Int { get }
var kAEDontRecord: Int { get }
var kAEDontExecute: Int { get }
var kAEProcessNonReplyEvents: Int { get }
var kAEDoNotAutomaticallyAddAnnotationsToEvent: Int { get }
var kAEDefaultTimeout: Int { get }
var kNoTimeOut: Int { get }

/**************************************************************************
  These calls are used to set up and modify the coercion dispatch table.
**************************************************************************/
typealias AECoerceDescProcPtr = @convention(c) (UnsafePointer<AEDesc>, DescType, SRefCon, UnsafeMutablePointer<AEDesc>) -> OSErr
typealias AECoercePtrProcPtr = @convention(c) (DescType, UnsafePointer<Void>, Size, DescType, SRefCon, UnsafeMutablePointer<AEDesc>) -> OSErr
typealias AECoerceDescUPP = AECoerceDescProcPtr
typealias AECoercePtrUPP = AECoercePtrProcPtr
@available(OSX 10.0, *)
func NewAECoerceDescUPP(userRoutine: AECoerceDescProcPtr!) -> AECoerceDescUPP!
@available(OSX 10.0, *)
func NewAECoercePtrUPP(userRoutine: AECoercePtrProcPtr!) -> AECoercePtrUPP!
@available(OSX 10.0, *)
func DisposeAECoerceDescUPP(userUPP: AECoerceDescUPP!)
@available(OSX 10.0, *)
func DisposeAECoercePtrUPP(userUPP: AECoercePtrUPP!)
@available(OSX 10.0, *)
func InvokeAECoerceDescUPP(fromDesc: UnsafePointer<AEDesc>, _ toType: DescType, _ handlerRefcon: SRefCon, _ toDesc: UnsafeMutablePointer<AEDesc>, _ userUPP: AECoerceDescUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeAECoercePtrUPP(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ toType: DescType, _ handlerRefcon: SRefCon, _ result: UnsafeMutablePointer<AEDesc>, _ userUPP: AECoercePtrUPP!) -> OSErr
typealias AECoercionHandlerUPP = AECoerceDescUPP
@available(OSX 10.0, *)
func AEInstallCoercionHandler(fromType: DescType, _ toType: DescType, _ handler: AECoercionHandlerUPP!, _ handlerRefcon: SRefCon, _ fromTypeIsDesc: Bool, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AERemoveCoercionHandler(fromType: DescType, _ toType: DescType, _ handler: AECoercionHandlerUPP!, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AEGetCoercionHandler(fromType: DescType, _ toType: DescType, _ handler: UnsafeMutablePointer<AECoercionHandlerUPP?>, _ handlerRefcon: UnsafeMutablePointer<SRefCon>, _ fromTypeIsDesc: UnsafeMutablePointer<DarwinBoolean>, _ isSysHandler: Bool) -> OSErr

/**************************************************************************
  The following calls provide for a coercion interface.
**************************************************************************/
@available(OSX 10.0, *)
func AECoercePtr(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ toType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AECoerceDesc(theAEDesc: UnsafePointer<AEDesc>, _ toType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr

/**************************************************************************
 The following calls apply to any AEDesc. Every 'result' descriptor is
 created for you, so you will be responsible for memory management
 (including disposing) of the descriptors so created.  
**************************************************************************/
@available(OSX 10.0, *)
func AEInitializeDesc(desc: UnsafeMutablePointer<AEDesc>)
@available(OSX 10.0, *)
func AECreateDesc(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AEDisposeDesc(theAEDesc: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AEDuplicateDesc(theAEDesc: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
typealias AEDisposeExternalProcPtr = @convention(c) (UnsafePointer<Void>, Size, SRefCon) -> Void
typealias AEDisposeExternalUPP = AEDisposeExternalProcPtr
@available(OSX 10.2, *)
func AECreateDescFromExternalPtr(descriptorType: OSType, _ dataPtr: UnsafePointer<Void>, _ dataLength: Size, _ disposeCallback: AEDisposeExternalUPP!, _ disposeRefcon: SRefCon, _ theDesc: UnsafeMutablePointer<AEDesc>) -> OSStatus
@available(OSX 10.8, *)
func AECompareDesc(desc1: UnsafePointer<AEDesc>, _ desc2: UnsafePointer<AEDesc>, _ resultP: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/**************************************************************************
  The following calls apply to AEDescList. Since AEDescList is a subtype of
  AEDesc, the calls in the previous section can also be used for AEDescList.
  All list and array indices are 1-based. If the data was greater than
  maximumSize in the routines below, then actualSize will be greater than
  maximumSize, but only maximumSize bytes will actually be retrieved.
**************************************************************************/
@available(OSX 10.0, *)
func AECreateList(factoringPtr: UnsafePointer<Void>, _ factoredSize: Size, _ isRecord: Bool, _ resultList: UnsafeMutablePointer<AEDescList>) -> OSErr
@available(OSX 10.0, *)
func AECountItems(theAEDescList: UnsafePointer<AEDescList>, _ theCount: UnsafeMutablePointer<Int>) -> OSErr
@available(OSX 10.0, *)
func AEPutPtr(theAEDescList: UnsafeMutablePointer<AEDescList>, _ index: Int, _ typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size) -> OSErr
@available(OSX 10.0, *)
func AEPutDesc(theAEDescList: UnsafeMutablePointer<AEDescList>, _ index: Int, _ theAEDesc: UnsafePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AEGetNthPtr(theAEDescList: UnsafePointer<AEDescList>, _ index: Int, _ desiredType: DescType, _ theAEKeyword: UnsafeMutablePointer<AEKeyword>, _ typeCode: UnsafeMutablePointer<DescType>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSErr
@available(OSX 10.0, *)
func AEGetNthDesc(theAEDescList: UnsafePointer<AEDescList>, _ index: Int, _ desiredType: DescType, _ theAEKeyword: UnsafeMutablePointer<AEKeyword>, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AESizeOfNthItem(theAEDescList: UnsafePointer<AEDescList>, _ index: Int, _ typeCode: UnsafeMutablePointer<DescType>, _ dataSize: UnsafeMutablePointer<Size>) -> OSErr
@available(OSX 10.0, *)
func AEGetArray(theAEDescList: UnsafePointer<AEDescList>, _ arrayType: AEArrayType, _ arrayPtr: AEArrayDataPointer, _ maximumSize: Size, _ itemType: UnsafeMutablePointer<DescType>, _ itemSize: UnsafeMutablePointer<Size>, _ itemCount: UnsafeMutablePointer<Int>) -> OSErr
@available(OSX 10.0, *)
func AEPutArray(theAEDescList: UnsafeMutablePointer<AEDescList>, _ arrayType: AEArrayType, _ arrayPtr: UnsafePointer<AEArrayData>, _ itemType: DescType, _ itemSize: Size, _ itemCount: Int) -> OSErr
@available(OSX 10.0, *)
func AEDeleteItem(theAEDescList: UnsafeMutablePointer<AEDescList>, _ index: Int) -> OSErr

/**************************************************************************
 The following calls apply to AERecord. Since AERecord is a subtype of
 AEDescList, the calls in the previous sections can also be used for
 AERecord an AERecord can be created by using AECreateList with isRecord
 set to true. 
**************************************************************************/
/*************************************************************************
 AERecords can have an abitrary descriptorType.  This allows you to
 check if desc is truly an AERecord
************************************************************************/
@available(OSX 10.0, *)
func AECheckIsRecord(theDesc: UnsafePointer<AEDesc>) -> Bool

/**************************************************************************
  The following calls create and manipulate the AppleEvent data type.
**************************************************************************/
@available(OSX 10.0, *)
func AECreateAppleEvent(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ target: UnsafePointer<AEAddressDesc>, _ returnID: AEReturnID, _ transactionID: AETransactionID, _ result: UnsafeMutablePointer<AppleEvent>) -> OSErr

/**************************************************************************
  The following calls are used to pack and unpack parameters from records
  of type AppleEvent. Since AppleEvent is a subtype of AERecord, the calls
  in the previous sections can also be used for variables of type
  AppleEvent. The next six calls are in fact identical to the six calls
  for AERecord.
**************************************************************************/
@available(OSX 10.0, *)
func AEPutParamPtr(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size) -> OSErr
@available(OSX 10.0, *)
func AEPutParamDesc(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ theAEDesc: UnsafePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AEGetParamPtr(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ actualType: UnsafeMutablePointer<DescType>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSErr
@available(OSX 10.0, *)
func AEGetParamDesc(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AESizeOfParam(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: UnsafeMutablePointer<DescType>, _ dataSize: UnsafeMutablePointer<Size>) -> OSErr
@available(OSX 10.0, *)
func AEDeleteParam(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword) -> OSErr
@available(OSX 10.0, *)
func AEGetAttributePtr(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ typeCode: UnsafeMutablePointer<DescType>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSErr
@available(OSX 10.0, *)
func AEGetAttributeDesc(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ desiredType: DescType, _ result: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AESizeOfAttribute(theAppleEvent: UnsafePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: UnsafeMutablePointer<DescType>, _ dataSize: UnsafeMutablePointer<Size>) -> OSErr
@available(OSX 10.0, *)
func AEPutAttributePtr(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size) -> OSErr
@available(OSX 10.0, *)
func AEPutAttributeDesc(theAppleEvent: UnsafeMutablePointer<AppleEvent>, _ theAEKeyword: AEKeyword, _ theAEDesc: UnsafePointer<AEDesc>) -> OSErr

/**************************************************************************
 AppleEvent Serialization Support

    AESizeOfFlattenedDesc, AEFlattenDesc, AEUnflattenDesc
    
    These calls will work for all AppleEvent data types and between different
    versions of the OS (including between Mac OS 9 and X)
    
    Basic types, AEDesc, AEList and AERecord are OK, but AppleEvent records
    themselves may not be reliably flattened for storage.
**************************************************************************/
@available(OSX 10.0, *)
func AESizeOfFlattenedDesc(theAEDesc: UnsafePointer<AEDesc>) -> Size
@available(OSX 10.0, *)
func AEFlattenDesc(theAEDesc: UnsafePointer<AEDesc>, _ buffer: Ptr, _ bufferSize: Size, _ actualSize: UnsafeMutablePointer<Size>) -> OSStatus
@available(OSX 10.0, *)
func AEUnflattenDesc(buffer: UnsafePointer<Void>, _ result: UnsafeMutablePointer<AEDesc>) -> OSStatus

/**************************************************************************
 The following calls are necessary to deal with opaque data in AEDescs, because the
 traditional way of dealing with a basic AEDesc has been to dereference the dataHandle
 directly.  This is not supported under Carbon.
**************************************************************************/
@available(OSX 10.0, *)
func AEGetDescData(theAEDesc: UnsafePointer<AEDesc>, _ dataPtr: UnsafeMutablePointer<Void>, _ maximumSize: Size) -> OSErr
@available(OSX 10.0, *)
func AEGetDescDataSize(theAEDesc: UnsafePointer<AEDesc>) -> Size
@available(OSX 10.0, *)
func AEReplaceDescData(typeCode: DescType, _ dataPtr: UnsafePointer<Void>, _ dataSize: Size, _ theAEDesc: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.2, *)
func AEGetDescDataRange(dataDesc: UnsafePointer<AEDesc>, _ buffer: UnsafeMutablePointer<Void>, _ offset: Size, _ length: Size) -> OSStatus

/**************************************************************************
  A AEEventHandler is installed to process an AppleEvent 
**************************************************************************/
typealias AEEventHandlerProcPtr = @convention(c) (UnsafePointer<AppleEvent>, UnsafeMutablePointer<AppleEvent>, SRefCon) -> OSErr
typealias AEEventHandlerUPP = AEEventHandlerProcPtr
@available(OSX 10.2, *)
func NewAEDisposeExternalUPP(userRoutine: AEDisposeExternalProcPtr!) -> AEDisposeExternalUPP!
@available(OSX 10.0, *)
func NewAEEventHandlerUPP(userRoutine: AEEventHandlerProcPtr!) -> AEEventHandlerUPP!
@available(OSX 10.2, *)
func DisposeAEDisposeExternalUPP(userUPP: AEDisposeExternalUPP!)
@available(OSX 10.0, *)
func DisposeAEEventHandlerUPP(userUPP: AEEventHandlerUPP!)
@available(OSX 10.2, *)
func InvokeAEDisposeExternalUPP(dataPtr: UnsafePointer<Void>, _ dataLength: Size, _ refcon: SRefCon, _ userUPP: AEDisposeExternalUPP!)
@available(OSX 10.0, *)
func InvokeAEEventHandlerUPP(theAppleEvent: UnsafePointer<AppleEvent>, _ reply: UnsafeMutablePointer<AppleEvent>, _ handlerRefcon: SRefCon, _ userUPP: AEEventHandlerUPP!) -> OSErr
typealias AEBuildErrorCode = UInt32
var aeBuildSyntaxNoErr: Int { get }
var aeBuildSyntaxBadToken: Int { get }
var aeBuildSyntaxBadEOF: Int { get }
var aeBuildSyntaxNoEOF: Int { get }
var aeBuildSyntaxBadNegative: Int { get }
var aeBuildSyntaxMissingQuote: Int { get }
var aeBuildSyntaxBadHex: Int { get }
var aeBuildSyntaxOddHex: Int { get }
var aeBuildSyntaxNoCloseHex: Int { get }
var aeBuildSyntaxUncoercedHex: Int { get }
var aeBuildSyntaxNoCloseString: Int { get }
var aeBuildSyntaxBadDesc: Int { get }
var aeBuildSyntaxBadData: Int { get }
var aeBuildSyntaxNoCloseParen: Int { get }
var aeBuildSyntaxNoCloseBracket: Int { get }
var aeBuildSyntaxNoCloseBrace: Int { get }
var aeBuildSyntaxNoKey: Int { get }
var aeBuildSyntaxNoColon: Int { get }
var aeBuildSyntaxCoercedList: Int { get }
var aeBuildSyntaxUncoercedDoubleAt: Int { get }
struct AEBuildError {
  var fError: AEBuildErrorCode
  var fErrorPos: UInt32
  init()
  init(fError: AEBuildErrorCode, fErrorPos: UInt32)
}
@available(OSX 10.0, *)
func vAEBuildDesc(dst: UnsafeMutablePointer<AEDesc>, _ error: UnsafeMutablePointer<AEBuildError>, _ src: UnsafePointer<Int8>, _ args: CVaListPointer) -> OSStatus
@available(OSX 10.0, *)
func vAEBuildParameters(event: UnsafeMutablePointer<AppleEvent>, _ error: UnsafeMutablePointer<AEBuildError>, _ format: UnsafePointer<Int8>, _ args: CVaListPointer) -> OSStatus
@available(OSX 10.0, *)
func vAEBuildAppleEvent(theClass: AEEventClass, _ theID: AEEventID, _ addressType: DescType, _ addressData: UnsafePointer<Void>, _ addressLength: Size, _ returnID: Int16, _ transactionID: Int32, _ resultEvt: UnsafeMutablePointer<AppleEvent>, _ error: UnsafeMutablePointer<AEBuildError>, _ paramsFmt: UnsafePointer<Int8>, _ args: CVaListPointer) -> OSStatus
@available(OSX 10.0, *)
func AEPrintDescToHandle(desc: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<Handle>) -> OSStatus
typealias AEStreamRef = COpaquePointer
@available(OSX 10.0, *)
func AEStreamOpen() -> AEStreamRef
@available(OSX 10.0, *)
func AEStreamClose(ref: AEStreamRef, _ desc: UnsafeMutablePointer<AEDesc>) -> OSStatus
@available(OSX 10.0, *)
func AEStreamOpenDesc(ref: AEStreamRef, _ newType: DescType) -> OSStatus
@available(OSX 10.0, *)
func AEStreamWriteData(ref: AEStreamRef, _ data: UnsafePointer<Void>, _ length: Size) -> OSStatus
@available(OSX 10.0, *)
func AEStreamCloseDesc(ref: AEStreamRef) -> OSStatus
@available(OSX 10.0, *)
func AEStreamWriteDesc(ref: AEStreamRef, _ newType: DescType, _ data: UnsafePointer<Void>, _ length: Size) -> OSStatus
@available(OSX 10.0, *)
func AEStreamWriteAEDesc(ref: AEStreamRef, _ desc: UnsafePointer<AEDesc>) -> OSStatus
@available(OSX 10.0, *)
func AEStreamOpenList(ref: AEStreamRef) -> OSStatus
@available(OSX 10.0, *)
func AEStreamCloseList(ref: AEStreamRef) -> OSStatus
@available(OSX 10.0, *)
func AEStreamOpenRecord(ref: AEStreamRef, _ newType: DescType) -> OSStatus
@available(OSX 10.0, *)
func AEStreamSetRecordType(ref: AEStreamRef, _ newType: DescType) -> OSStatus
@available(OSX 10.0, *)
func AEStreamCloseRecord(ref: AEStreamRef) -> OSStatus
@available(OSX 10.0, *)
func AEStreamWriteKeyDesc(ref: AEStreamRef, _ key: AEKeyword, _ newType: DescType, _ data: UnsafePointer<Void>, _ length: Size) -> OSStatus
@available(OSX 10.0, *)
func AEStreamOpenKeyDesc(ref: AEStreamRef, _ key: AEKeyword, _ newType: DescType) -> OSStatus
@available(OSX 10.0, *)
func AEStreamWriteKey(ref: AEStreamRef, _ key: AEKeyword) -> OSStatus
@available(OSX 10.0, *)
func AEStreamCreateEvent(clazz: AEEventClass, _ id: AEEventID, _ targetType: DescType, _ targetData: UnsafePointer<Void>, _ targetLength: Size, _ returnID: Int16, _ transactionID: Int32) -> AEStreamRef
@available(OSX 10.0, *)
func AEStreamOpenEvent(event: UnsafeMutablePointer<AppleEvent>) -> AEStreamRef
@available(OSX 10.0, *)
func AEStreamOptionalParam(ref: AEStreamRef, _ key: AEKeyword) -> OSStatus
var keyReplyPortAttr: Int { get }
var typeReplyPortAttr: Int { get }
@available(OSX 10.0, *)
func AEGetRegisteredMachPort() -> mach_port_t
@available(OSX 10.0, *)
func AEDecodeMessage(header: UnsafeMutablePointer<mach_msg_header_t>, _ event: UnsafeMutablePointer<AppleEvent>, _ reply: UnsafeMutablePointer<AppleEvent>) -> OSStatus
@available(OSX 10.0, *)
func AEProcessMessage(header: UnsafeMutablePointer<mach_msg_header_t>) -> OSStatus
@available(OSX 10.0, *)
func AESendMessage(event: UnsafePointer<AppleEvent>, _ reply: UnsafeMutablePointer<AppleEvent>, _ sendMode: AESendMode, _ timeOutInTicks: Int) -> OSStatus

/**** LOGICAL OPERATOR CONSTANTS  ****/
var kAEAND: Int { get }

/**** LOGICAL OPERATOR CONSTANTS  ****/
var kAEOR: Int { get }

/**** LOGICAL OPERATOR CONSTANTS  ****/
var kAENOT: Int { get }

/**** ABSOLUTE ORDINAL CONSTANTS  ****/
var kAEFirst: Int { get }

/**** ABSOLUTE ORDINAL CONSTANTS  ****/
var kAELast: Int { get }

/**** ABSOLUTE ORDINAL CONSTANTS  ****/
var kAEMiddle: Int { get }

/**** ABSOLUTE ORDINAL CONSTANTS  ****/
var kAEAny: Int { get }

/**** ABSOLUTE ORDINAL CONSTANTS  ****/
var kAEAll: Int { get }

/**** RELATIVE ORDINAL CONSTANTS  ****/
var kAENext: Int { get }

/**** RELATIVE ORDINAL CONSTANTS  ****/
var kAEPrevious: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAECompOperator: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAELogicalTerms: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAELogicalOperator: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAEObject1: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAEObject2: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAEDesiredClass: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAEContainer: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAEKeyForm: Int { get }

/**** KEYWORD CONSTANT    ****/
var keyAEKeyData: Int { get }
var keyAERangeStart: Int { get }
var keyAERangeStop: Int { get }
var keyDisposeTokenProc: Int { get }
var keyAECompareProc: Int { get }
var keyAECountProc: Int { get }
var keyAEMarkTokenProc: Int { get }
var keyAEMarkProc: Int { get }
var keyAEAdjustMarksProc: Int { get }
var keyAEGetErrDescProc: Int { get }
var formAbsolutePosition: Int { get }
var formRelativePosition: Int { get }
var formTest: Int { get }
var formRange: Int { get }
var formPropertyID: Int { get }
var formName: Int { get }
var formUniqueID: Int { get }
var typeObjectSpecifier: Int { get }
var typeObjectBeingExamined: Int { get }
var typeCurrentContainer: Int { get }
var typeToken: Int { get }
var typeRelativeDescriptor: Int { get }
var typeAbsoluteOrdinal: Int { get }
var typeIndexDescriptor: Int { get }
var typeRangeDescriptor: Int { get }
var typeLogicalDescriptor: Int { get }
var typeCompDescriptor: Int { get }
var typeOSLTokenList: Int { get }
var kAEIDoMinimum: Int { get }
var kAEIDoWhose: Int { get }
var kAEIDoMarking: Int { get }
var kAEPassSubDescs: Int { get }
var kAEResolveNestedLists: Int { get }
var kAEHandleSimpleRanges: Int { get }
var kAEUseRelativeIterators: Int { get }
var typeWhoseDescriptor: Int { get }
var formWhose: Int { get }
var typeWhoseRange: Int { get }
var keyAEWhoseRangeStart: Int { get }
var keyAEWhoseRangeStop: Int { get }
var keyAEIndex: Int { get }
var keyAETest: Int { get }
struct ccntTokenRecord {
  var tokenClass: DescType
  var token: AEDesc
  init()
  init(tokenClass: DescType, token: AEDesc)
}
typealias ccntTokenRecPtr = UnsafeMutablePointer<ccntTokenRecord>
typealias ccntTokenRecHandle = UnsafeMutablePointer<ccntTokenRecPtr>
typealias OSLAccessorProcPtr = @convention(c) (DescType, UnsafePointer<AEDesc>, DescType, DescType, UnsafePointer<AEDesc>, UnsafeMutablePointer<AEDesc>, SRefCon) -> OSErr
typealias OSLCompareProcPtr = @convention(c) (DescType, UnsafePointer<AEDesc>, UnsafePointer<AEDesc>, UnsafeMutablePointer<DarwinBoolean>) -> OSErr
typealias OSLCountProcPtr = @convention(c) (DescType, DescType, UnsafePointer<AEDesc>, UnsafeMutablePointer<Int>) -> OSErr
typealias OSLDisposeTokenProcPtr = @convention(c) (UnsafeMutablePointer<AEDesc>) -> OSErr
typealias OSLGetMarkTokenProcPtr = @convention(c) (UnsafePointer<AEDesc>, DescType, UnsafeMutablePointer<AEDesc>) -> OSErr
typealias OSLGetErrDescProcPtr = @convention(c) (UnsafeMutablePointer<UnsafeMutablePointer<AEDesc>>) -> OSErr
typealias OSLMarkProcPtr = @convention(c) (UnsafePointer<AEDesc>, UnsafePointer<AEDesc>, Int) -> OSErr
typealias OSLAdjustMarksProcPtr = @convention(c) (Int, Int, UnsafePointer<AEDesc>) -> OSErr
typealias OSLAccessorUPP = OSLAccessorProcPtr
typealias OSLCompareUPP = OSLCompareProcPtr
typealias OSLCountUPP = OSLCountProcPtr
typealias OSLDisposeTokenUPP = OSLDisposeTokenProcPtr
typealias OSLGetMarkTokenUPP = OSLGetMarkTokenProcPtr
typealias OSLGetErrDescUPP = OSLGetErrDescProcPtr
typealias OSLMarkUPP = OSLMarkProcPtr
typealias OSLAdjustMarksUPP = OSLAdjustMarksProcPtr
@available(OSX 10.0, *)
func NewOSLAccessorUPP(userRoutine: OSLAccessorProcPtr!) -> OSLAccessorUPP!
@available(OSX 10.0, *)
func NewOSLCompareUPP(userRoutine: OSLCompareProcPtr!) -> OSLCompareUPP!
@available(OSX 10.0, *)
func NewOSLCountUPP(userRoutine: OSLCountProcPtr!) -> OSLCountUPP!
@available(OSX 10.0, *)
func NewOSLDisposeTokenUPP(userRoutine: OSLDisposeTokenProcPtr!) -> OSLDisposeTokenUPP!
@available(OSX 10.0, *)
func NewOSLGetMarkTokenUPP(userRoutine: OSLGetMarkTokenProcPtr!) -> OSLGetMarkTokenUPP!
@available(OSX 10.0, *)
func NewOSLGetErrDescUPP(userRoutine: OSLGetErrDescProcPtr!) -> OSLGetErrDescUPP!
@available(OSX 10.0, *)
func NewOSLMarkUPP(userRoutine: OSLMarkProcPtr!) -> OSLMarkUPP!
@available(OSX 10.0, *)
func NewOSLAdjustMarksUPP(userRoutine: OSLAdjustMarksProcPtr!) -> OSLAdjustMarksUPP!
@available(OSX 10.0, *)
func DisposeOSLAccessorUPP(userUPP: OSLAccessorUPP!)
@available(OSX 10.0, *)
func DisposeOSLCompareUPP(userUPP: OSLCompareUPP!)
@available(OSX 10.0, *)
func DisposeOSLCountUPP(userUPP: OSLCountUPP!)
@available(OSX 10.0, *)
func DisposeOSLDisposeTokenUPP(userUPP: OSLDisposeTokenUPP!)
@available(OSX 10.0, *)
func DisposeOSLGetMarkTokenUPP(userUPP: OSLGetMarkTokenUPP!)
@available(OSX 10.0, *)
func DisposeOSLGetErrDescUPP(userUPP: OSLGetErrDescUPP!)
@available(OSX 10.0, *)
func DisposeOSLMarkUPP(userUPP: OSLMarkUPP!)
@available(OSX 10.0, *)
func DisposeOSLAdjustMarksUPP(userUPP: OSLAdjustMarksUPP!)
@available(OSX 10.0, *)
func InvokeOSLAccessorUPP(desiredClass: DescType, _ container: UnsafePointer<AEDesc>, _ containerClass: DescType, _ form: DescType, _ selectionData: UnsafePointer<AEDesc>, _ value: UnsafeMutablePointer<AEDesc>, _ accessorRefcon: SRefCon, _ userUPP: OSLAccessorUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLCompareUPP(oper: DescType, _ obj1: UnsafePointer<AEDesc>, _ obj2: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<DarwinBoolean>, _ userUPP: OSLCompareUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLCountUPP(desiredType: DescType, _ containerClass: DescType, _ container: UnsafePointer<AEDesc>, _ result: UnsafeMutablePointer<Int>, _ userUPP: OSLCountUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLDisposeTokenUPP(unneededToken: UnsafeMutablePointer<AEDesc>, _ userUPP: OSLDisposeTokenUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLGetMarkTokenUPP(dContainerToken: UnsafePointer<AEDesc>, _ containerClass: DescType, _ result: UnsafeMutablePointer<AEDesc>, _ userUPP: OSLGetMarkTokenUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLGetErrDescUPP(appDescPtr: UnsafeMutablePointer<UnsafeMutablePointer<AEDesc>>, _ userUPP: OSLGetErrDescUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLMarkUPP(dToken: UnsafePointer<AEDesc>, _ markToken: UnsafePointer<AEDesc>, _ index: Int, _ userUPP: OSLMarkUPP!) -> OSErr
@available(OSX 10.0, *)
func InvokeOSLAdjustMarksUPP(newStart: Int, _ newStop: Int, _ markToken: UnsafePointer<AEDesc>, _ userUPP: OSLAdjustMarksUPP!) -> OSErr
@available(OSX 10.0, *)
func AEObjectInit() -> OSErr
@available(OSX 10.0, *)
func AESetObjectCallbacks(myCompareProc: OSLCompareUPP!, _ myCountProc: OSLCountUPP!, _ myDisposeTokenProc: OSLDisposeTokenUPP!, _ myGetMarkTokenProc: OSLGetMarkTokenUPP!, _ myMarkProc: OSLMarkUPP!, _ myAdjustMarksProc: OSLAdjustMarksUPP!, _ myGetErrDescProcPtr: OSLGetErrDescUPP!) -> OSErr
@available(OSX 10.0, *)
func AEResolve(objectSpecifier: UnsafePointer<AEDesc>, _ callbackFlags: Int16, _ theToken: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AEInstallObjectAccessor(desiredClass: DescType, _ containerType: DescType, _ theAccessor: OSLAccessorUPP!, _ accessorRefcon: SRefCon, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AERemoveObjectAccessor(desiredClass: DescType, _ containerType: DescType, _ theAccessor: OSLAccessorUPP!, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AEGetObjectAccessor(desiredClass: DescType, _ containerType: DescType, _ accessor: UnsafeMutablePointer<OSLAccessorUPP?>, _ accessorRefcon: UnsafeMutablePointer<SRefCon>, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AEDisposeToken(theToken: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func AECallObjectAccessor(desiredClass: DescType, _ containerToken: UnsafePointer<AEDesc>, _ containerClass: DescType, _ keyForm: DescType, _ keyData: UnsafePointer<AEDesc>, _ token: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func CreateOffsetDescriptor(theOffset: Int, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func CreateCompDescriptor(comparisonOperator: DescType, _ operand1: UnsafeMutablePointer<AEDesc>, _ operand2: UnsafeMutablePointer<AEDesc>, _ disposeInputs: Bool, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func CreateLogicalDescriptor(theLogicalTerms: UnsafeMutablePointer<AEDescList>, _ theLogicOperator: DescType, _ disposeInputs: Bool, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func CreateObjSpecifier(desiredClass: DescType, _ theContainer: UnsafeMutablePointer<AEDesc>, _ keyForm: DescType, _ keyData: UnsafeMutablePointer<AEDesc>, _ disposeInputs: Bool, _ objSpecifier: UnsafeMutablePointer<AEDesc>) -> OSErr
@available(OSX 10.0, *)
func CreateRangeDescriptor(rangeStart: UnsafeMutablePointer<AEDesc>, _ rangeStop: UnsafeMutablePointer<AEDesc>, _ disposeInputs: Bool, _ theDescriptor: UnsafeMutablePointer<AEDesc>) -> OSErr
var cAEList: Int { get }
var cApplication: Int { get }
var cArc: Int { get }
var cBoolean: Int { get }
var cCell: Int { get }
var cChar: Int { get }
var cColorTable: Int { get }
var cColumn: Int { get }
var cDocument: Int { get }
var cDrawingArea: Int { get }
var cEnumeration: Int { get }
var cFile: Int { get }
var cFixed: Int { get }
var cFixedPoint: Int { get }
var cFixedRectangle: Int { get }
var cGraphicLine: Int { get }
var cGraphicObject: Int { get }
var cGraphicShape: Int { get }
var cGraphicText: Int { get }
var cGroupedGraphic: Int { get }
var cInsertionLoc: Int { get }
var cInsertionPoint: Int { get }
var cIntlText: Int { get }
var cIntlWritingCode: Int { get }
var cItem: Int { get }
var cLine: Int { get }
var cLongDateTime: Int { get }
var cLongFixed: Int { get }
var cLongFixedPoint: Int { get }
var cLongFixedRectangle: Int { get }
var cLongInteger: Int { get }
var cLongPoint: Int { get }
var cLongRectangle: Int { get }
var cMachineLoc: Int { get }
var cMenu: Int { get }
var cMenuItem: Int { get }
var cObject: Int { get }
var cObjectSpecifier: Int { get }
var cOpenableObject: Int { get }
var cOval: Int { get }
var cParagraph: Int { get }
var cPICT: Int { get }
var cPixel: Int { get }
var cPixelMap: Int { get }
var cPolygon: Int { get }
var cProperty: Int { get }
var cQDPoint: Int { get }
var cQDRectangle: Int { get }
var cRectangle: Int { get }
var cRGBColor: Int { get }
var cRotation: Int { get }
var cRoundedRectangle: Int { get }
var cRow: Int { get }
var cSelection: Int { get }
var cShortInteger: Int { get }
var cTable: Int { get }
var cText: Int { get }
var cTextFlow: Int { get }
var cTextStyles: Int { get }
var cType: Int { get }
var cVersion: Int { get }
var cWindow: Int { get }
var cWord: Int { get }
var enumArrows: Int { get }
var enumJustification: Int { get }
var enumKeyForm: Int { get }
var enumPosition: Int { get }
var enumProtection: Int { get }
var enumQuality: Int { get }
var enumSaveOptions: Int { get }
var enumStyle: Int { get }
var enumTransferMode: Int { get }
var kAEAbout: Int { get }
var kAEAfter: Int { get }
var kAEAliasSelection: Int { get }
var kAEAllCaps: Int { get }
var kAEArrowAtEnd: Int { get }
var kAEArrowAtStart: Int { get }
var kAEArrowBothEnds: Int { get }
var kAEAsk: Int { get }
var kAEBefore: Int { get }
var kAEBeginning: Int { get }
var kAEBeginsWith: Int { get }
var kAEBeginTransaction: Int { get }
var kAEBold: Int { get }
var kAECaseSensEquals: Int { get }
var kAECentered: Int { get }
var kAEChangeView: Int { get }
var kAEClone: Int { get }
var kAEClose: Int { get }
var kAECondensed: Int { get }
var kAEContains: Int { get }
var kAECopy: Int { get }
var kAECoreSuite: Int { get }
var kAECountElements: Int { get }
var kAECreateElement: Int { get }
var kAECreatePublisher: Int { get }
var kAECut: Int { get }
var kAEDelete: Int { get }
var kAEDoObjectsExist: Int { get }
var kAEDoScript: Int { get }
var kAEDrag: Int { get }
var kAEDuplicateSelection: Int { get }
var kAEEditGraphic: Int { get }
var kAEEmptyTrash: Int { get }
var kAEEnd: Int { get }
var kAEEndsWith: Int { get }
var kAEEndTransaction: Int { get }
var kAEEquals: Int { get }
var kAEExpanded: Int { get }
var kAEFast: Int { get }
var kAEFinderEvents: Int { get }
var kAEFormulaProtect: Int { get }
var kAEFullyJustified: Int { get }
var kAEGetClassInfo: Int { get }
var kAEGetData: Int { get }
var kAEGetDataSize: Int { get }
var kAEGetEventInfo: Int { get }
var kAEGetInfoSelection: Int { get }
var kAEGetPrivilegeSelection: Int { get }
var kAEGetSuiteInfo: Int { get }
var kAEGreaterThan: Int { get }
var kAEGreaterThanEquals: Int { get }
var kAEGrow: Int { get }
var kAEHidden: Int { get }
var kAEHiQuality: Int { get }
var kAEImageGraphic: Int { get }
var kAEIsUniform: Int { get }
var kAEItalic: Int { get }
var kAELeftJustified: Int { get }
var kAELessThan: Int { get }
var kAELessThanEquals: Int { get }
var kAELowercase: Int { get }
var kAEMakeObjectsVisible: Int { get }
var kAEMiscStandards: Int { get }
var kAEModifiable: Int { get }
var kAEMove: Int { get }
var kAENo: Int { get }
var kAENoArrow: Int { get }
var kAENonmodifiable: Int { get }
var kAEOpen: Int { get }
var kAEOpenSelection: Int { get }
var kAEOutline: Int { get }
var kAEPageSetup: Int { get }
var kAEPaste: Int { get }
var kAEPlain: Int { get }
var kAEPrint: Int { get }
var kAEPrintSelection: Int { get }
var kAEPrintWindow: Int { get }
var kAEPutAwaySelection: Int { get }
var kAEQDAddOver: Int { get }
var kAEQDAddPin: Int { get }
var kAEQDAdMax: Int { get }
var kAEQDAdMin: Int { get }
var kAEQDBic: Int { get }
var kAEQDBlend: Int { get }
var kAEQDCopy: Int { get }
var kAEQDNotBic: Int { get }
var kAEQDNotCopy: Int { get }
var kAEQDNotOr: Int { get }
var kAEQDNotXor: Int { get }
var kAEQDOr: Int { get }
var kAEQDSubOver: Int { get }
var kAEQDSubPin: Int { get }
var kAEQDSupplementalSuite: Int { get }
var kAEQDXor: Int { get }
var kAEQuickdrawSuite: Int { get }
var kAEQuitAll: Int { get }
var kAERedo: Int { get }
var kAERegular: Int { get }
var kAEReopenApplication: Int { get }
var kAEReplace: Int { get }
var kAERequiredSuite: Int { get }
var kAERestart: Int { get }
var kAERevealSelection: Int { get }
var kAERevert: Int { get }
var kAERightJustified: Int { get }
var kAESave: Int { get }
var kAESelect: Int { get }
var kAESetData: Int { get }
var kAESetPosition: Int { get }
var kAEShadow: Int { get }
var kAEShowClipboard: Int { get }
var kAEShutDown: Int { get }
var kAESleep: Int { get }
var kAESmallCaps: Int { get }
var kAESpecialClassProperties: Int { get }
var kAEStrikethrough: Int { get }
var kAESubscript: Int { get }
var kAESuperscript: Int { get }
var kAETableSuite: Int { get }
var kAETextSuite: Int { get }
var kAETransactionTerminated: Int { get }
var kAEUnderline: Int { get }
var kAEUndo: Int { get }
var kAEWholeWordEquals: Int { get }
var kAEYes: Int { get }
var kAEZoom: Int { get }
var kAELogOut: Int { get }
var kAEReallyLogOut: Int { get }
var kAEShowRestartDialog: Int { get }
var kAEShowShutdownDialog: Int { get }
var kAEMouseClass: Int { get }
var kAEDown: Int { get }
var kAEUp: Int { get }
var kAEMoved: Int { get }
var kAEStoppedMoving: Int { get }
var kAEWindowClass: Int { get }
var kAEUpdate: Int { get }
var kAEActivate: Int { get }
var kAEDeactivate: Int { get }
var kAECommandClass: Int { get }
var kAEKeyClass: Int { get }
var kAERawKey: Int { get }
var kAEVirtualKey: Int { get }
var kAENavigationKey: Int { get }
var kAEAutoDown: Int { get }
var kAEApplicationClass: Int { get }
var kAESuspend: Int { get }
var kAEResume: Int { get }
var kAEDiskEvent: Int { get }
var kAENullEvent: Int { get }
var kAEWakeUpEvent: Int { get }
var kAEScrapEvent: Int { get }
var kAEHighLevel: Int { get }
var keyAEAngle: Int { get }
var keyAEArcAngle: Int { get }
var keyAEBaseAddr: Int { get }
var keyAEBestType: Int { get }
var keyAEBgndColor: Int { get }
var keyAEBgndPattern: Int { get }
var keyAEBounds: Int { get }
var keyAECellList: Int { get }
var keyAEClassID: Int { get }
var keyAEColor: Int { get }
var keyAEColorTable: Int { get }
var keyAECurveHeight: Int { get }
var keyAECurveWidth: Int { get }
var keyAEDashStyle: Int { get }
var keyAEData: Int { get }
var keyAEDefaultType: Int { get }
var keyAEDefinitionRect: Int { get }
var keyAEDescType: Int { get }
var keyAEDestination: Int { get }
var keyAEDoAntiAlias: Int { get }
var keyAEDoDithered: Int { get }
var keyAEDoRotate: Int { get }
var keyAEDoScale: Int { get }
var keyAEDoTranslate: Int { get }
var keyAEEditionFileLoc: Int { get }
var keyAEElements: Int { get }
var keyAEEndPoint: Int { get }
var keyAEEventClass: Int { get }
var keyAEEventID: Int { get }
var keyAEFile: Int { get }
var keyAEFileType: Int { get }
var keyAEFillColor: Int { get }
var keyAEFillPattern: Int { get }
var keyAEFlipHorizontal: Int { get }
var keyAEFlipVertical: Int { get }
var keyAEFont: Int { get }
var keyAEFormula: Int { get }
var keyAEGraphicObjects: Int { get }
var keyAEID: Int { get }
var keyAEImageQuality: Int { get }
var keyAEInsertHere: Int { get }
var keyAEKeyForms: Int { get }
var keyAEKeyword: Int { get }
var keyAELevel: Int { get }
var keyAELineArrow: Int { get }
var keyAEName: Int { get }
var keyAENewElementLoc: Int { get }
var keyAEObject: Int { get }
var keyAEObjectClass: Int { get }
var keyAEOffStyles: Int { get }
var keyAEOnStyles: Int { get }
var keyAEParameters: Int { get }
var keyAEParamFlags: Int { get }
var keyAEPenColor: Int { get }
var keyAEPenPattern: Int { get }
var keyAEPenWidth: Int { get }
var keyAEPixelDepth: Int { get }
var keyAEPixMapMinus: Int { get }
var keyAEPMTable: Int { get }
var keyAEPointList: Int { get }
var keyAEPointSize: Int { get }
var keyAEPosition: Int { get }
var keyAEPropData: Int { get }
var keyAEProperties: Int { get }
var keyAEProperty: Int { get }
var keyAEPropFlags: Int { get }
var keyAEPropID: Int { get }
var keyAEProtection: Int { get }
var keyAERenderAs: Int { get }
var keyAERequestedType: Int { get }
var keyAEResult: Int { get }
var keyAEResultInfo: Int { get }
var keyAERotation: Int { get }
var keyAERotPoint: Int { get }
var keyAERowList: Int { get }
var keyAESaveOptions: Int { get }
var keyAEScale: Int { get }
var keyAEScriptTag: Int { get }
var keyAESearchText: Int { get }
var keyAEShowWhere: Int { get }
var keyAEStartAngle: Int { get }
var keyAEStartPoint: Int { get }
var keyAEStyles: Int { get }
var keyAESuiteID: Int { get }
var keyAEText: Int { get }
var keyAETextColor: Int { get }
var keyAETextFont: Int { get }
var keyAETextPointSize: Int { get }
var keyAETextStyles: Int { get }
var keyAETextLineHeight: Int { get }
var keyAETextLineAscent: Int { get }
var keyAETheText: Int { get }
var keyAETransferMode: Int { get }
var keyAETranslation: Int { get }
var keyAETryAsStructGraf: Int { get }
var keyAEUniformStyles: Int { get }
var keyAEUpdateOn: Int { get }
var keyAEUserTerm: Int { get }
var keyAEWindow: Int { get }
var keyAEWritingCode: Int { get }
var keyMiscellaneous: Int { get }
var keySelection: Int { get }
var keyWindow: Int { get }
var keyWhen: Int { get }
var keyWhere: Int { get }
var keyModifiers: Int { get }
var keyKey: Int { get }
var keyKeyCode: Int { get }
var keyKeyboard: Int { get }
var keyDriveNumber: Int { get }
var keyErrorCode: Int { get }
var keyHighLevelClass: Int { get }
var keyHighLevelID: Int { get }
var pArcAngle: Int { get }
var pBackgroundColor: Int { get }
var pBackgroundPattern: Int { get }
var pBestType: Int { get }
var pBounds: Int { get }
var pClass: Int { get }
var pClipboard: Int { get }
var pColor: Int { get }
var pColorTable: Int { get }
var pContents: Int { get }
var pCornerCurveHeight: Int { get }
var pCornerCurveWidth: Int { get }
var pDashStyle: Int { get }
var pDefaultType: Int { get }
var pDefinitionRect: Int { get }
var pEnabled: Int { get }
var pEndPoint: Int { get }
var pFillColor: Int { get }
var pFillPattern: Int { get }
var pFont: Int { get }
var pFormula: Int { get }
var pGraphicObjects: Int { get }
var pHasCloseBox: Int { get }
var pHasTitleBar: Int { get }
var pID: Int { get }
var pIndex: Int { get }
var pInsertionLoc: Int { get }
var pIsFloating: Int { get }
var pIsFrontProcess: Int { get }
var pIsModal: Int { get }
var pIsModified: Int { get }
var pIsResizable: Int { get }
var pIsStationeryPad: Int { get }
var pIsZoomable: Int { get }
var pIsZoomed: Int { get }
var pItemNumber: Int { get }
var pJustification: Int { get }
var pLineArrow: Int { get }
var pMenuID: Int { get }
var pName: Int { get }
var pNewElementLoc: Int { get }
var pPenColor: Int { get }
var pPenPattern: Int { get }
var pPenWidth: Int { get }
var pPixelDepth: Int { get }
var pPointList: Int { get }
var pPointSize: Int { get }
var pProtection: Int { get }
var pRotation: Int { get }
var pScale: Int { get }
var pScript: Int { get }
var pScriptTag: Int { get }
var pSelected: Int { get }
var pSelection: Int { get }
var pStartAngle: Int { get }
var pStartPoint: Int { get }
var pTextColor: Int { get }
var pTextFont: Int { get }
var pTextItemDelimiters: Int { get }
var pTextPointSize: Int { get }
var pTextStyles: Int { get }
var pTransferMode: Int { get }
var pTranslation: Int { get }
var pUniformStyles: Int { get }
var pUpdateOn: Int { get }
var pUserSelection: Int { get }
var pVersion: Int { get }
var pVisible: Int { get }
var typeAEText: Int { get }
var typeArc: Int { get }
var typeBest: Int { get }
var typeCell: Int { get }
var typeClassInfo: Int { get }
var typeColorTable: Int { get }
var typeColumn: Int { get }
var typeDashStyle: Int { get }
var typeData: Int { get }
var typeDrawingArea: Int { get }
var typeElemInfo: Int { get }
var typeEnumeration: Int { get }
var typeEPS: Int { get }
var typeEventInfo: Int { get }
var typeFinderWindow: Int { get }
var typeFixedPoint: Int { get }
var typeFixedRectangle: Int { get }
var typeGraphicLine: Int { get }
var typeGraphicText: Int { get }
var typeGroupedGraphic: Int { get }
var typeInsertionLoc: Int { get }
var typeIntlText: Int { get }
var typeIntlWritingCode: Int { get }
var typeLongDateTime: Int { get }
var typeCFAbsoluteTime: Int { get }
var typeISO8601DateTime: Int { get }
var typeLongFixed: Int { get }
var typeLongFixedPoint: Int { get }
var typeLongFixedRectangle: Int { get }
var typeLongPoint: Int { get }
var typeLongRectangle: Int { get }
var typeMachineLoc: Int { get }
var typeOval: Int { get }
var typeParamInfo: Int { get }
var typePict: Int { get }
var typePixelMap: Int { get }
var typePixMapMinus: Int { get }
var typePolygon: Int { get }
var typePropInfo: Int { get }
var typePtr: Int { get }
var typeQDPoint: Int { get }
var typeQDRegion: Int { get }
var typeRectangle: Int { get }
var typeRGB16: Int { get }
var typeRGB96: Int { get }
var typeRGBColor: Int { get }
var typeRotation: Int { get }
var typeRoundedRectangle: Int { get }
var typeRow: Int { get }
var typeScrapStyles: Int { get }
var typeScript: Int { get }
var typeStyledText: Int { get }
var typeSuiteInfo: Int { get }
var typeTable: Int { get }
var typeTextStyles: Int { get }
var typeTIFF: Int { get }
var typeJPEG: Int { get }
var typeGIF: Int { get }
var typeVersion: Int { get }
var kAEMenuClass: Int { get }
var kAEMenuSelect: Int { get }
var kAEMouseDown: Int { get }
var kAEMouseDownInBack: Int { get }
var kAEKeyDown: Int { get }
var kAEResized: Int { get }
var kAEPromise: Int { get }
var keyMenuID: Int { get }
var keyMenuItem: Int { get }
var keyCloseAllWindows: Int { get }
var keyOriginalBounds: Int { get }
var keyNewBounds: Int { get }
var keyLocalWhere: Int { get }
var typeHIMenu: Int { get }
var typeHIWindow: Int { get }
var kAEQuitPreserveState: Int { get }
var kAEQuitReason: Int { get }
var kBySmallIcon: Int { get }
var kByIconView: Int { get }
var kByNameView: Int { get }
var kByDateView: Int { get }
var kBySizeView: Int { get }
var kByKindView: Int { get }
var kByCommentView: Int { get }
var kByLabelView: Int { get }
var kByVersionView: Int { get }
var kAEInfo: Int { get }
var kAEMain: Int { get }
var kAESharing: Int { get }
var kAEZoomIn: Int { get }
var kAEZoomOut: Int { get }
var kTextServiceClass: Int { get }
var kUpdateActiveInputArea: Int { get }
var kShowHideInputWindow: Int { get }
var kPos2Offset: Int { get }
var kOffset2Pos: Int { get }
var kUnicodeNotFromInputMethod: Int { get }
var kGetSelectedText: Int { get }
var keyAETSMDocumentRefcon: Int { get }
var keyAEServerInstance: Int { get }
var keyAETheData: Int { get }
var keyAEFixLength: Int { get }
var keyAEUpdateRange: Int { get }
var keyAECurrentPoint: Int { get }
var keyAEBufferSize: Int { get }
var keyAEMoveView: Int { get }
var keyAENextBody: Int { get }
var keyAETSMScriptTag: Int { get }
var keyAETSMTextFont: Int { get }
var keyAETSMTextFMFont: Int { get }
var keyAETSMTextPointSize: Int { get }
var keyAETSMEventRecord: Int { get }
var keyAETSMEventRef: Int { get }
var keyAETextServiceEncoding: Int { get }
var keyAETextServiceMacEncoding: Int { get }
var keyAETSMGlyphInfoArray: Int { get }
var typeTextRange: Int { get }
var typeComponentInstance: Int { get }
var typeOffsetArray: Int { get }
var typeTextRangeArray: Int { get }
var typeLowLevelEventRecord: Int { get }
var typeGlyphInfoArray: Int { get }
var typeEventRef: Int { get }
var typeText: Int { get }
var kTSMOutsideOfBody: Int { get }
var kTSMInsideOfBody: Int { get }
var kTSMInsideOfActiveInputArea: Int { get }
var kNextBody: Int { get }
var kPreviousBody: Int { get }
struct TextRange {
  var fStart: Int32
  var fEnd: Int32
  var fHiliteStyle: Int16
  init()
  init(fStart: Int32, fEnd: Int32, fHiliteStyle: Int16)
}
typealias TextRangePtr = UnsafeMutablePointer<TextRange>
typealias TextRangeHandle = UnsafeMutablePointer<TextRangePtr>
struct TextRangeArray {
  var fNumOfRanges: Int16
  var fRange: (TextRange)
  init()
  init(fNumOfRanges: Int16, fRange: (TextRange))
}
typealias TextRangeArrayPtr = UnsafeMutablePointer<TextRangeArray>
typealias TextRangeArrayHandle = UnsafeMutablePointer<TextRangeArrayPtr>
struct OffsetArray {
  var fNumOfOffsets: Int16
  var fOffset: (Int32)
  init()
  init(fNumOfOffsets: Int16, fOffset: (Int32))
}
typealias OffsetArrayPtr = UnsafeMutablePointer<OffsetArray>
typealias OffsetArrayHandle = UnsafeMutablePointer<OffsetArrayPtr>
struct WritingCode {
  var theScriptCode: ScriptCode
  var theLangCode: LangCode
  init()
  init(theScriptCode: ScriptCode, theLangCode: LangCode)
}
struct IntlText {
  var theScriptCode: ScriptCode
  var theLangCode: LangCode
  var theText: (Int8)
  init()
  init(theScriptCode: ScriptCode, theLangCode: LangCode, theText: (Int8))
}
var kTSMHiliteCaretPosition: Int { get }
var kTSMHiliteRawText: Int { get }
var kTSMHiliteSelectedRawText: Int { get }
var kTSMHiliteConvertedText: Int { get }
var kTSMHiliteSelectedConvertedText: Int { get }
var kTSMHiliteBlockFillText: Int { get }
var kTSMHiliteOutlineText: Int { get }
var kTSMHiliteSelectedText: Int { get }
var kTSMHiliteNoHilite: Int { get }
var keyAEHiliteRange: Int { get }
var keyAEPinRange: Int { get }
var keyAEClauseOffsets: Int { get }
var keyAEOffset: Int { get }
var keyAEPoint: Int { get }
var keyAELeftSide: Int { get }
var keyAERegionClass: Int { get }
var keyAEDragging: Int { get }
var typeMeters: Int { get }
var typeInches: Int { get }
var typeFeet: Int { get }
var typeYards: Int { get }
var typeMiles: Int { get }
var typeKilometers: Int { get }
var typeCentimeters: Int { get }
var typeSquareMeters: Int { get }
var typeSquareFeet: Int { get }
var typeSquareYards: Int { get }
var typeSquareMiles: Int { get }
var typeSquareKilometers: Int { get }
var typeLiters: Int { get }
var typeQuarts: Int { get }
var typeGallons: Int { get }
var typeCubicMeters: Int { get }
var typeCubicFeet: Int { get }
var typeCubicInches: Int { get }
var typeCubicCentimeter: Int { get }
var typeCubicYards: Int { get }
var typeKilograms: Int { get }
var typeGrams: Int { get }
var typeOunces: Int { get }
var typePounds: Int { get }
var typeDegreesC: Int { get }
var typeDegreesF: Int { get }
var typeDegreesK: Int { get }
var kFAServerApp: Int { get }
var kDoFolderActionEvent: Int { get }
var kFolderActionCode: Int { get }
var kFolderOpenedEvent: Int { get }
var kFolderClosedEvent: Int { get }
var kFolderWindowMovedEvent: Int { get }
var kFolderItemsAddedEvent: Int { get }
var kFolderItemsRemovedEvent: Int { get }
var kItemList: Int { get }
var kNewSizeParameter: Int { get }
var kFASuiteCode: Int { get }
var kFAAttachCommand: Int { get }
var kFARemoveCommand: Int { get }
var kFAEditCommand: Int { get }
var kFAFileParam: Int { get }
var kFAIndexParam: Int { get }
var kAEInternetSuite: Int { get }
var kAEISWebStarSuite: Int { get }
var kAEISGetURL: Int { get }
var KAEISHandleCGI: Int { get }
var cURL: Int { get }
var cInternetAddress: Int { get }
var cHTML: Int { get }
var cFTPItem: Int { get }
var kAEISHTTPSearchArgs: Int { get }
var kAEISPostArgs: Int { get }
var kAEISMethod: Int { get }
var kAEISClientAddress: Int { get }
var kAEISUserName: Int { get }
var kAEISPassword: Int { get }
var kAEISFromUser: Int { get }
var kAEISServerName: Int { get }
var kAEISServerPort: Int { get }
var kAEISScriptName: Int { get }
var kAEISContentType: Int { get }
var kAEISReferrer: Int { get }
var kAEISUserAgent: Int { get }
var kAEISAction: Int { get }
var kAEISActionPath: Int { get }
var kAEISClientIP: Int { get }
var kAEISFullRequest: Int { get }
var pScheme: Int { get }
var pHost: Int { get }
var pPath: Int { get }
var pUserName: Int { get }
var pUserPassword: Int { get }
var pDNSForm: Int { get }
var pURL: Int { get }
var pTextEncoding: Int { get }
var pFTPKind: Int { get }
var eScheme: Int { get }
var eurlHTTP: Int { get }
var eurlHTTPS: Int { get }
var eurlFTP: Int { get }
var eurlMail: Int { get }
var eurlFile: Int { get }
var eurlGopher: Int { get }
var eurlTelnet: Int { get }
var eurlNews: Int { get }
var eurlSNews: Int { get }
var eurlNNTP: Int { get }
var eurlMessage: Int { get }
var eurlMailbox: Int { get }
var eurlMulti: Int { get }
var eurlLaunch: Int { get }
var eurlAFP: Int { get }
var eurlAT: Int { get }
var eurlEPPC: Int { get }
var eurlRTSP: Int { get }
var eurlIMAP: Int { get }
var eurlNFS: Int { get }
var eurlPOP: Int { get }
var eurlLDAP: Int { get }
var eurlUnknown: Int { get }
var kConnSuite: Int { get }
var cDevSpec: Int { get }
var cAddressSpec: Int { get }
var cADBAddress: Int { get }
var cAppleTalkAddress: Int { get }
var cBusAddress: Int { get }
var cEthernetAddress: Int { get }
var cFireWireAddress: Int { get }
var cIPAddress: Int { get }
var cLocalTalkAddress: Int { get }
var cSCSIAddress: Int { get }
var cTokenRingAddress: Int { get }
var cUSBAddress: Int { get }
var pDeviceType: Int { get }
var pDeviceAddress: Int { get }
var pConduit: Int { get }
var pProtocol: Int { get }
var pATMachine: Int { get }
var pATZone: Int { get }
var pATType: Int { get }
var pDottedDecimal: Int { get }
var pDNS: Int { get }
var pPort: Int { get }
var pNetwork: Int { get }
var pNode: Int { get }
var pSocket: Int { get }
var pSCSIBus: Int { get }
var pSCSILUN: Int { get }
var eDeviceType: Int { get }
var eAddressSpec: Int { get }
var eConduit: Int { get }
var eProtocol: Int { get }
var eADB: Int { get }
var eAnalogAudio: Int { get }
var eAppleTalk: Int { get }
var eAudioLineIn: Int { get }
var eAudioLineOut: Int { get }
var eAudioOut: Int { get }
var eBus: Int { get }
var eCDROM: Int { get }
var eCommSlot: Int { get }
var eDigitalAudio: Int { get }
var eDisplay: Int { get }
var eDVD: Int { get }
var eEthernet: Int { get }
var eFireWire: Int { get }
var eFloppy: Int { get }
var eHD: Int { get }
var eInfrared: Int { get }
var eIP: Int { get }
var eIrDA: Int { get }
var eIRTalk: Int { get }
var eKeyboard: Int { get }
var eLCD: Int { get }
var eLocalTalk: Int { get }
var eMacIP: Int { get }
var eMacVideo: Int { get }
var eMicrophone: Int { get }
var eModemPort: Int { get }
var eModemPrinterPort: Int { get }
var eModem: Int { get }
var eMonitorOut: Int { get }
var eMouse: Int { get }
var eNuBusCard: Int { get }
var eNuBus: Int { get }
var ePCcard: Int { get }
var ePCIbus: Int { get }
var ePCIcard: Int { get }
var ePDSslot: Int { get }
var ePDScard: Int { get }
var ePointingDevice: Int { get }
var ePostScript: Int { get }
var ePPP: Int { get }
var ePrinterPort: Int { get }
var ePrinter: Int { get }
var eSvideo: Int { get }
var eSCSI: Int { get }
var eSerial: Int { get }
var eSpeakers: Int { get }
var eStorageDevice: Int { get }
var eSVGA: Int { get }
var eTokenRing: Int { get }
var eTrackball: Int { get }
var eTrackpad: Int { get }
var eUSB: Int { get }
var eVideoIn: Int { get }
var eVideoMonitor: Int { get }
var eVideoOut: Int { get }
var cKeystroke: Int { get }
var pKeystrokeKey: Int { get }
var pModifiers: Int { get }
var pKeyKind: Int { get }
var eModifiers: Int { get }
var eOptionDown: Int { get }
var eCommandDown: Int { get }
var eControlDown: Int { get }
var eShiftDown: Int { get }
var eCapsLockDown: Int { get }
var eKeyKind: Int { get }
var eEscapeKey: Int { get }
var eDeleteKey: Int { get }
var eTabKey: Int { get }
var eReturnKey: Int { get }
var eClearKey: Int { get }
var eEnterKey: Int { get }
var eUpArrowKey: Int { get }
var eDownArrowKey: Int { get }
var eLeftArrowKey: Int { get }
var eRightArrowKey: Int { get }
var eHelpKey: Int { get }
var eHomeKey: Int { get }
var ePageUpKey: Int { get }
var ePageDownKey: Int { get }
var eForwardDelKey: Int { get }
var eEndKey: Int { get }
var eF1Key: Int { get }
var eF2Key: Int { get }
var eF3Key: Int { get }
var eF4Key: Int { get }
var eF5Key: Int { get }
var eF6Key: Int { get }
var eF7Key: Int { get }
var eF8Key: Int { get }
var eF9Key: Int { get }
var eF10Key: Int { get }
var eF11Key: Int { get }
var eF12Key: Int { get }
var eF13Key: Int { get }
var eF14Key: Int { get }
var eF15Key: Int { get }
var keyAELaunchedAsLogInItem: Int { get }
var keyAELaunchedAsServiceItem: Int { get }
var kAEUserTerminology: Int { get }
var kAETerminologyExtension: Int { get }
var kAEScriptingSizeResource: Int { get }
var kAEOSAXSizeResource: Int { get }
var kAEUTHasReturningParam: Int { get }
var kAEUTOptional: Int { get }
var kAEUTlistOfItems: Int { get }
var kAEUTEnumerated: Int { get }
var kAEUTReadWrite: Int { get }
var kAEUTChangesState: Int { get }
var kAEUTTightBindingFunction: Int { get }
var kAEUTEnumsAreTypes: Int { get }
var kAEUTEnumListIsExclusive: Int { get }
var kAEUTReplyIsReference: Int { get }
var kAEUTDirectParamIsReference: Int { get }
var kAEUTParamIsReference: Int { get }
var kAEUTPropertyIsReference: Int { get }
var kAEUTNotDirectParamIsTarget: Int { get }
var kAEUTParamIsTarget: Int { get }
var kAEUTApostrophe: Int { get }
var kAEUTFeminine: Int { get }
var kAEUTMasculine: Int { get }
var kAEUTPlural: Int { get }
struct TScriptingSizeResource {
  var scriptingSizeFlags: Int16
  var minStackSize: UInt32
  var preferredStackSize: UInt32
  var maxStackSize: UInt32
  var minHeapSize: UInt32
  var preferredHeapSize: UInt32
  var maxHeapSize: UInt32
  init()
  init(scriptingSizeFlags: Int16, minStackSize: UInt32, preferredStackSize: UInt32, maxStackSize: UInt32, minHeapSize: UInt32, preferredHeapSize: UInt32, maxHeapSize: UInt32)
}
var kLaunchToGetTerminology: Int { get }
var kDontFindAppBySignature: Int { get }
var kAlwaysSendSubject: Int { get }
var kReadExtensionTermsMask: Int { get }
var kOSIZDontOpenResourceFile: Int { get }
var kOSIZdontAcceptRemoteEvents: Int { get }
var kOSIZOpenWithReadPermission: Int { get }
var kOSIZCodeInSharedLibraries: Int { get }
var keyDirectObject: Int { get }
var keyErrorNumber: Int { get }
var keyErrorString: Int { get }
var keyProcessSerialNumber: Int { get }
var keyPreDispatch: Int { get }
var keySelectProc: Int { get }
var keyAERecorderCount: Int { get }
var keyAEVersion: Int { get }
var kCoreEventClass: Int { get }
var kAEOpenApplication: Int { get }
var kAEOpenDocuments: Int { get }
var kAEPrintDocuments: Int { get }
var kAEOpenContents: Int { get }
var kAEQuitApplication: Int { get }
var kAEAnswer: Int { get }
var kAEApplicationDied: Int { get }
var kAEShowPreferences: Int { get }
var kAEStartRecording: Int { get }
var kAEStopRecording: Int { get }
var kAENotifyStartRecording: Int { get }
var kAENotifyStopRecording: Int { get }
var kAENotifyRecording: Int { get }
typealias AEEventSource = Int8
var kAEUnknownSource: Int { get }
var kAEDirectCall: Int { get }
var kAESameProcess: Int { get }
var kAELocalProcess: Int { get }
var kAERemoteProcess: Int { get }
var errAETargetAddressNotPermitted: Int { get }
var errAEEventNotPermitted: Int { get }

/**************************************************************************
  These calls are used to set up and modify the event dispatch table.D
**************************************************************************/
@available(OSX 10.0, *)
func AEInstallEventHandler(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ handler: AEEventHandlerUPP!, _ handlerRefcon: SRefCon, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AERemoveEventHandler(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ handler: AEEventHandlerUPP!, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AEGetEventHandler(theAEEventClass: AEEventClass, _ theAEEventID: AEEventID, _ handler: UnsafeMutablePointer<AEEventHandlerUPP?>, _ handlerRefcon: UnsafeMutablePointer<SRefCon>, _ isSysHandler: Bool) -> OSErr

/**************************************************************************
  These calls are used to set up and modify special hooks into the
  AppleEvent manager.
**************************************************************************/
@available(OSX 10.0, *)
func AEInstallSpecialHandler(functionClass: AEKeyword, _ handler: AEEventHandlerUPP!, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AERemoveSpecialHandler(functionClass: AEKeyword, _ handler: AEEventHandlerUPP!, _ isSysHandler: Bool) -> OSErr
@available(OSX 10.0, *)
func AEGetSpecialHandler(functionClass: AEKeyword, _ handler: UnsafeMutablePointer<AEEventHandlerUPP?>, _ isSysHandler: Bool) -> OSErr

/**************************************************************************
  This call was added in version 1.0.1. If called with the keyword
  keyAERecorderCount ('recr'), the number of recorders that are
  currently active is returned in 'result'
  (available only in vers 1.0.1 and greater).
**************************************************************************/
@available(OSX 10.0, *)
func AEManagerInfo(keyWord: AEKeyword, _ result: UnsafeMutablePointer<Int>) -> OSErr
@available(OSX 10.3, *)
let kAERemoteProcessURLKey: CFString!
@available(OSX 10.3, *)
let kAERemoteProcessNameKey: CFString!
@available(OSX 10.3, *)
let kAERemoteProcessUserIDKey: CFString!
@available(OSX 10.3, *)
let kAERemoteProcessProcessIDKey: CFString!
struct AERemoteProcessResolverContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!)
}
typealias AERemoteProcessResolverRef = COpaquePointer
@available(OSX 10.3, *)
func AECreateRemoteProcessResolver(allocator: CFAllocator!, _ url: CFURL!) -> AERemoteProcessResolverRef
@available(OSX 10.3, *)
func AEDisposeRemoteProcessResolver(ref: AERemoteProcessResolverRef)
@available(OSX 10.3, *)
func AERemoteProcessResolverGetProcesses(ref: AERemoteProcessResolverRef, _ outError: UnsafeMutablePointer<CFStreamError>) -> Unmanaged<CFArray>!
typealias AERemoteProcessResolverCallback = @convention(c) (AERemoteProcessResolverRef, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func AERemoteProcessResolverScheduleWithRunLoop(ref: AERemoteProcessResolverRef, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!, _ callback: AERemoteProcessResolverCallback!, _ ctx: UnsafePointer<AERemoteProcessResolverContext>)
@available(OSX 10.5, *)
func CSBackupSetItemExcluded(item: CFURL!, _ exclude: Bool, _ excludeByPath: Bool) -> OSStatus
@available(OSX 10.5, *)
func CSBackupIsItemExcluded(item: CFURL!, _ excludeByPath: UnsafeMutablePointer<DarwinBoolean>) -> Bool
var kCSDiskSpaceRecoveryOptionNoUI: Int { get }
typealias CSDiskSpaceRecoveryOptions = Int32
typealias CSDiskSpaceRecoveryCallback = (Bool, UInt64, CFError!) -> Void
@available(OSX 10.7, *)
func CSDiskSpaceStartRecovery(volumeURL: CFURL!, _ bytesNeeded: UInt64, _ options: CSDiskSpaceRecoveryOptions, _ outOperationUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>, _ callbackQueue: dispatch_queue_t!, _ callback: CSDiskSpaceRecoveryCallback!)
@available(OSX 10.7, *)
func CSDiskSpaceCancelRecovery(operationUUID: CFUUID!)
@available(OSX 10.7, *)
func CSDiskSpaceGetRecoveryEstimate(volumeURL: CFURL!) -> UInt64
var paramErr: Int { get }
var noHardwareErr: Int { get }
var notEnoughHardwareErr: Int { get }
var userCanceledErr: Int { get }
var qErr: Int { get }
var vTypErr: Int { get }
var corErr: Int { get }
var unimpErr: Int { get }
var SlpTypeErr: Int { get }
var seNoDB: Int { get }
var controlErr: Int { get }
var statusErr: Int { get }
var readErr: Int { get }
var writErr: Int { get }
var badUnitErr: Int { get }
var unitEmptyErr: Int { get }
var openErr: Int { get }
var closErr: Int { get }
var dRemovErr: Int { get }
var dInstErr: Int { get }
var abortErr: Int { get }
var iIOAbortErr: Int { get }
var notOpenErr: Int { get }
var unitTblFullErr: Int { get }
var dceExtErr: Int { get }
var slotNumErr: Int { get }
var gcrOnMFMErr: Int { get }
var dirFulErr: Int { get }
var dskFulErr: Int { get }
var nsvErr: Int { get }
var ioErr: Int { get }
var bdNamErr: Int { get }
var fnOpnErr: Int { get }
var eofErr: Int { get }
var posErr: Int { get }
var mFulErr: Int { get }
var tmfoErr: Int { get }
var fnfErr: Int { get }
var wPrErr: Int { get }
var fLckdErr: Int { get }
var vLckdErr: Int { get }
var fBsyErr: Int { get }
var dupFNErr: Int { get }
var opWrErr: Int { get }
var rfNumErr: Int { get }
var gfpErr: Int { get }
var volOffLinErr: Int { get }
var permErr: Int { get }
var volOnLinErr: Int { get }
var nsDrvErr: Int { get }
var noMacDskErr: Int { get }
var extFSErr: Int { get }
var fsRnErr: Int { get }
var badMDBErr: Int { get }
var wrPermErr: Int { get }
var dirNFErr: Int { get }
var tmwdoErr: Int { get }
var badMovErr: Int { get }
var wrgVolTypErr: Int { get }
var volGoneErr: Int { get }
var fidNotFound: Int { get }
var fidExists: Int { get }
var notAFileErr: Int { get }
var diffVolErr: Int { get }
var catChangedErr: Int { get }
var desktopDamagedErr: Int { get }
var sameFileErr: Int { get }
var badFidErr: Int { get }
var notARemountErr: Int { get }
var fileBoundsErr: Int { get }
var fsDataTooBigErr: Int { get }
var volVMBusyErr: Int { get }
var badFCBErr: Int { get }
var errFSUnknownCall: Int { get }
var errFSBadFSRef: Int { get }
var errFSBadForkName: Int { get }
var errFSBadBuffer: Int { get }
var errFSBadForkRef: Int { get }
var errFSBadInfoBitmap: Int { get }
var errFSMissingCatInfo: Int { get }
var errFSNotAFolder: Int { get }
var errFSForkNotFound: Int { get }
var errFSNameTooLong: Int { get }
var errFSMissingName: Int { get }
var errFSBadPosMode: Int { get }
var errFSBadAllocFlags: Int { get }
var errFSNoMoreItems: Int { get }
var errFSBadItemCount: Int { get }
var errFSBadSearchParams: Int { get }
var errFSRefsDifferent: Int { get }
var errFSForkExists: Int { get }
var errFSBadIteratorFlags: Int { get }
var errFSIteratorNotFound: Int { get }
var errFSIteratorNotSupported: Int { get }
var errFSQuotaExceeded: Int { get }
var errFSOperationNotSupported: Int { get }
var errFSAttributeNotFound: Int { get }
var errFSPropertyNotValid: Int { get }
var errFSNotEnoughSpaceForOperation: Int { get }
var envNotPresent: Int { get }
var envBadVers: Int { get }
var envVersTooBig: Int { get }
var fontDecError: Int { get }
var fontNotDeclared: Int { get }
var fontSubErr: Int { get }
var fontNotOutlineErr: Int { get }
var firstDskErr: Int { get }
var lastDskErr: Int { get }
var noDriveErr: Int { get }
var offLinErr: Int { get }
var noNybErr: Int { get }
var noAdrMkErr: Int { get }
var dataVerErr: Int { get }
var badCksmErr: Int { get }
var badBtSlpErr: Int { get }
var noDtaMkErr: Int { get }
var badDCksum: Int { get }
var badDBtSlp: Int { get }
var wrUnderrun: Int { get }
var cantStepErr: Int { get }
var tk0BadErr: Int { get }
var initIWMErr: Int { get }
var twoSideErr: Int { get }
var spdAdjErr: Int { get }
var seekErr: Int { get }
var sectNFErr: Int { get }
var fmt1Err: Int { get }
var fmt2Err: Int { get }
var verErr: Int { get }
var clkRdErr: Int { get }
var clkWrErr: Int { get }
var prWrErr: Int { get }
var prInitErr: Int { get }
var rcvrErr: Int { get }
var breakRecd: Int { get }
var noScrapErr: Int { get }
var noTypeErr: Int { get }
var eLenErr: Int { get }
var eMultiErr: Int { get }
var ddpSktErr: Int { get }
var ddpLenErr: Int { get }
var noBridgeErr: Int { get }
var lapProtErr: Int { get }
var excessCollsns: Int { get }
var portNotPwr: Int { get }
var portInUse: Int { get }
var portNotCf: Int { get }
var memROZWarn: Int { get }
var memROZError: Int { get }
var memROZErr: Int { get }
var memFullErr: Int { get }
var nilHandleErr: Int { get }
var memWZErr: Int { get }
var memPurErr: Int { get }
var memAdrErr: Int { get }
var memAZErr: Int { get }
var memPCErr: Int { get }
var memBCErr: Int { get }
var memSCErr: Int { get }
var memLockedErr: Int { get }
var iMemFullErr: Int { get }
var iIOAbort: Int { get }
var resourceInMemory: Int { get }
var writingPastEnd: Int { get }
var inputOutOfBounds: Int { get }
var resNotFound: Int { get }
var resFNotFound: Int { get }
var addResFailed: Int { get }
var addRefFailed: Int { get }
var rmvResFailed: Int { get }
var rmvRefFailed: Int { get }
var resAttrErr: Int { get }
var mapReadErr: Int { get }
var CantDecompress: Int { get }
var badExtResource: Int { get }
var noMemForPictPlaybackErr: Int { get }
var rgnOverflowErr: Int { get }
var rgnTooBigError: Int { get }
var pixMapTooDeepErr: Int { get }
var insufficientStackErr: Int { get }
var nsStackErr: Int { get }
var evtNotEnb: Int { get }
var cMatchErr: Int { get }
var cTempMemErr: Int { get }
var cNoMemErr: Int { get }
var cRangeErr: Int { get }
var cProtectErr: Int { get }
var cDevErr: Int { get }
var cResErr: Int { get }
var cDepthErr: Int { get }
var rgnTooBigErr: Int { get }
var updPixMemErr: Int { get }
var pictInfoVersionErr: Int { get }
var pictInfoIDErr: Int { get }
var pictInfoVerbErr: Int { get }
var cantLoadPickMethodErr: Int { get }
var colorsRequestedErr: Int { get }
var pictureDataErr: Int { get }
var cmProfileError: Int { get }
var cmMethodError: Int { get }
var cmMethodNotFound: Int { get }
var cmProfileNotFound: Int { get }
var cmProfilesIdentical: Int { get }
var cmCantConcatenateError: Int { get }
var cmCantXYZ: Int { get }
var cmCantDeleteProfile: Int { get }
var cmUnsupportedDataType: Int { get }
var cmNoCurrentProfile: Int { get }
var noHardware: Int { get }
var notEnoughHardware: Int { get }
var queueFull: Int { get }
var resProblem: Int { get }
var badChannel: Int { get }
var badFormat: Int { get }
var notEnoughBufferSpace: Int { get }
var badFileFormat: Int { get }
var channelBusy: Int { get }
var buffersTooSmall: Int { get }
var channelNotBusy: Int { get }
var noMoreRealTime: Int { get }
var siVBRCompressionNotSupported: Int { get }
var siNoSoundInHardware: Int { get }
var siBadSoundInDevice: Int { get }
var siNoBufferSpecified: Int { get }
var siInvalidCompression: Int { get }
var siHardDriveTooSlow: Int { get }
var siInvalidSampleRate: Int { get }
var siInvalidSampleSize: Int { get }
var siDeviceBusyErr: Int { get }
var siBadDeviceName: Int { get }
var siBadRefNum: Int { get }
var siInputDeviceErr: Int { get }
var siUnknownInfoType: Int { get }
var siUnknownQuality: Int { get }
var noSynthFound: Int { get }
var synthOpenFailed: Int { get }
var synthNotReady: Int { get }
var bufTooSmall: Int { get }
var voiceNotFound: Int { get }
var incompatibleVoice: Int { get }
var badDictFormat: Int { get }
var badInputText: Int { get }
var midiNoClientErr: Int { get }
var midiNoPortErr: Int { get }
var midiTooManyPortsErr: Int { get }
var midiTooManyConsErr: Int { get }
var midiVConnectErr: Int { get }
var midiVConnectMade: Int { get }
var midiVConnectRmvd: Int { get }
var midiNoConErr: Int { get }
var midiWriteErr: Int { get }
var midiNameLenErr: Int { get }
var midiDupIDErr: Int { get }
var midiInvalidCmdErr: Int { get }
var nmTypErr: Int { get }
var siInitSDTblErr: Int { get }
var siInitVBLQsErr: Int { get }
var siInitSPTblErr: Int { get }
var sdmJTInitErr: Int { get }
var sdmInitErr: Int { get }
var sdmSRTInitErr: Int { get }
var sdmPRAMInitErr: Int { get }
var sdmPriInitErr: Int { get }
var smSDMInitErr: Int { get }
var smSRTInitErr: Int { get }
var smPRAMInitErr: Int { get }
var smPriInitErr: Int { get }
var smEmptySlot: Int { get }
var smCRCFail: Int { get }
var smFormatErr: Int { get }
var smRevisionErr: Int { get }
var smNoDir: Int { get }
var smDisabledSlot: Int { get }
var smNosInfoArray: Int { get }
var smResrvErr: Int { get }
var smUnExBusErr: Int { get }
var smBLFieldBad: Int { get }
var smFHBlockRdErr: Int { get }
var smFHBlkDispErr: Int { get }
var smDisposePErr: Int { get }
var smNoBoardSRsrc: Int { get }
var smGetPRErr: Int { get }
var smNoBoardId: Int { get }
var smInitStatVErr: Int { get }
var smInitTblVErr: Int { get }
var smNoJmpTbl: Int { get }
var smReservedSlot: Int { get }
var smBadBoardId: Int { get }
var smBusErrTO: Int { get }
var svTempDisable: Int { get }
var svDisabled: Int { get }
var smBadRefId: Int { get }
var smBadsList: Int { get }
var smReservedErr: Int { get }
var smCodeRevErr: Int { get }
var smCPUErr: Int { get }
var smsPointerNil: Int { get }
var smNilsBlockErr: Int { get }
var smSlotOOBErr: Int { get }
var smSelOOBErr: Int { get }
var smNewPErr: Int { get }
var smBlkMoveErr: Int { get }
var smCkStatusErr: Int { get }
var smGetDrvrNamErr: Int { get }
var smDisDrvrNamErr: Int { get }
var smNoMoresRsrcs: Int { get }
var smsGetDrvrErr: Int { get }
var smBadsPtrErr: Int { get }
var smByteLanesErr: Int { get }
var smOffsetErr: Int { get }
var smNoGoodOpens: Int { get }
var smSRTOvrFlErr: Int { get }
var smRecNotFnd: Int { get }
var notBTree: Int { get }
var btNoSpace: Int { get }
var btDupRecErr: Int { get }
var btRecNotFnd: Int { get }
var btKeyLenErr: Int { get }
var btKeyAttrErr: Int { get }
var unknownInsertModeErr: Int { get }
var recordDataTooBigErr: Int { get }
var invalidIndexErr: Int { get }
var fsmFFSNotFoundErr: Int { get }
var fsmBusyFFSErr: Int { get }
var fsmBadFFSNameErr: Int { get }
var fsmBadFSDLenErr: Int { get }
var fsmDuplicateFSIDErr: Int { get }
var fsmBadFSDVersionErr: Int { get }
var fsmNoAlternateStackErr: Int { get }
var fsmUnknownFSMMessageErr: Int { get }
var editionMgrInitErr: Int { get }
var badSectionErr: Int { get }
var notRegisteredSectionErr: Int { get }
var badEditionFileErr: Int { get }
var badSubPartErr: Int { get }
var multiplePublisherWrn: Int { get }
var containerNotFoundWrn: Int { get }
var containerAlreadyOpenWrn: Int { get }
var notThePublisherWrn: Int { get }
var teScrapSizeErr: Int { get }
var hwParamErr: Int { get }
var driverHardwareGoneErr: Int { get }
var procNotFound: Int { get }
var memFragErr: Int { get }
var appModeErr: Int { get }
var protocolErr: Int { get }
var hardwareConfigErr: Int { get }
var appMemFullErr: Int { get }
var appIsDaemon: Int { get }
var bufferIsSmall: Int { get }
var noOutstandingHLE: Int { get }
var connectionInvalid: Int { get }
var noUserInteractionAllowed: Int { get }
var wrongApplicationPlatform: Int { get }
var appVersionTooOld: Int { get }
var notAppropriateForClassic: Int { get }
var threadTooManyReqsErr: Int { get }
var threadNotFoundErr: Int { get }
var threadProtocolErr: Int { get }
var threadBadAppContextErr: Int { get }
var notEnoughMemoryErr: Int { get }
var notHeldErr: Int { get }
var cannotMakeContiguousErr: Int { get }
var notLockedErr: Int { get }
var interruptsMaskedErr: Int { get }
var cannotDeferErr: Int { get }
var noMMUErr: Int { get }
var vmMorePhysicalThanVirtualErr: Int { get }
var vmKernelMMUInitErr: Int { get }
var vmOffErr: Int { get }
var vmMemLckdErr: Int { get }
var vmBadDriver: Int { get }
var vmNoVectorErr: Int { get }
var vmInvalidBackingFileIDErr: Int { get }
var vmMappingPrivilegesErr: Int { get }
var vmBusyBackingFileErr: Int { get }
var vmNoMoreBackingFilesErr: Int { get }
var vmInvalidFileViewIDErr: Int { get }
var vmFileViewAccessErr: Int { get }
var vmNoMoreFileViewsErr: Int { get }
var vmAddressNotInFileViewErr: Int { get }
var vmInvalidOwningProcessErr: Int { get }
var rcDBNull: Int { get }
var rcDBValue: Int { get }
var rcDBError: Int { get }
var rcDBBadType: Int { get }
var rcDBBreak: Int { get }
var rcDBExec: Int { get }
var rcDBBadSessID: Int { get }
var rcDBBadSessNum: Int { get }
var rcDBBadDDEV: Int { get }
var rcDBAsyncNotSupp: Int { get }
var rcDBBadAsyncPB: Int { get }
var rcDBNoHandler: Int { get }
var rcDBWrongVersion: Int { get }
var rcDBPackNotInited: Int { get }
var hmHelpDisabled: Int { get }
var hmBalloonAborted: Int { get }
var hmSameAsLastBalloon: Int { get }
var hmHelpManagerNotInited: Int { get }
var hmSkippedBalloon: Int { get }
var hmWrongVersion: Int { get }
var hmUnknownHelpType: Int { get }
var hmOperationUnsupported: Int { get }
var hmNoBalloonUp: Int { get }
var hmCloseViewActive: Int { get }
var notInitErr: Int { get }
var nameTypeErr: Int { get }
var noPortErr: Int { get }
var noGlobalsErr: Int { get }
var localOnlyErr: Int { get }
var destPortErr: Int { get }
var sessTableErr: Int { get }
var noSessionErr: Int { get }
var badReqErr: Int { get }
var portNameExistsErr: Int { get }
var noUserNameErr: Int { get }
var userRejectErr: Int { get }
var noMachineNameErr: Int { get }
var noToolboxNameErr: Int { get }
var noResponseErr: Int { get }
var portClosedErr: Int { get }
var sessClosedErr: Int { get }
var badPortNameErr: Int { get }
var noDefaultUserErr: Int { get }
var notLoggedInErr: Int { get }
var noUserRefErr: Int { get }
var networkErr: Int { get }
var noInformErr: Int { get }
var authFailErr: Int { get }
var noUserRecErr: Int { get }
var badServiceMethodErr: Int { get }
var badLocNameErr: Int { get }
var guestNotAllowedErr: Int { get }
var kFMIterationCompleted: Int { get }
var kFMInvalidFontFamilyErr: Int { get }
var kFMInvalidFontErr: Int { get }
var kFMIterationScopeModifiedErr: Int { get }
var kFMFontTableAccessErr: Int { get }
var kFMFontContainerAccessErr: Int { get }
var noMaskFoundErr: Int { get }
var nbpBuffOvr: Int { get }
var nbpNoConfirm: Int { get }
var nbpConfDiff: Int { get }
var nbpDuplicate: Int { get }
var nbpNotFound: Int { get }
var nbpNISErr: Int { get }
var aspBadVersNum: Int { get }
var aspBufTooSmall: Int { get }
var aspNoMoreSess: Int { get }
var aspNoServers: Int { get }
var aspParamErr: Int { get }
var aspServerBusy: Int { get }
var aspSessClosed: Int { get }
var aspSizeErr: Int { get }
var aspTooMany: Int { get }
var aspNoAck: Int { get }
var reqFailed: Int { get }
var tooManyReqs: Int { get }
var tooManySkts: Int { get }
var badATPSkt: Int { get }
var badBuffNum: Int { get }
var noRelErr: Int { get }
var cbNotFound: Int { get }
var noSendResp: Int { get }
var noDataArea: Int { get }
var reqAborted: Int { get }
var errRefNum: Int { get }
var errAborted: Int { get }
var errState: Int { get }
var errOpening: Int { get }
var errAttention: Int { get }
var errFwdReset: Int { get }
var errDSPQueueSize: Int { get }
var errOpenDenied: Int { get }
var errAECoercionFail: Int { get }
var errAEDescNotFound: Int { get }
var errAECorruptData: Int { get }
var errAEWrongDataType: Int { get }
var errAENotAEDesc: Int { get }
var errAEBadListItem: Int { get }
var errAENewerVersion: Int { get }
var errAENotAppleEvent: Int { get }
var errAEEventNotHandled: Int { get }
var errAEReplyNotValid: Int { get }
var errAEUnknownSendMode: Int { get }
var errAEWaitCanceled: Int { get }
var errAETimeout: Int { get }
var errAENoUserInteraction: Int { get }
var errAENotASpecialFunction: Int { get }
var errAEParamMissed: Int { get }
var errAEUnknownAddressType: Int { get }
var errAEHandlerNotFound: Int { get }
var errAEReplyNotArrived: Int { get }
var errAEIllegalIndex: Int { get }
var errAEImpossibleRange: Int { get }
var errAEWrongNumberArgs: Int { get }
var errAEAccessorNotFound: Int { get }
var errAENoSuchLogical: Int { get }
var errAEBadTestKey: Int { get }
var errAENotAnObjSpec: Int { get }
var errAENoSuchObject: Int { get }
var errAENegativeCount: Int { get }
var errAEEmptyListContainer: Int { get }
var errAEUnknownObjectType: Int { get }
var errAERecordingIsAlreadyOn: Int { get }
var errAEReceiveTerminate: Int { get }
var errAEReceiveEscapeCurrent: Int { get }
var errAEEventFiltered: Int { get }
var errAEDuplicateHandler: Int { get }
var errAEStreamBadNesting: Int { get }
var errAEStreamAlreadyConverted: Int { get }
var errAEDescIsNull: Int { get }
var errAEBuildSyntaxError: Int { get }
var errAEBufferTooSmall: Int { get }
var errOSASystemError: Int { get }
var errOSAInvalidID: Int { get }
var errOSABadStorageType: Int { get }
var errOSAScriptError: Int { get }
var errOSABadSelector: Int { get }
var errOSASourceNotAvailable: Int { get }
var errOSANoSuchDialect: Int { get }
var errOSADataFormatObsolete: Int { get }
var errOSADataFormatTooNew: Int { get }
var errOSACorruptData: Int { get }
var errOSARecordingIsAlreadyOn: Int { get }
var errOSAComponentMismatch: Int { get }
var errOSACantOpenComponent: Int { get }
var errOSACantStorePointers: Int { get }
var errOffsetInvalid: Int { get }
var errOffsetIsOutsideOfView: Int { get }
var errTopOfDocument: Int { get }
var errTopOfBody: Int { get }
var errEndOfDocument: Int { get }
var errEndOfBody: Int { get }
var badDragRefErr: Int { get }
var badDragItemErr: Int { get }
var badDragFlavorErr: Int { get }
var duplicateFlavorErr: Int { get }
var cantGetFlavorErr: Int { get }
var duplicateHandlerErr: Int { get }
var handlerNotFoundErr: Int { get }
var dragNotAcceptedErr: Int { get }
var unsupportedForPlatformErr: Int { get }
var noSuitableDisplaysErr: Int { get }
var badImageRgnErr: Int { get }
var badImageErr: Int { get }
var nonDragOriginatorErr: Int { get }
var couldNotResolveDataRef: Int { get }
var badImageDescription: Int { get }
var badPublicMovieAtom: Int { get }
var cantFindHandler: Int { get }
var cantOpenHandler: Int { get }
var badComponentType: Int { get }
var noMediaHandler: Int { get }
var noDataHandler: Int { get }
var invalidMedia: Int { get }
var invalidTrack: Int { get }
var invalidMovie: Int { get }
var invalidSampleTable: Int { get }
var invalidDataRef: Int { get }
var invalidHandler: Int { get }
var invalidDuration: Int { get }
var invalidTime: Int { get }
var cantPutPublicMovieAtom: Int { get }
var badEditList: Int { get }
var mediaTypesDontMatch: Int { get }
var progressProcAborted: Int { get }
var movieToolboxUninitialized: Int { get }
var noRecordOfApp: Int { get }
var wfFileNotFound: Int { get }
var cantCreateSingleForkFile: Int { get }
var invalidEditState: Int { get }
var nonMatchingEditState: Int { get }
var staleEditState: Int { get }
var userDataItemNotFound: Int { get }
var maxSizeToGrowTooSmall: Int { get }
var badTrackIndex: Int { get }
var trackIDNotFound: Int { get }
var trackNotInMovie: Int { get }
var timeNotInTrack: Int { get }
var timeNotInMedia: Int { get }
var badEditIndex: Int { get }
var internalQuickTimeError: Int { get }
var cantEnableTrack: Int { get }
var invalidRect: Int { get }
var invalidSampleNum: Int { get }
var invalidChunkNum: Int { get }
var invalidSampleDescIndex: Int { get }
var invalidChunkCache: Int { get }
var invalidSampleDescription: Int { get }
var dataNotOpenForRead: Int { get }
var dataNotOpenForWrite: Int { get }
var dataAlreadyOpenForWrite: Int { get }
var dataAlreadyClosed: Int { get }
var endOfDataReached: Int { get }
var dataNoDataRef: Int { get }
var noMovieFound: Int { get }
var invalidDataRefContainer: Int { get }
var badDataRefIndex: Int { get }
var noDefaultDataRef: Int { get }
var couldNotUseAnExistingSample: Int { get }
var featureUnsupported: Int { get }
var noVideoTrackInMovieErr: Int { get }
var noSoundTrackInMovieErr: Int { get }
var soundSupportNotAvailableErr: Int { get }
var unsupportedAuxiliaryImportData: Int { get }
var auxiliaryExportDataUnavailable: Int { get }
var samplesAlreadyInMediaErr: Int { get }
var noSourceTreeFoundErr: Int { get }
var sourceNotFoundErr: Int { get }
var movieTextNotFoundErr: Int { get }
var missingRequiredParameterErr: Int { get }
var invalidSpriteWorldPropertyErr: Int { get }
var invalidSpritePropertyErr: Int { get }
var gWorldsNotSameDepthAndSizeErr: Int { get }
var invalidSpriteIndexErr: Int { get }
var invalidImageIndexErr: Int { get }
var invalidSpriteIDErr: Int { get }
var internalComponentErr: Int { get }
var notImplementedMusicOSErr: Int { get }
var cantSendToSynthesizerOSErr: Int { get }
var cantReceiveFromSynthesizerOSErr: Int { get }
var illegalVoiceAllocationOSErr: Int { get }
var illegalPartOSErr: Int { get }
var illegalChannelOSErr: Int { get }
var illegalKnobOSErr: Int { get }
var illegalKnobValueOSErr: Int { get }
var illegalInstrumentOSErr: Int { get }
var illegalControllerOSErr: Int { get }
var midiManagerAbsentOSErr: Int { get }
var synthesizerNotRespondingOSErr: Int { get }
var synthesizerOSErr: Int { get }
var illegalNoteChannelOSErr: Int { get }
var noteChannelNotAllocatedOSErr: Int { get }
var tunePlayerFullOSErr: Int { get }
var tuneParseOSErr: Int { get }
var noExportProcAvailableErr: Int { get }
var videoOutputInUseErr: Int { get }
var componentDllLoadErr: Int { get }
var componentDllEntryNotFoundErr: Int { get }
var qtmlDllLoadErr: Int { get }
var qtmlDllEntryNotFoundErr: Int { get }
var qtmlUninitialized: Int { get }
var unsupportedOSErr: Int { get }
var unsupportedProcessorErr: Int { get }
var componentNotThreadSafeErr: Int { get }
var cannotFindAtomErr: Int { get }
var notLeafAtomErr: Int { get }
var atomsNotOfSameTypeErr: Int { get }
var atomIndexInvalidErr: Int { get }
var duplicateAtomTypeAndIDErr: Int { get }
var invalidAtomErr: Int { get }
var invalidAtomContainerErr: Int { get }
var invalidAtomTypeErr: Int { get }
var cannotBeLeafAtomErr: Int { get }
var pathTooLongErr: Int { get }
var emptyPathErr: Int { get }
var noPathMappingErr: Int { get }
var pathNotVerifiedErr: Int { get }
var unknownFormatErr: Int { get }
var wackBadFileErr: Int { get }
var wackForkNotFoundErr: Int { get }
var wackBadMetaDataErr: Int { get }
var qfcbNotFoundErr: Int { get }
var qfcbNotCreatedErr: Int { get }
var AAPNotCreatedErr: Int { get }
var AAPNotFoundErr: Int { get }
var ASDBadHeaderErr: Int { get }
var ASDBadForkErr: Int { get }
var ASDEntryNotFoundErr: Int { get }
var fileOffsetTooBigErr: Int { get }
var notAllowedToSaveMovieErr: Int { get }
var qtNetworkAlreadyAllocatedErr: Int { get }
var urlDataHHTTPProtocolErr: Int { get }
var urlDataHHTTPNoNetDriverErr: Int { get }
var urlDataHHTTPURLErr: Int { get }
var urlDataHHTTPRedirectErr: Int { get }
var urlDataHFTPProtocolErr: Int { get }
var urlDataHFTPShutdownErr: Int { get }
var urlDataHFTPBadUserErr: Int { get }
var urlDataHFTPBadPasswordErr: Int { get }
var urlDataHFTPServerErr: Int { get }
var urlDataHFTPDataConnectionErr: Int { get }
var urlDataHFTPNoDirectoryErr: Int { get }
var urlDataHFTPQuotaErr: Int { get }
var urlDataHFTPPermissionsErr: Int { get }
var urlDataHFTPFilenameErr: Int { get }
var urlDataHFTPNoNetDriverErr: Int { get }
var urlDataHFTPBadNameListErr: Int { get }
var urlDataHFTPNeedPasswordErr: Int { get }
var urlDataHFTPNoPasswordErr: Int { get }
var urlDataHFTPServerDisconnectedErr: Int { get }
var urlDataHFTPURLErr: Int { get }
var notEnoughDataErr: Int { get }
var qtActionNotHandledErr: Int { get }
var qtXMLParseErr: Int { get }
var qtXMLApplicationErr: Int { get }
var digiUnimpErr: Int { get }
var qtParamErr: Int { get }
var matrixErr: Int { get }
var notExactMatrixErr: Int { get }
var noMoreKeyColorsErr: Int { get }
var notExactSizeErr: Int { get }
var badDepthErr: Int { get }
var noDMAErr: Int { get }
var badCallOrderErr: Int { get }
var kernelIncompleteErr: Int { get }
var kernelCanceledErr: Int { get }
var kernelOptionsErr: Int { get }
var kernelPrivilegeErr: Int { get }
var kernelUnsupportedErr: Int { get }
var kernelObjectExistsErr: Int { get }
var kernelWritePermissionErr: Int { get }
var kernelReadPermissionErr: Int { get }
var kernelExecutePermissionErr: Int { get }
var kernelDeletePermissionErr: Int { get }
var kernelExecutionLevelErr: Int { get }
var kernelAttributeErr: Int { get }
var kernelAsyncSendLimitErr: Int { get }
var kernelAsyncReceiveLimitErr: Int { get }
var kernelTimeoutErr: Int { get }
var kernelInUseErr: Int { get }
var kernelTerminatedErr: Int { get }
var kernelExceptionErr: Int { get }
var kernelIDErr: Int { get }
var kernelAlreadyFreeErr: Int { get }
var kernelReturnValueErr: Int { get }
var kernelUnrecoverableErr: Int { get }
var tsmComponentNoErr: Int { get }
var tsmUnsupScriptLanguageErr: Int { get }
var tsmInputMethodNotFoundErr: Int { get }
var tsmNotAnAppErr: Int { get }
var tsmAlreadyRegisteredErr: Int { get }
var tsmNeverRegisteredErr: Int { get }
var tsmInvalidDocIDErr: Int { get }
var tsmTSMDocBusyErr: Int { get }
var tsmDocNotActiveErr: Int { get }
var tsmNoOpenTSErr: Int { get }
var tsmCantOpenComponentErr: Int { get }
var tsmTextServiceNotFoundErr: Int { get }
var tsmDocumentOpenErr: Int { get }
var tsmUseInputWindowErr: Int { get }
var tsmTSHasNoMenuErr: Int { get }
var tsmTSNotOpenErr: Int { get }
var tsmComponentAlreadyOpenErr: Int { get }
var tsmInputMethodIsOldErr: Int { get }
var tsmScriptHasNoIMErr: Int { get }
var tsmUnsupportedTypeErr: Int { get }
var tsmUnknownErr: Int { get }
var tsmInvalidContext: Int { get }
var tsmNoHandler: Int { get }
var tsmNoMoreTokens: Int { get }
var tsmNoStem: Int { get }
var tsmDefaultIsNotInputMethodErr: Int { get }
var tsmDocPropertyNotFoundErr: Int { get }
var tsmDocPropertyBufferTooSmallErr: Int { get }
var tsmCantChangeForcedClassStateErr: Int { get }
var tsmComponentPropertyUnsupportedErr: Int { get }
var tsmComponentPropertyNotFoundErr: Int { get }
var tsmInputModeChangeFailedErr: Int { get }
var mmInternalError: Int { get }
var nrLockedErr: Int { get }
var nrNotEnoughMemoryErr: Int { get }
var nrInvalidNodeErr: Int { get }
var nrNotFoundErr: Int { get }
var nrNotCreatedErr: Int { get }
var nrNameErr: Int { get }
var nrNotSlotDeviceErr: Int { get }
var nrDataTruncatedErr: Int { get }
var nrPowerErr: Int { get }
var nrPowerSwitchAbortErr: Int { get }
var nrTypeMismatchErr: Int { get }
var nrNotModifiedErr: Int { get }
var nrOverrunErr: Int { get }
var nrResultCodeBase: Int { get }
var nrPathNotFound: Int { get }
var nrPathBufferTooSmall: Int { get }
var nrInvalidEntryIterationOp: Int { get }
var nrPropertyAlreadyExists: Int { get }
var nrIterationDone: Int { get }
var nrExitedIteratorScope: Int { get }
var nrTransactionAborted: Int { get }
var nrCallNotSupported: Int { get }
var invalidIconRefErr: Int { get }
var noSuchIconErr: Int { get }
var noIconDataAvailableErr: Int { get }
var errOSACantCoerce: Int { get }
var errOSACantAccess: Int { get }
var errOSACantAssign: Int { get }
var errOSAGeneralError: Int { get }
var errOSADivideByZero: Int { get }
var errOSANumericOverflow: Int { get }
var errOSACantLaunch: Int { get }
var errOSAAppNotHighLevelEventAware: Int { get }
var errOSACorruptTerminology: Int { get }
var errOSAStackOverflow: Int { get }
var errOSAInternalTableOverflow: Int { get }
var errOSADataBlockTooLarge: Int { get }
var errOSACantGetTerminology: Int { get }
var errOSACantCreate: Int { get }
var errOSATypeError: Int { get }
var OSAMessageNotUnderstood: Int { get }
var OSAUndefinedHandler: Int { get }
var OSAIllegalAccess: Int { get }
var OSAIllegalIndex: Int { get }
var OSAIllegalRange: Int { get }
var OSAIllegalAssign: Int { get }
var OSASyntaxError: Int { get }
var OSASyntaxTypeError: Int { get }
var OSATokenTooLong: Int { get }
var OSAMissingParameter: Int { get }
var OSAParameterMismatch: Int { get }
var OSADuplicateParameter: Int { get }
var OSADuplicateProperty: Int { get }
var OSADuplicateHandler: Int { get }
var OSAUndefinedVariable: Int { get }
var OSAInconsistentDeclarations: Int { get }
var OSAControlFlowError: Int { get }
var errASCantConsiderAndIgnore: Int { get }
var errASCantCompareMoreThan32k: Int { get }
var errASTerminologyNestingTooDeep: Int { get }
var errASIllegalFormalParameter: Int { get }
var errASParameterNotForEvent: Int { get }
var errASNoResultReturned: Int { get }
var errASInconsistentNames: Int { get }
var cfragFirstErrCode: Int { get }
var cfragContextIDErr: Int { get }
var cfragConnectionIDErr: Int { get }
var cfragNoSymbolErr: Int { get }
var cfragNoSectionErr: Int { get }
var cfragNoLibraryErr: Int { get }
var cfragDupRegistrationErr: Int { get }
var cfragFragmentFormatErr: Int { get }
var cfragUnresolvedErr: Int { get }
var cfragNoPositionErr: Int { get }
var cfragNoPrivateMemErr: Int { get }
var cfragNoClientMemErr: Int { get }
var cfragNoIDsErr: Int { get }
var cfragInitOrderErr: Int { get }
var cfragImportTooOldErr: Int { get }
var cfragImportTooNewErr: Int { get }
var cfragInitLoopErr: Int { get }
var cfragInitAtBootErr: Int { get }
var cfragLibConnErr: Int { get }
var cfragCFMStartupErr: Int { get }
var cfragCFMInternalErr: Int { get }
var cfragFragmentCorruptErr: Int { get }
var cfragInitFunctionErr: Int { get }
var cfragNoApplicationErr: Int { get }
var cfragArchitectureErr: Int { get }
var cfragFragmentUsageErr: Int { get }
var cfragFileSizeErr: Int { get }
var cfragNotClosureErr: Int { get }
var cfragNoRegistrationErr: Int { get }
var cfragContainerIDErr: Int { get }
var cfragClosureIDErr: Int { get }
var cfragAbortClosureErr: Int { get }
var cfragOutputLengthErr: Int { get }
var cfragMapFileErr: Int { get }
var cfragExecFileRefErr: Int { get }
var cfragStdFolderErr: Int { get }
var cfragRsrcForkErr: Int { get }
var cfragCFragRsrcErr: Int { get }
var cfragLastErrCode: Int { get }
var cfragFirstReservedCode: Int { get }
var cfragReservedCode_3: Int { get }
var cfragReservedCode_2: Int { get }
var cfragReservedCode_1: Int { get }
var invalidComponentID: Int { get }
var validInstancesExist: Int { get }
var componentNotCaptured: Int { get }
var componentDontRegister: Int { get }
var unresolvedComponentDLLErr: Int { get }
var retryComponentRegistrationErr: Int { get }
var invalidTranslationPathErr: Int { get }
var couldNotParseSourceFileErr: Int { get }
var noTranslationPathErr: Int { get }
var badTranslationSpecErr: Int { get }
var noPrefAppErr: Int { get }
var buf2SmallErr: Int { get }
var noMPPErr: Int { get }
var ckSumErr: Int { get }
var extractErr: Int { get }
var readQErr: Int { get }
var atpLenErr: Int { get }
var atpBadRsp: Int { get }
var recNotFnd: Int { get }
var sktClosedErr: Int { get }
var kOTNoError: Int { get }
var kOTOutOfMemoryErr: Int { get }
var kOTNotFoundErr: Int { get }
var kOTDuplicateFoundErr: Int { get }
var kOTBadAddressErr: Int { get }
var kOTBadOptionErr: Int { get }
var kOTAccessErr: Int { get }
var kOTBadReferenceErr: Int { get }
var kOTNoAddressErr: Int { get }
var kOTOutStateErr: Int { get }
var kOTBadSequenceErr: Int { get }
var kOTSysErrorErr: Int { get }
var kOTLookErr: Int { get }
var kOTBadDataErr: Int { get }
var kOTBufferOverflowErr: Int { get }
var kOTFlowErr: Int { get }
var kOTNoDataErr: Int { get }
var kOTNoDisconnectErr: Int { get }
var kOTNoUDErrErr: Int { get }
var kOTBadFlagErr: Int { get }
var kOTNoReleaseErr: Int { get }
var kOTNotSupportedErr: Int { get }
var kOTStateChangeErr: Int { get }
var kOTNoStructureTypeErr: Int { get }
var kOTBadNameErr: Int { get }
var kOTBadQLenErr: Int { get }
var kOTAddressBusyErr: Int { get }
var kOTIndOutErr: Int { get }
var kOTProviderMismatchErr: Int { get }
var kOTResQLenErr: Int { get }
var kOTResAddressErr: Int { get }
var kOTQFullErr: Int { get }
var kOTProtocolErr: Int { get }
var kOTBadSyncErr: Int { get }
var kOTCanceledErr: Int { get }
var kEPERMErr: Int { get }
var kENOENTErr: Int { get }
var kENORSRCErr: Int { get }
var kEINTRErr: Int { get }
var kEIOErr: Int { get }
var kENXIOErr: Int { get }
var kEBADFErr: Int { get }
var kEAGAINErr: Int { get }
var kENOMEMErr: Int { get }
var kEACCESErr: Int { get }
var kEFAULTErr: Int { get }
var kEBUSYErr: Int { get }
var kEEXISTErr: Int { get }
var kENODEVErr: Int { get }
var kEINVALErr: Int { get }
var kENOTTYErr: Int { get }
var kEPIPEErr: Int { get }
var kERANGEErr: Int { get }
var kEWOULDBLOCKErr: Int { get }
var kEDEADLKErr: Int { get }
var kEALREADYErr: Int { get }
var kENOTSOCKErr: Int { get }
var kEDESTADDRREQErr: Int { get }
var kEMSGSIZEErr: Int { get }
var kEPROTOTYPEErr: Int { get }
var kENOPROTOOPTErr: Int { get }
var kEPROTONOSUPPORTErr: Int { get }
var kESOCKTNOSUPPORTErr: Int { get }
var kEOPNOTSUPPErr: Int { get }
var kEADDRINUSEErr: Int { get }
var kEADDRNOTAVAILErr: Int { get }
var kENETDOWNErr: Int { get }
var kENETUNREACHErr: Int { get }
var kENETRESETErr: Int { get }
var kECONNABORTEDErr: Int { get }
var kECONNRESETErr: Int { get }
var kENOBUFSErr: Int { get }
var kEISCONNErr: Int { get }
var kENOTCONNErr: Int { get }
var kESHUTDOWNErr: Int { get }
var kETOOMANYREFSErr: Int { get }
var kETIMEDOUTErr: Int { get }
var kECONNREFUSEDErr: Int { get }
var kEHOSTDOWNErr: Int { get }
var kEHOSTUNREACHErr: Int { get }
var kEPROTOErr: Int { get }
var kETIMEErr: Int { get }
var kENOSRErr: Int { get }
var kEBADMSGErr: Int { get }
var kECANCELErr: Int { get }
var kENOSTRErr: Int { get }
var kENODATAErr: Int { get }
var kEINPROGRESSErr: Int { get }
var kESRCHErr: Int { get }
var kENOMSGErr: Int { get }
var kOTClientNotInittedErr: Int { get }
var kOTPortHasDiedErr: Int { get }
var kOTPortWasEjectedErr: Int { get }
var kOTBadConfigurationErr: Int { get }
var kOTConfigurationChangedErr: Int { get }
var kOTUserRequestedErr: Int { get }
var kOTPortLostConnection: Int { get }
var kQDNoPalette: Int { get }
var kQDNoColorHWCursorSupport: Int { get }
var kQDCursorAlreadyRegistered: Int { get }
var kQDCursorNotRegistered: Int { get }
var kQDCorruptPICTDataErr: Int { get }
var firstPickerError: Int { get }
var invalidPickerType: Int { get }
var requiredFlagsDontMatch: Int { get }
var pickerResourceError: Int { get }
var cantLoadPicker: Int { get }
var cantCreatePickerWindow: Int { get }
var cantLoadPackage: Int { get }
var pickerCantLive: Int { get }
var colorSyncNotInstalled: Int { get }
var badProfileError: Int { get }
var noHelpForItem: Int { get }
var kNSL68kContextNotSupported: Int { get }
var kNSLSchedulerError: Int { get }
var kNSLBadURLSyntax: Int { get }
var kNSLNoCarbonLib: Int { get }
var kNSLUILibraryNotAvailable: Int { get }
var kNSLNotImplementedYet: Int { get }
var kNSLErrNullPtrError: Int { get }
var kNSLSomePluginsFailedToLoad: Int { get }
var kNSLNullNeighborhoodPtr: Int { get }
var kNSLNoPluginsForSearch: Int { get }
var kNSLSearchAlreadyInProgress: Int { get }
var kNSLNoPluginsFound: Int { get }
var kNSLPluginLoadFailed: Int { get }
var kNSLBadProtocolTypeErr: Int { get }
var kNSLNullListPtr: Int { get }
var kNSLBadClientInfoPtr: Int { get }
var kNSLCannotContinueLookup: Int { get }
var kNSLBufferTooSmallForData: Int { get }
var kNSLNoContextAvailable: Int { get }
var kNSLRequestBufferAlreadyInList: Int { get }
var kNSLInvalidPluginSpec: Int { get }
var kNSLNoSupportForService: Int { get }
var kNSLBadNetConnection: Int { get }
var kNSLBadDataTypeErr: Int { get }
var kNSLBadServiceTypeErr: Int { get }
var kNSLBadReferenceErr: Int { get }
var kNSLNoElementsInList: Int { get }
var kNSLInsufficientOTVer: Int { get }
var kNSLInsufficientSysVer: Int { get }
var kNSLNotInitialized: Int { get }
var kNSLInitializationFailed: Int { get }
var kDTPHoldJobErr: Int { get }
var kDTPStopQueueErr: Int { get }
var kDTPTryAgainErr: Int { get }
var kDTPAbortJobErr: Int { get }
var cmElementTagNotFound: Int { get }
var cmIndexRangeErr: Int { get }
var cmCantDeleteElement: Int { get }
var cmFatalProfileErr: Int { get }
var cmInvalidProfile: Int { get }
var cmInvalidProfileLocation: Int { get }
var cmCantCopyModifiedV1Profile: Int { get }
var cmInvalidSearch: Int { get }
var cmSearchError: Int { get }
var cmErrIncompatibleProfile: Int { get }
var cmInvalidColorSpace: Int { get }
var cmInvalidSrcMap: Int { get }
var cmInvalidDstMap: Int { get }
var cmNoGDevicesError: Int { get }
var cmInvalidProfileComment: Int { get }
var cmRangeOverFlow: Int { get }
var cmNamedColorNotFound: Int { get }
var cmCantGamutCheckError: Int { get }
var badFolderDescErr: Int { get }
var duplicateFolderDescErr: Int { get }
var noMoreFolderDescErr: Int { get }
var invalidFolderTypeErr: Int { get }
var duplicateRoutingErr: Int { get }
var routingNotFoundErr: Int { get }
var badRoutingSizeErr: Int { get }
var coreFoundationUnknownErr: Int { get }
var errCoreEndianDataTooShortForFormat: Int { get }
var errCoreEndianDataTooLongForFormat: Int { get }
var errCoreEndianDataDoesNotMatchFormat: Int { get }
var internalScrapErr: Int { get }
var duplicateScrapFlavorErr: Int { get }
var badScrapRefErr: Int { get }
var processStateIncorrectErr: Int { get }
var scrapPromiseNotKeptErr: Int { get }
var noScrapPromiseKeeperErr: Int { get }
var nilScrapFlavorDataErr: Int { get }
var scrapFlavorFlagsMismatchErr: Int { get }
var scrapFlavorSizeMismatchErr: Int { get }
var illegalScrapFlavorFlagsErr: Int { get }
var illegalScrapFlavorTypeErr: Int { get }
var illegalScrapFlavorSizeErr: Int { get }
var scrapFlavorNotFoundErr: Int { get }
var needClearScrapErr: Int { get }
var afpAccessDenied: Int { get }
var afpAuthContinue: Int { get }
var afpBadUAM: Int { get }
var afpBadVersNum: Int { get }
var afpBitmapErr: Int { get }
var afpCantMove: Int { get }
var afpDenyConflict: Int { get }
var afpDirNotEmpty: Int { get }
var afpDiskFull: Int { get }
var afpEofError: Int { get }
var afpFileBusy: Int { get }
var afpFlatVol: Int { get }
var afpItemNotFound: Int { get }
var afpLockErr: Int { get }
var afpMiscErr: Int { get }
var afpNoMoreLocks: Int { get }
var afpNoServer: Int { get }
var afpObjectExists: Int { get }
var afpObjectNotFound: Int { get }
var afpParmErr: Int { get }
var afpRangeNotLocked: Int { get }
var afpRangeOverlap: Int { get }
var afpSessClosed: Int { get }
var afpUserNotAuth: Int { get }
var afpCallNotSupported: Int { get }
var afpObjectTypeErr: Int { get }
var afpTooManyFilesOpen: Int { get }
var afpServerGoingDown: Int { get }
var afpCantRename: Int { get }
var afpDirNotFound: Int { get }
var afpIconTypeError: Int { get }
var afpVolLocked: Int { get }
var afpObjectLocked: Int { get }
var afpContainsSharedErr: Int { get }
var afpIDNotFound: Int { get }
var afpIDExists: Int { get }
var afpDiffVolErr: Int { get }
var afpCatalogChanged: Int { get }
var afpSameObjectErr: Int { get }
var afpBadIDErr: Int { get }
var afpPwdSameErr: Int { get }
var afpPwdTooShortErr: Int { get }
var afpPwdExpiredErr: Int { get }
var afpInsideSharedErr: Int { get }
var afpInsideTrashErr: Int { get }
var afpPwdNeedsChangeErr: Int { get }
var afpPwdPolicyErr: Int { get }
var afpAlreadyLoggedInErr: Int { get }
var afpCallNotAllowed: Int { get }
var afpBadDirIDType: Int { get }
var afpCantMountMoreSrvre: Int { get }
var afpAlreadyMounted: Int { get }
var afpSameNodeErr: Int { get }
var numberFormattingNotANumberErr: Int { get }
var numberFormattingOverflowInDestinationErr: Int { get }
var numberFormattingBadNumberFormattingObjectErr: Int { get }
var numberFormattingSpuriousCharErr: Int { get }
var numberFormattingLiteralMissingErr: Int { get }
var numberFormattingDelimiterMissingErr: Int { get }
var numberFormattingEmptyFormatErr: Int { get }
var numberFormattingBadFormatErr: Int { get }
var numberFormattingBadOptionsErr: Int { get }
var numberFormattingBadTokenErr: Int { get }
var numberFormattingUnOrderedCurrencyRangeErr: Int { get }
var numberFormattingBadCurrencyPositionErr: Int { get }
var numberFormattingNotADigitErr: Int { get }
var numberFormattingUnOrdredCurrencyRangeErr: Int { get }
var numberFortmattingNotADigitErr: Int { get }
var textParserBadParamErr: Int { get }
var textParserObjectNotFoundErr: Int { get }
var textParserBadTokenValueErr: Int { get }
var textParserBadParserObjectErr: Int { get }
var textParserParamErr: Int { get }
var textParserNoMoreTextErr: Int { get }
var textParserBadTextLanguageErr: Int { get }
var textParserBadTextEncodingErr: Int { get }
var textParserNoSuchTokenFoundErr: Int { get }
var textParserNoMoreTokensErr: Int { get }
var errUnknownAttributeTag: Int { get }
var errMarginWilllNotFit: Int { get }
var errNotInImagingMode: Int { get }
var errAlreadyInImagingMode: Int { get }
var errEngineNotFound: Int { get }
var errIteratorReachedEnd: Int { get }
var errInvalidRange: Int { get }
var errOffsetNotOnElementBounday: Int { get }
var errNoHiliteText: Int { get }
var errEmptyScrap: Int { get }
var errReadOnlyText: Int { get }
var errUnknownElement: Int { get }
var errNonContiuousAttribute: Int { get }
var errCannotUndo: Int { get }
var hrHTMLRenderingLibNotInstalledErr: Int { get }
var hrMiscellaneousExceptionErr: Int { get }
var hrUnableToResizeHandleErr: Int { get }
var hrURLNotHandledErr: Int { get }
var errIANoErr: Int { get }
var errIAUnknownErr: Int { get }
var errIAAllocationErr: Int { get }
var errIAParamErr: Int { get }
var errIANoMoreItems: Int { get }
var errIABufferTooSmall: Int { get }
var errIACanceled: Int { get }
var errIAInvalidDocument: Int { get }
var errIATextExtractionErr: Int { get }
var errIAEndOfTextRun: Int { get }
var qtsBadSelectorErr: Int { get }
var qtsBadStateErr: Int { get }
var qtsBadDataErr: Int { get }
var qtsUnsupportedDataTypeErr: Int { get }
var qtsUnsupportedRateErr: Int { get }
var qtsUnsupportedFeatureErr: Int { get }
var qtsTooMuchDataErr: Int { get }
var qtsUnknownValueErr: Int { get }
var qtsTimeoutErr: Int { get }
var qtsConnectionFailedErr: Int { get }
var qtsAddressBusyErr: Int { get }
var gestaltUnknownErr: Int { get }
var gestaltUndefSelectorErr: Int { get }
var gestaltDupSelectorErr: Int { get }
var gestaltLocationErr: Int { get }
var menuPropertyInvalidErr: Int { get }
var menuPropertyInvalid: Int { get }
var menuPropertyNotFoundErr: Int { get }
var menuNotFoundErr: Int { get }
var menuUsesSystemDefErr: Int { get }
var menuItemNotFoundErr: Int { get }
var menuInvalidErr: Int { get }
var errInvalidWindowPtr: Int { get }
var errInvalidWindowRef: Int { get }
var errUnsupportedWindowAttributesForClass: Int { get }
var errWindowDoesNotHaveProxy: Int { get }
var errInvalidWindowProperty: Int { get }
var errWindowPropertyNotFound: Int { get }
var errUnrecognizedWindowClass: Int { get }
var errCorruptWindowDescription: Int { get }
var errUserWantsToDragWindow: Int { get }
var errWindowsAlreadyInitialized: Int { get }
var errFloatingWindowsNotInitialized: Int { get }
var errWindowNotFound: Int { get }
var errWindowDoesNotFitOnscreen: Int { get }
var windowAttributeImmutableErr: Int { get }
var windowAttributesConflictErr: Int { get }
var windowManagerInternalErr: Int { get }
var windowWrongStateErr: Int { get }
var windowGroupInvalidErr: Int { get }
var windowAppModalStateAlreadyExistsErr: Int { get }
var windowNoAppModalStateErr: Int { get }
var errWindowDoesntSupportFocus: Int { get }
var errWindowRegionCodeInvalid: Int { get }
var dialogNoTimeoutErr: Int { get }
var kNavWrongDialogStateErr: Int { get }
var kNavWrongDialogClassErr: Int { get }
var kNavInvalidSystemConfigErr: Int { get }
var kNavCustomControlMessageFailedErr: Int { get }
var kNavInvalidCustomControlMessageErr: Int { get }
var kNavMissingKindStringErr: Int { get }
var collectionItemLockedErr: Int { get }
var collectionItemNotFoundErr: Int { get }
var collectionIndexRangeErr: Int { get }
var collectionVersionErr: Int { get }
var kQTSSUnknownErr: Int { get }
var kDMGenErr: Int { get }
var kDMMirroringOnAlready: Int { get }
var kDMWrongNumberOfDisplays: Int { get }
var kDMMirroringBlocked: Int { get }
var kDMCantBlock: Int { get }
var kDMMirroringNotOn: Int { get }
var kSysSWTooOld: Int { get }
var kDMSWNotInitializedErr: Int { get }
var kDMDriverNotDisplayMgrAwareErr: Int { get }
var kDMDisplayNotFoundErr: Int { get }
var kDMNotFoundErr: Int { get }
var kDMDisplayAlreadyInstalledErr: Int { get }
var kDMMainDisplayCannotMoveErr: Int { get }
var kDMNoDeviceTableclothErr: Int { get }
var kDMFoundErr: Int { get }
var laTooSmallBufferErr: Int { get }
var laEnvironmentBusyErr: Int { get }
var laEnvironmentNotFoundErr: Int { get }
var laEnvironmentExistErr: Int { get }
var laInvalidPathErr: Int { get }
var laNoMoreMorphemeErr: Int { get }
var laFailAnalysisErr: Int { get }
var laTextOverFlowErr: Int { get }
var laDictionaryNotOpenedErr: Int { get }
var laDictionaryUnknownErr: Int { get }
var laDictionaryTooManyErr: Int { get }
var laPropertyValueErr: Int { get }
var laPropertyUnknownErr: Int { get }
var laPropertyIsReadOnlyErr: Int { get }
var laPropertyNotFoundErr: Int { get }
var laPropertyErr: Int { get }
var laEngineNotFoundErr: Int { get }
var kUSBNoErr: Int { get }
var kUSBNoTran: Int { get }
var kUSBNoDelay: Int { get }
var kUSBPending: Int { get }
var kUSBNotSent2Err: Int { get }
var kUSBNotSent1Err: Int { get }
var kUSBBufUnderRunErr: Int { get }
var kUSBBufOvrRunErr: Int { get }
var kUSBRes2Err: Int { get }
var kUSBRes1Err: Int { get }
var kUSBUnderRunErr: Int { get }
var kUSBOverRunErr: Int { get }
var kUSBWrongPIDErr: Int { get }
var kUSBPIDCheckErr: Int { get }
var kUSBNotRespondingErr: Int { get }
var kUSBEndpointStallErr: Int { get }
var kUSBDataToggleErr: Int { get }
var kUSBBitstufErr: Int { get }
var kUSBCRCErr: Int { get }
var kUSBLinkErr: Int { get }
var kUSBQueueFull: Int { get }
var kUSBNotHandled: Int { get }
var kUSBUnknownNotification: Int { get }
var kUSBBadDispatchTable: Int { get }
var kUSBInternalReserved10: Int { get }
var kUSBInternalReserved9: Int { get }
var kUSBInternalReserved8: Int { get }
var kUSBInternalReserved7: Int { get }
var kUSBInternalReserved6: Int { get }
var kUSBInternalReserved5: Int { get }
var kUSBInternalReserved4: Int { get }
var kUSBInternalReserved3: Int { get }
var kUSBInternalReserved2: Int { get }
var kUSBInternalReserved1: Int { get }
var kUSBPortDisabled: Int { get }
var kUSBQueueAborted: Int { get }
var kUSBTimedOut: Int { get }
var kUSBDeviceDisconnected: Int { get }
var kUSBDeviceNotSuspended: Int { get }
var kUSBDeviceSuspended: Int { get }
var kUSBInvalidBuffer: Int { get }
var kUSBDevicePowerProblem: Int { get }
var kUSBDeviceBusy: Int { get }
var kUSBUnknownInterfaceErr: Int { get }
var kUSBPipeStalledError: Int { get }
var kUSBPipeIdleError: Int { get }
var kUSBNoBandwidthError: Int { get }
var kUSBAbortedError: Int { get }
var kUSBFlagsError: Int { get }
var kUSBCompletionError: Int { get }
var kUSBPBLengthError: Int { get }
var kUSBPBVersionError: Int { get }
var kUSBNotFound: Int { get }
var kUSBOutOfMemoryErr: Int { get }
var kUSBDeviceErr: Int { get }
var kUSBNoDeviceErr: Int { get }
var kUSBAlreadyOpenErr: Int { get }
var kUSBTooManyTransactionsErr: Int { get }
var kUSBUnknownRequestErr: Int { get }
var kUSBRqErr: Int { get }
var kUSBIncorrectTypeErr: Int { get }
var kUSBTooManyPipesErr: Int { get }
var kUSBUnknownPipeErr: Int { get }
var kUSBUnknownDeviceErr: Int { get }
var kUSBInternalErr: Int { get }
var dcmParamErr: Int { get }
var dcmNotDictionaryErr: Int { get }
var dcmBadDictionaryErr: Int { get }
var dcmPermissionErr: Int { get }
var dcmDictionaryNotOpenErr: Int { get }
var dcmDictionaryBusyErr: Int { get }
var dcmBlockFullErr: Int { get }
var dcmNoRecordErr: Int { get }
var dcmDupRecordErr: Int { get }
var dcmNecessaryFieldErr: Int { get }
var dcmBadFieldInfoErr: Int { get }
var dcmBadFieldTypeErr: Int { get }
var dcmNoFieldErr: Int { get }
var dcmBadKeyErr: Int { get }
var dcmTooManyKeyErr: Int { get }
var dcmBadDataSizeErr: Int { get }
var dcmBadFindMethodErr: Int { get }
var dcmBadPropertyErr: Int { get }
var dcmProtectedErr: Int { get }
var dcmNoAccessMethodErr: Int { get }
var dcmBadFeatureErr: Int { get }
var dcmIterationCompleteErr: Int { get }
var dcmBufferOverflowErr: Int { get }
var kRAInvalidParameter: Int { get }
var kRAInvalidPort: Int { get }
var kRAStartupFailed: Int { get }
var kRAPortSetupFailed: Int { get }
var kRAOutOfMemory: Int { get }
var kRANotSupported: Int { get }
var kRAMissingResources: Int { get }
var kRAIncompatiblePrefs: Int { get }
var kRANotConnected: Int { get }
var kRAConnectionCanceled: Int { get }
var kRAUnknownUser: Int { get }
var kRAInvalidPassword: Int { get }
var kRAInternalError: Int { get }
var kRAInstallationDamaged: Int { get }
var kRAPortBusy: Int { get }
var kRAUnknownPortState: Int { get }
var kRAInvalidPortState: Int { get }
var kRAInvalidSerialProtocol: Int { get }
var kRAUserLoginDisabled: Int { get }
var kRAUserPwdChangeRequired: Int { get }
var kRAUserPwdEntryRequired: Int { get }
var kRAUserInteractionRequired: Int { get }
var kRAInitOpenTransportFailed: Int { get }
var kRARemoteAccessNotReady: Int { get }
var kRATCPIPInactive: Int { get }
var kRATCPIPNotConfigured: Int { get }
var kRANotPrimaryInterface: Int { get }
var kRAConfigurationDBInitErr: Int { get }
var kRAPPPProtocolRejected: Int { get }
var kRAPPPAuthenticationFailed: Int { get }
var kRAPPPNegotiationFailed: Int { get }
var kRAPPPUserDisconnected: Int { get }
var kRAPPPPeerDisconnected: Int { get }
var kRAPeerNotResponding: Int { get }
var kRAATalkInactive: Int { get }
var kRAExtAuthenticationFailed: Int { get }
var kRANCPRejectedbyPeer: Int { get }
var kRADuplicateIPAddr: Int { get }
var kRACallBackFailed: Int { get }
var kRANotEnabled: Int { get }
var kATSUInvalidTextLayoutErr: Int { get }
var kATSUInvalidStyleErr: Int { get }
var kATSUInvalidTextRangeErr: Int { get }
var kATSUFontsMatched: Int { get }
var kATSUFontsNotMatched: Int { get }
var kATSUNoCorrespondingFontErr: Int { get }
var kATSUInvalidFontErr: Int { get }
var kATSUInvalidAttributeValueErr: Int { get }
var kATSUInvalidAttributeSizeErr: Int { get }
var kATSUInvalidAttributeTagErr: Int { get }
var kATSUInvalidCacheErr: Int { get }
var kATSUNotSetErr: Int { get }
var kATSUNoStyleRunsAssignedErr: Int { get }
var kATSUQuickDrawTextErr: Int { get }
var kATSULowLevelErr: Int { get }
var kATSUNoFontCmapAvailableErr: Int { get }
var kATSUNoFontScalerAvailableErr: Int { get }
var kATSUCoordinateOverflowErr: Int { get }
var kATSULineBreakInWord: Int { get }
var kATSUBusyObjectErr: Int { get }
var kTextUnsupportedEncodingErr: Int { get }
var kTextMalformedInputErr: Int { get }
var kTextUndefinedElementErr: Int { get }
var kTECMissingTableErr: Int { get }
var kTECTableChecksumErr: Int { get }
var kTECTableFormatErr: Int { get }
var kTECCorruptConverterErr: Int { get }
var kTECNoConversionPathErr: Int { get }
var kTECBufferBelowMinimumSizeErr: Int { get }
var kTECArrayFullErr: Int { get }
var kTECBadTextRunErr: Int { get }
var kTECPartialCharErr: Int { get }
var kTECUnmappableElementErr: Int { get }
var kTECIncompleteElementErr: Int { get }
var kTECDirectionErr: Int { get }
var kTECGlobalsUnavailableErr: Int { get }
var kTECItemUnavailableErr: Int { get }
var kTECUsedFallbacksStatus: Int { get }
var kTECNeedFlushStatus: Int { get }
var kTECOutputBufferFullStatus: Int { get }
var unicodeChecksumErr: Int { get }
var unicodeNoTableErr: Int { get }
var unicodeVariantErr: Int { get }
var unicodeFallbacksErr: Int { get }
var unicodePartConvertErr: Int { get }
var unicodeBufErr: Int { get }
var unicodeCharErr: Int { get }
var unicodeElementErr: Int { get }
var unicodeNotFoundErr: Int { get }
var unicodeTableFormatErr: Int { get }
var unicodeDirectionErr: Int { get }
var unicodeContextualErr: Int { get }
var unicodeTextEncodingDataErr: Int { get }
var kUTCUnderflowErr: Int { get }
var kUTCOverflowErr: Int { get }
var kIllegalClockValueErr: Int { get }
var kATSUInvalidFontFallbacksErr: Int { get }
var kATSUUnsupportedStreamFormatErr: Int { get }
var kATSUBadStreamErr: Int { get }
var kATSUOutputBufferTooSmallErr: Int { get }
var kATSUInvalidCallInsideCallbackErr: Int { get }
var kATSUNoFontNameErr: Int { get }
var kATSULastErr: Int { get }
var codecErr: Int { get }
var noCodecErr: Int { get }
var codecUnimpErr: Int { get }
var codecSizeErr: Int { get }
var codecScreenBufErr: Int { get }
var codecImageBufErr: Int { get }
var codecSpoolErr: Int { get }
var codecAbortErr: Int { get }
var codecWouldOffscreenErr: Int { get }
var codecBadDataErr: Int { get }
var codecDataVersErr: Int { get }
var codecExtensionNotFoundErr: Int { get }
var scTypeNotFoundErr: Int { get }
var codecConditionErr: Int { get }
var codecOpenErr: Int { get }
var codecCantWhenErr: Int { get }
var codecCantQueueErr: Int { get }
var codecNothingToBlitErr: Int { get }
var codecNoMemoryPleaseWaitErr: Int { get }
var codecDisabledErr: Int { get }
var codecNeedToFlushChainErr: Int { get }
var lockPortBitsBadSurfaceErr: Int { get }
var lockPortBitsWindowMovedErr: Int { get }
var lockPortBitsWindowResizedErr: Int { get }
var lockPortBitsWindowClippedErr: Int { get }
var lockPortBitsBadPortErr: Int { get }
var lockPortBitsSurfaceLostErr: Int { get }
var codecParameterDialogConfirm: Int { get }
var codecNeedAccessKeyErr: Int { get }
var codecOffscreenFailedErr: Int { get }
var codecDroppedFrameErr: Int { get }
var directXObjectAlreadyExists: Int { get }
var lockPortBitsWrongGDeviceErr: Int { get }
var codecOffscreenFailedPleaseRetryErr: Int { get }
var badCodecCharacterizationErr: Int { get }
var noThumbnailFoundErr: Int { get }
var kBadAdapterErr: Int { get }
var kBadAttributeErr: Int { get }
var kBadBaseErr: Int { get }
var kBadEDCErr: Int { get }
var kBadIRQErr: Int { get }
var kBadOffsetErr: Int { get }
var kBadPageErr: Int { get }
var kBadSizeErr: Int { get }
var kBadSocketErr: Int { get }
var kBadTypeErr: Int { get }
var kBadVccErr: Int { get }
var kBadVppErr: Int { get }
var kBadWindowErr: Int { get }
var kBadArgLengthErr: Int { get }
var kBadArgsErr: Int { get }
var kBadHandleErr: Int { get }
var kBadCISErr: Int { get }
var kBadSpeedErr: Int { get }
var kReadFailureErr: Int { get }
var kWriteFailureErr: Int { get }
var kGeneralFailureErr: Int { get }
var kNoCardErr: Int { get }
var kUnsupportedFunctionErr: Int { get }
var kUnsupportedModeErr: Int { get }
var kBusyErr: Int { get }
var kWriteProtectedErr: Int { get }
var kConfigurationLockedErr: Int { get }
var kInUseErr: Int { get }
var kNoMoreItemsErr: Int { get }
var kOutOfResourceErr: Int { get }
var kNoCardSevicesSocketsErr: Int { get }
var kInvalidRegEntryErr: Int { get }
var kBadLinkErr: Int { get }
var kBadDeviceErr: Int { get }
var k16BitCardErr: Int { get }
var kCardBusCardErr: Int { get }
var kPassCallToChainErr: Int { get }
var kCantConfigureCardErr: Int { get }
var kPostCardEventErr: Int { get }
var kInvalidDeviceNumber: Int { get }
var kUnsupportedVsErr: Int { get }
var kInvalidCSClientErr: Int { get }
var kBadTupleDataErr: Int { get }
var kBadCustomIFIDErr: Int { get }
var kNoIOWindowRequestedErr: Int { get }
var kNoMoreTimerClientsErr: Int { get }
var kNoMoreInterruptSlotsErr: Int { get }
var kNoClientTableErr: Int { get }
var kUnsupportedCardErr: Int { get }
var kNoCardEnablersFoundErr: Int { get }
var kNoEnablerForCardErr: Int { get }
var kNoCompatibleNameErr: Int { get }
var kClientRequestDenied: Int { get }
var kNotReadyErr: Int { get }
var kTooManyIOWindowsErr: Int { get }
var kAlreadySavedStateErr: Int { get }
var kAttemptDupCardEntryErr: Int { get }
var kCardPowerOffErr: Int { get }
var kNotZVCapableErr: Int { get }
var kNoCardBusCISErr: Int { get }
var noDeviceForChannel: Int { get }
var grabTimeComplete: Int { get }
var cantDoThatInCurrentMode: Int { get }
var notEnoughMemoryToGrab: Int { get }
var notEnoughDiskSpaceToGrab: Int { get }
var couldntGetRequiredComponent: Int { get }
var badSGChannel: Int { get }
var seqGrabInfoNotAvailable: Int { get }
var deviceCantMeetRequest: Int { get }
var badControllerHeight: Int { get }
var editingNotAllowed: Int { get }
var controllerBoundsNotExact: Int { get }
var cannotSetWidthOfAttachedController: Int { get }
var controllerHasFixedHeight: Int { get }
var cannotMoveAttachedController: Int { get }
var errAEBadKeyForm: Int { get }
var errAECantHandleClass: Int { get }
var errAECantSupplyType: Int { get }
var errAECantUndo: Int { get }
var errAEEventFailed: Int { get }
var errAEIndexTooLarge: Int { get }
var errAEInTransaction: Int { get }
var errAELocalOnly: Int { get }
var errAENoSuchTransaction: Int { get }
var errAENotAnElement: Int { get }
var errAENotASingleObject: Int { get }
var errAENotModifiable: Int { get }
var errAENoUserSelection: Int { get }
var errAEPrivilegeError: Int { get }
var errAEReadDenied: Int { get }
var errAETypeError: Int { get }
var errAEWriteDenied: Int { get }
var errAENotAnEnumMember: Int { get }
var errAECantPutThatThere: Int { get }
var errAEPropertiesClash: Int { get }
var telGenericError: Int { get }
var telNoErr: Int { get }
var telNoTools: Int { get }
var telBadTermErr: Int { get }
var telBadDNErr: Int { get }
var telBadCAErr: Int { get }
var telBadHandErr: Int { get }
var telBadProcErr: Int { get }
var telCAUnavail: Int { get }
var telNoMemErr: Int { get }
var telNoOpenErr: Int { get }
var telBadHTypeErr: Int { get }
var telHTypeNotSupp: Int { get }
var telBadLevelErr: Int { get }
var telBadVTypeErr: Int { get }
var telVTypeNotSupp: Int { get }
var telBadAPattErr: Int { get }
var telAPattNotSupp: Int { get }
var telBadIndex: Int { get }
var telIndexNotSupp: Int { get }
var telBadStateErr: Int { get }
var telStateNotSupp: Int { get }
var telBadIntExt: Int { get }
var telIntExtNotSupp: Int { get }
var telBadDNDType: Int { get }
var telDNDTypeNotSupp: Int { get }
var telFeatNotSub: Int { get }
var telFeatNotAvail: Int { get }
var telFeatActive: Int { get }
var telFeatNotSupp: Int { get }
var telConfLimitErr: Int { get }
var telConfNoLimit: Int { get }
var telConfErr: Int { get }
var telConfRej: Int { get }
var telTransferErr: Int { get }
var telTransferRej: Int { get }
var telCBErr: Int { get }
var telConfLimitExceeded: Int { get }
var telBadDNType: Int { get }
var telBadPageID: Int { get }
var telBadIntercomID: Int { get }
var telBadFeatureID: Int { get }
var telBadFwdType: Int { get }
var telBadPickupGroupID: Int { get }
var telBadParkID: Int { get }
var telBadSelect: Int { get }
var telBadBearerType: Int { get }
var telBadRate: Int { get }
var telDNTypeNotSupp: Int { get }
var telFwdTypeNotSupp: Int { get }
var telBadDisplayMode: Int { get }
var telDisplayModeNotSupp: Int { get }
var telNoCallbackRef: Int { get }
var telAlreadyOpen: Int { get }
var telStillNeeded: Int { get }
var telTermNotOpen: Int { get }
var telCANotAcceptable: Int { get }
var telCANotRejectable: Int { get }
var telCANotDeflectable: Int { get }
var telPBErr: Int { get }
var telBadFunction: Int { get }
var telNoSuchTool: Int { get }
var telUnknownErr: Int { get }
var telNoCommFolder: Int { get }
var telInitFailed: Int { get }
var telBadCodeResource: Int { get }
var telDeviceNotFound: Int { get }
var telBadProcID: Int { get }
var telValidateFailed: Int { get }
var telAutoAnsNotOn: Int { get }
var telDetAlreadyOn: Int { get }
var telBadSWErr: Int { get }
var telBadSampleRate: Int { get }
var telNotEnoughdspBW: Int { get }
var errTaskNotFound: Int { get }
var pmBusyErr: Int { get }
var pmReplyTOErr: Int { get }
var pmSendStartErr: Int { get }
var pmSendEndErr: Int { get }
var pmRecvStartErr: Int { get }
var pmRecvEndErr: Int { get }
var kPowerHandlerExistsForDeviceErr: Int { get }
var kPowerHandlerNotFoundForDeviceErr: Int { get }
var kPowerHandlerNotFoundForProcErr: Int { get }
var kPowerMgtMessageNotHandled: Int { get }
var kPowerMgtRequestDenied: Int { get }
var kCantReportProcessorTemperatureErr: Int { get }
var kProcessorTempRoutineRequiresMPLib2: Int { get }
var kNoSuchPowerSource: Int { get }
var kBridgeSoftwareRunningCantSleep: Int { get }
var debuggingExecutionContextErr: Int { get }
var debuggingDuplicateSignatureErr: Int { get }
var debuggingDuplicateOptionErr: Int { get }
var debuggingInvalidSignatureErr: Int { get }
var debuggingInvalidOptionErr: Int { get }
var debuggingInvalidNameErr: Int { get }
var debuggingNoCallbackErr: Int { get }
var debuggingNoMatchErr: Int { get }
var kHIDVersionIncompatibleErr: Int { get }
var kHIDDeviceNotReady: Int { get }
var kHIDSuccess: Int { get }
var kHIDInvalidRangePageErr: Int { get }
var kHIDReportIDZeroErr: Int { get }
var kHIDReportCountZeroErr: Int { get }
var kHIDReportSizeZeroErr: Int { get }
var kHIDUnmatchedDesignatorRangeErr: Int { get }
var kHIDUnmatchedStringRangeErr: Int { get }
var kHIDInvertedUsageRangeErr: Int { get }
var kHIDUnmatchedUsageRangeErr: Int { get }
var kHIDInvertedPhysicalRangeErr: Int { get }
var kHIDInvertedLogicalRangeErr: Int { get }
var kHIDBadLogicalMaximumErr: Int { get }
var kHIDBadLogicalMinimumErr: Int { get }
var kHIDUsagePageZeroErr: Int { get }
var kHIDEndOfDescriptorErr: Int { get }
var kHIDNotEnoughMemoryErr: Int { get }
var kHIDBadParameterErr: Int { get }
var kHIDNullPointerErr: Int { get }
var kHIDInvalidReportLengthErr: Int { get }
var kHIDInvalidReportTypeErr: Int { get }
var kHIDBadLogPhysValuesErr: Int { get }
var kHIDIncompatibleReportErr: Int { get }
var kHIDInvalidPreparsedDataErr: Int { get }
var kHIDNotValueArrayErr: Int { get }
var kHIDUsageNotFoundErr: Int { get }
var kHIDValueOutOfRangeErr: Int { get }
var kHIDBufferTooSmallErr: Int { get }
var kHIDNullStateErr: Int { get }
var kHIDBaseError: Int { get }
var kModemOutOfMemory: Int { get }
var kModemPreferencesMissing: Int { get }
var kModemScriptMissing: Int { get }
var kTXNEndIterationErr: Int { get }
var kTXNCannotAddFrameErr: Int { get }
var kTXNInvalidFrameIDErr: Int { get }
var kTXNIllegalToCrossDataBoundariesErr: Int { get }
var kTXNUserCanceledOperationErr: Int { get }
var kTXNBadDefaultFileTypeWarning: Int { get }
var kTXNCannotSetAutoIndentErr: Int { get }
var kTXNRunIndexOutofBoundsErr: Int { get }
var kTXNNoMatchErr: Int { get }
var kTXNAttributeTagInvalidForRunErr: Int { get }
var kTXNSomeOrAllTagsInvalidForRunErr: Int { get }
var kTXNInvalidRunIndex: Int { get }
var kTXNAlreadyInitializedErr: Int { get }
var kTXNCannotTurnTSMOffWhenUsingUnicodeErr: Int { get }
var kTXNCopyNotAllowedInEchoModeErr: Int { get }
var kTXNDataTypeNotAllowedErr: Int { get }
var kTXNATSUIIsNotInstalledErr: Int { get }
var kTXNOutsideOfLineErr: Int { get }
var kTXNOutsideOfFrameErr: Int { get }
var printerStatusOpCodeNotSupportedErr: Int { get }
var errKCNotAvailable: Int { get }
var errKCReadOnly: Int { get }
var errKCAuthFailed: Int { get }
var errKCNoSuchKeychain: Int { get }
var errKCInvalidKeychain: Int { get }
var errKCDuplicateKeychain: Int { get }
var errKCDuplicateCallback: Int { get }
var errKCInvalidCallback: Int { get }
var errKCDuplicateItem: Int { get }
var errKCItemNotFound: Int { get }
var errKCBufferTooSmall: Int { get }
var errKCDataTooLarge: Int { get }
var errKCNoSuchAttr: Int { get }
var errKCInvalidItemRef: Int { get }
var errKCInvalidSearchRef: Int { get }
var errKCNoSuchClass: Int { get }
var errKCNoDefaultKeychain: Int { get }
var errKCInteractionNotAllowed: Int { get }
var errKCReadOnlyAttr: Int { get }
var errKCWrongKCVersion: Int { get }
var errKCKeySizeNotAllowed: Int { get }
var errKCNoStorageModule: Int { get }
var errKCNoCertificateModule: Int { get }
var errKCNoPolicyModule: Int { get }
var errKCInteractionRequired: Int { get }
var errKCDataNotAvailable: Int { get }
var errKCDataNotModifiable: Int { get }
var errKCCreateChainFailed: Int { get }
var kUCOutputBufferTooSmall: Int { get }
var kUCTextBreakLocatorMissingType: Int { get }
var kUCTSNoKeysAddedToObjectErr: Int { get }
var kUCTSSearchListErr: Int { get }
var kUCTokenizerIterationFinished: Int { get }
var kUCTokenizerUnknownLang: Int { get }
var kUCTokenNotFound: Int { get }
var kMPIterationEndErr: Int { get }
var kMPPrivilegedErr: Int { get }
var kMPProcessCreatedErr: Int { get }
var kMPProcessTerminatedErr: Int { get }
var kMPTaskCreatedErr: Int { get }
var kMPTaskBlockedErr: Int { get }
var kMPTaskStoppedErr: Int { get }
var kMPBlueBlockingErr: Int { get }
var kMPDeletedErr: Int { get }
var kMPTimeoutErr: Int { get }
var kMPTaskAbortedErr: Int { get }
var kMPInsufficientResourcesErr: Int { get }
var kMPInvalidIDErr: Int { get }
var kMPNanokernelNeedsMemoryErr: Int { get }
var kCollateAttributesNotFoundErr: Int { get }
var kCollateInvalidOptions: Int { get }
var kCollateMissingUnicodeTableErr: Int { get }
var kCollateUnicodeConvertFailedErr: Int { get }
var kCollatePatternNotFoundErr: Int { get }
var kCollateInvalidChar: Int { get }
var kCollateBufferTooSmall: Int { get }
var kCollateInvalidCollationRef: Int { get }
var kFNSInvalidReferenceErr: Int { get }
var kFNSBadReferenceVersionErr: Int { get }
var kFNSInvalidProfileErr: Int { get }
var kFNSBadProfileVersionErr: Int { get }
var kFNSDuplicateReferenceErr: Int { get }
var kFNSMismatchErr: Int { get }
var kFNSInsufficientDataErr: Int { get }
var kFNSBadFlattenedSizeErr: Int { get }
var kFNSNameNotFoundErr: Int { get }
var kLocalesBufferTooSmallErr: Int { get }
var kLocalesTableFormatErr: Int { get }
var kLocalesDefaultDisplayStatus: Int { get }
var kALMInternalErr: Int { get }
var kALMGroupNotFoundErr: Int { get }
var kALMNoSuchModuleErr: Int { get }
var kALMModuleCommunicationErr: Int { get }
var kALMDuplicateModuleErr: Int { get }
var kALMInstallationErr: Int { get }
var kALMDeferSwitchErr: Int { get }
var kALMRebootFlagsLevelErr: Int { get }
var kALMLocationNotFoundErr: Int { get }
var kSSpInternalErr: Int { get }
var kSSpVersionErr: Int { get }
var kSSpCantInstallErr: Int { get }
var kSSpParallelUpVectorErr: Int { get }
var kSSpScaleToZeroErr: Int { get }
var kNSpInitializationFailedErr: Int { get }
var kNSpAlreadyInitializedErr: Int { get }
var kNSpTopologyNotSupportedErr: Int { get }
var kNSpPipeFullErr: Int { get }
var kNSpHostFailedErr: Int { get }
var kNSpProtocolNotAvailableErr: Int { get }
var kNSpInvalidGameRefErr: Int { get }
var kNSpInvalidParameterErr: Int { get }
var kNSpOTNotPresentErr: Int { get }
var kNSpOTVersionTooOldErr: Int { get }
var kNSpMemAllocationErr: Int { get }
var kNSpAlreadyAdvertisingErr: Int { get }
var kNSpNotAdvertisingErr: Int { get }
var kNSpInvalidAddressErr: Int { get }
var kNSpFreeQExhaustedErr: Int { get }
var kNSpRemovePlayerFailedErr: Int { get }
var kNSpAddressInUseErr: Int { get }
var kNSpFeatureNotImplementedErr: Int { get }
var kNSpNameRequiredErr: Int { get }
var kNSpInvalidPlayerIDErr: Int { get }
var kNSpInvalidGroupIDErr: Int { get }
var kNSpNoPlayersErr: Int { get }
var kNSpNoGroupsErr: Int { get }
var kNSpNoHostVolunteersErr: Int { get }
var kNSpCreateGroupFailedErr: Int { get }
var kNSpAddPlayerFailedErr: Int { get }
var kNSpInvalidDefinitionErr: Int { get }
var kNSpInvalidProtocolRefErr: Int { get }
var kNSpInvalidProtocolListErr: Int { get }
var kNSpTimeoutErr: Int { get }
var kNSpGameTerminatedErr: Int { get }
var kNSpConnectFailedErr: Int { get }
var kNSpSendFailedErr: Int { get }
var kNSpMessageTooBigErr: Int { get }
var kNSpCantBlockErr: Int { get }
var kNSpJoinFailedErr: Int { get }
var kISpInternalErr: Int { get }
var kISpSystemListErr: Int { get }
var kISpBufferToSmallErr: Int { get }
var kISpElementInListErr: Int { get }
var kISpElementNotInListErr: Int { get }
var kISpSystemInactiveErr: Int { get }
var kISpDeviceInactiveErr: Int { get }
var kISpSystemActiveErr: Int { get }
var kISpDeviceActiveErr: Int { get }
var kISpListBusyErr: Int { get }
var kDSpNotInitializedErr: Int { get }
var kDSpSystemSWTooOldErr: Int { get }
var kDSpInvalidContextErr: Int { get }
var kDSpInvalidAttributesErr: Int { get }
var kDSpContextAlreadyReservedErr: Int { get }
var kDSpContextNotReservedErr: Int { get }
var kDSpContextNotFoundErr: Int { get }
var kDSpFrameRateNotReadyErr: Int { get }
var kDSpConfirmSwitchWarning: Int { get }
var kDSpInternalErr: Int { get }
var kDSpStereoContextErr: Int { get }
var kFBCvTwinExceptionErr: Int { get }
var kFBCnoIndexesFound: Int { get }
var kFBCallocFailed: Int { get }
var kFBCbadParam: Int { get }
var kFBCfileNotIndexed: Int { get }
var kFBCbadIndexFile: Int { get }
var kFBCcompactionFailed: Int { get }
var kFBCvalidationFailed: Int { get }
var kFBCindexingFailed: Int { get }
var kFBCcommitFailed: Int { get }
var kFBCdeletionFailed: Int { get }
var kFBCmoveFailed: Int { get }
var kFBCtokenizationFailed: Int { get }
var kFBCmergingFailed: Int { get }
var kFBCindexCreationFailed: Int { get }
var kFBCaccessorStoreFailed: Int { get }
var kFBCaddDocFailed: Int { get }
var kFBCflushFailed: Int { get }
var kFBCindexNotFound: Int { get }
var kFBCnoSearchSession: Int { get }
var kFBCindexingCanceled: Int { get }
var kFBCaccessCanceled: Int { get }
var kFBCindexFileDestroyed: Int { get }
var kFBCindexNotAvailable: Int { get }
var kFBCsearchFailed: Int { get }
var kFBCsomeFilesNotIndexed: Int { get }
var kFBCillegalSessionChange: Int { get }
var kFBCanalysisNotAvailable: Int { get }
var kFBCbadIndexFileVersion: Int { get }
var kFBCsummarizationCanceled: Int { get }
var kFBCindexDiskIOFailed: Int { get }
var kFBCbadSearchSession: Int { get }
var kFBCnoSuchHit: Int { get }
var notAQTVRMovieErr: Int { get }
var constraintReachedErr: Int { get }
var callNotSupportedByNodeErr: Int { get }
var selectorNotSupportedByNodeErr: Int { get }
var invalidNodeIDErr: Int { get }
var invalidViewStateErr: Int { get }
var timeNotInViewErr: Int { get }
var propertyNotSupportedByNodeErr: Int { get }
var settingNotSupportedByNodeErr: Int { get }
var limitReachedErr: Int { get }
var invalidNodeFormatErr: Int { get }
var invalidHotSpotIDErr: Int { get }
var noMemoryNodeFailedInitialize: Int { get }
var streamingNodeNotReadyErr: Int { get }
var qtvrLibraryLoadErr: Int { get }
var qtvrUninitialized: Int { get }
var themeInvalidBrushErr: Int { get }
var themeProcessRegisteredErr: Int { get }
var themeProcessNotRegisteredErr: Int { get }
var themeBadTextColorErr: Int { get }
var themeHasNoAccentsErr: Int { get }
var themeBadCursorIndexErr: Int { get }
var themeScriptFontNotFoundErr: Int { get }
var themeMonitorDepthNotSupportedErr: Int { get }
var themeNoAppropriateBrushErr: Int { get }
var errMessageNotSupported: Int { get }
var errDataNotSupported: Int { get }
var errControlDoesntSupportFocus: Int { get }
var errUnknownControl: Int { get }
var errCouldntSetFocus: Int { get }
var errNoRootControl: Int { get }
var errRootAlreadyExists: Int { get }
var errInvalidPartCode: Int { get }
var errControlsAlreadyExist: Int { get }
var errControlIsNotEmbedder: Int { get }
var errDataSizeMismatch: Int { get }
var errControlHiddenOrDisabled: Int { get }
var errCantEmbedIntoSelf: Int { get }
var errCantEmbedRoot: Int { get }
var errItemNotControl: Int { get }
var controlInvalidDataVersionErr: Int { get }
var controlPropertyInvalid: Int { get }
var controlPropertyNotFoundErr: Int { get }
var controlHandleInvalidErr: Int { get }
var kURLInvalidURLReferenceError: Int { get }
var kURLProgressAlreadyDisplayedError: Int { get }
var kURLDestinationExistsError: Int { get }
var kURLInvalidURLError: Int { get }
var kURLUnsupportedSchemeError: Int { get }
var kURLServerBusyError: Int { get }
var kURLAuthenticationError: Int { get }
var kURLPropertyNotYetKnownError: Int { get }
var kURLUnknownPropertyError: Int { get }
var kURLPropertyBufferTooSmallError: Int { get }
var kURLUnsettablePropertyError: Int { get }
var kURLInvalidCallError: Int { get }
var kURLFileEmptyError: Int { get }
var kURLExtensionFailureError: Int { get }
var kURLInvalidConfigurationError: Int { get }
var kURLAccessNotAvailableError: Int { get }
var kURL68kNotSupportedError: Int { get }
var errCppGeneral: Int { get }
var errCppbad_alloc: Int { get }
var errCppbad_cast: Int { get }
var errCppbad_exception: Int { get }
var errCppbad_typeid: Int { get }
var errCpplogic_error: Int { get }
var errCppdomain_error: Int { get }
var errCppinvalid_argument: Int { get }
var errCpplength_error: Int { get }
var errCppout_of_range: Int { get }
var errCppruntime_error: Int { get }
var errCppoverflow_error: Int { get }
var errCpprange_error: Int { get }
var errCppunderflow_error: Int { get }
var errCppios_base_failure: Int { get }
var errCppLastSystemDefinedError: Int { get }
var errCppLastUserDefinedError: Int { get }
var badComponentInstance: Int { get }
var badComponentSelector: Int { get }
var dsBusError: Int { get }
var dsAddressErr: Int { get }
var dsIllInstErr: Int { get }
var dsZeroDivErr: Int { get }
var dsChkErr: Int { get }
var dsOvflowErr: Int { get }
var dsPrivErr: Int { get }
var dsTraceErr: Int { get }
var dsLineAErr: Int { get }
var dsLineFErr: Int { get }
var dsMiscErr: Int { get }
var dsCoreErr: Int { get }
var dsIrqErr: Int { get }
var dsIOCoreErr: Int { get }
var dsLoadErr: Int { get }
var dsFPErr: Int { get }
var dsNoPackErr: Int { get }
var dsNoPk1: Int { get }
var dsNoPk2: Int { get }
var dsNoPk3: Int { get }
var dsNoPk4: Int { get }
var dsNoPk5: Int { get }
var dsNoPk6: Int { get }
var dsNoPk7: Int { get }
var dsMemFullErr: Int { get }
var dsBadLaunch: Int { get }
var dsFSErr: Int { get }
var dsStknHeap: Int { get }
var negZcbFreeErr: Int { get }
var dsFinderErr: Int { get }
var dsBadSlotInt: Int { get }
var dsBadSANEOpcode: Int { get }
var dsBadPatchHeader: Int { get }
var menuPrgErr: Int { get }
var dsMBarNFnd: Int { get }
var dsHMenuFindErr: Int { get }
var dsWDEFNotFound: Int { get }
var dsCDEFNotFound: Int { get }
var dsMDEFNotFound: Int { get }
var dsNoFPU: Int { get }
var dsNoPatch: Int { get }
var dsBadPatch: Int { get }
var dsParityErr: Int { get }
var dsOldSystem: Int { get }
var ds32BitMode: Int { get }
var dsNeedToWriteBootBlocks: Int { get }
var dsNotEnoughRAMToBoot: Int { get }
var dsBufPtrTooLow: Int { get }
var dsVMDeferredFuncTableFull: Int { get }
var dsVMBadBackingStore: Int { get }
var dsCantHoldSystemHeap: Int { get }
var dsSystemRequiresPowerPC: Int { get }
var dsGibblyMovedToDisabledFolder: Int { get }
var dsUnBootableSystem: Int { get }
var dsMustUseFCBAccessors: Int { get }
var dsMacOSROMVersionTooOld: Int { get }
var dsLostConnectionToNetworkDisk: Int { get }
var dsRAMDiskTooBig: Int { get }
var dsWriteToSupervisorStackGuardPage: Int { get }
var dsReinsert: Int { get }
var shutDownAlert: Int { get }
var dsShutDownOrRestart: Int { get }
var dsSwitchOffOrRestart: Int { get }
var dsForcedQuit: Int { get }
var dsRemoveDisk: Int { get }
var dsDirtyDisk: Int { get }
var dsShutDownOrResume: Int { get }
var dsSCSIWarn: Int { get }
var dsMBSysError: Int { get }
var dsMBFlpySysError: Int { get }
var dsMBATASysError: Int { get }
var dsMBATAPISysError: Int { get }
var dsMBExternFlpySysError: Int { get }
var dsPCCardATASysError: Int { get }
var dsNoExtsMacsBug: Int { get }
var dsNoExtsDisassembler: Int { get }
var dsMacsBugInstalled: Int { get }
var dsDisassemblerInstalled: Int { get }
var dsExtensionsDisabled: Int { get }
var dsGreeting: Int { get }
var dsSysErr: Int { get }
var WDEFNFnd: Int { get }
var CDEFNFnd: Int { get }
var dsNotThe1: Int { get }
var dsBadStartupDisk: Int { get }
var dsSystemFileErr: Int { get }
var dsHD20Installed: Int { get }
var mBarNFnd: Int { get }
var fsDSIntErr: Int { get }
var hMenuFindErr: Int { get }
var userBreak: Int { get }
var strUserBreak: Int { get }
var exUserBreak: Int { get }
var dsBadLibrary: Int { get }
var dsMixedModeFailure: Int { get }
var kPOSIXErrorBase: Int { get }
var kPOSIXErrorEPERM: Int { get }
var kPOSIXErrorENOENT: Int { get }
var kPOSIXErrorESRCH: Int { get }
var kPOSIXErrorEINTR: Int { get }
var kPOSIXErrorEIO: Int { get }
var kPOSIXErrorENXIO: Int { get }
var kPOSIXErrorE2BIG: Int { get }
var kPOSIXErrorENOEXEC: Int { get }
var kPOSIXErrorEBADF: Int { get }
var kPOSIXErrorECHILD: Int { get }
var kPOSIXErrorEDEADLK: Int { get }
var kPOSIXErrorENOMEM: Int { get }
var kPOSIXErrorEACCES: Int { get }
var kPOSIXErrorEFAULT: Int { get }
var kPOSIXErrorENOTBLK: Int { get }
var kPOSIXErrorEBUSY: Int { get }
var kPOSIXErrorEEXIST: Int { get }
var kPOSIXErrorEXDEV: Int { get }
var kPOSIXErrorENODEV: Int { get }
var kPOSIXErrorENOTDIR: Int { get }
var kPOSIXErrorEISDIR: Int { get }
var kPOSIXErrorEINVAL: Int { get }
var kPOSIXErrorENFILE: Int { get }
var kPOSIXErrorEMFILE: Int { get }
var kPOSIXErrorENOTTY: Int { get }
var kPOSIXErrorETXTBSY: Int { get }
var kPOSIXErrorEFBIG: Int { get }
var kPOSIXErrorENOSPC: Int { get }
var kPOSIXErrorESPIPE: Int { get }
var kPOSIXErrorEROFS: Int { get }
var kPOSIXErrorEMLINK: Int { get }
var kPOSIXErrorEPIPE: Int { get }
var kPOSIXErrorEDOM: Int { get }
var kPOSIXErrorERANGE: Int { get }
var kPOSIXErrorEAGAIN: Int { get }
var kPOSIXErrorEINPROGRESS: Int { get }
var kPOSIXErrorEALREADY: Int { get }
var kPOSIXErrorENOTSOCK: Int { get }
var kPOSIXErrorEDESTADDRREQ: Int { get }
var kPOSIXErrorEMSGSIZE: Int { get }
var kPOSIXErrorEPROTOTYPE: Int { get }
var kPOSIXErrorENOPROTOOPT: Int { get }
var kPOSIXErrorEPROTONOSUPPORT: Int { get }
var kPOSIXErrorESOCKTNOSUPPORT: Int { get }
var kPOSIXErrorENOTSUP: Int { get }
var kPOSIXErrorEPFNOSUPPORT: Int { get }
var kPOSIXErrorEAFNOSUPPORT: Int { get }
var kPOSIXErrorEADDRINUSE: Int { get }
var kPOSIXErrorEADDRNOTAVAIL: Int { get }
var kPOSIXErrorENETDOWN: Int { get }
var kPOSIXErrorENETUNREACH: Int { get }
var kPOSIXErrorENETRESET: Int { get }
var kPOSIXErrorECONNABORTED: Int { get }
var kPOSIXErrorECONNRESET: Int { get }
var kPOSIXErrorENOBUFS: Int { get }
var kPOSIXErrorEISCONN: Int { get }
var kPOSIXErrorENOTCONN: Int { get }
var kPOSIXErrorESHUTDOWN: Int { get }
var kPOSIXErrorETOOMANYREFS: Int { get }
var kPOSIXErrorETIMEDOUT: Int { get }
var kPOSIXErrorECONNREFUSED: Int { get }
var kPOSIXErrorELOOP: Int { get }
var kPOSIXErrorENAMETOOLONG: Int { get }
var kPOSIXErrorEHOSTDOWN: Int { get }
var kPOSIXErrorEHOSTUNREACH: Int { get }
var kPOSIXErrorENOTEMPTY: Int { get }
var kPOSIXErrorEPROCLIM: Int { get }
var kPOSIXErrorEUSERS: Int { get }
var kPOSIXErrorEDQUOT: Int { get }
var kPOSIXErrorESTALE: Int { get }
var kPOSIXErrorEREMOTE: Int { get }
var kPOSIXErrorEBADRPC: Int { get }
var kPOSIXErrorERPCMISMATCH: Int { get }
var kPOSIXErrorEPROGUNAVAIL: Int { get }
var kPOSIXErrorEPROGMISMATCH: Int { get }
var kPOSIXErrorEPROCUNAVAIL: Int { get }
var kPOSIXErrorENOLCK: Int { get }
var kPOSIXErrorENOSYS: Int { get }
var kPOSIXErrorEFTYPE: Int { get }
var kPOSIXErrorEAUTH: Int { get }
var kPOSIXErrorENEEDAUTH: Int { get }
var kPOSIXErrorEPWROFF: Int { get }
var kPOSIXErrorEDEVERR: Int { get }
var kPOSIXErrorEOVERFLOW: Int { get }
var kPOSIXErrorEBADEXEC: Int { get }
var kPOSIXErrorEBADARCH: Int { get }
var kPOSIXErrorESHLIBVERS: Int { get }
var kPOSIXErrorEBADMACHO: Int { get }
var kPOSIXErrorECANCELED: Int { get }
var kPOSIXErrorEIDRM: Int { get }
var kPOSIXErrorENOMSG: Int { get }
var kPOSIXErrorEILSEQ: Int { get }
var kPOSIXErrorENOATTR: Int { get }
var kPOSIXErrorEBADMSG: Int { get }
var kPOSIXErrorEMULTIHOP: Int { get }
var kPOSIXErrorENODATA: Int { get }
var kPOSIXErrorENOLINK: Int { get }
var kPOSIXErrorENOSR: Int { get }
var kPOSIXErrorENOSTR: Int { get }
var kPOSIXErrorEPROTO: Int { get }
var kPOSIXErrorETIME: Int { get }
var kPOSIXErrorEOPNOTSUPP: Int { get }
typealias UCKeyOutput = UInt16
typealias UCKeyCharSeq = UInt16
var kUCKeyOutputStateIndexMask: Int { get }
var kUCKeyOutputSequenceIndexMask: Int { get }
var kUCKeyOutputTestForIndexMask: Int { get }
var kUCKeyOutputGetIndexMask: Int { get }
struct UCKeyStateRecord {
  var stateZeroCharData: UCKeyCharSeq
  var stateZeroNextState: UInt16
  var stateEntryCount: UInt16
  var stateEntryFormat: UInt16
  var stateEntryData: (UInt32)
  init()
  init(stateZeroCharData: UCKeyCharSeq, stateZeroNextState: UInt16, stateEntryCount: UInt16, stateEntryFormat: UInt16, stateEntryData: (UInt32))
}
var kUCKeyStateEntryTerminalFormat: Int { get }
var kUCKeyStateEntryRangeFormat: Int { get }
struct UCKeyStateEntryTerminal {
  var curState: UInt16
  var charData: UCKeyCharSeq
  init()
  init(curState: UInt16, charData: UCKeyCharSeq)
}
struct UCKeyStateEntryRange {
  var curStateStart: UInt16
  var curStateRange: UInt8
  var deltaMultiplier: UInt8
  var charData: UCKeyCharSeq
  var nextState: UInt16
  init()
  init(curStateStart: UInt16, curStateRange: UInt8, deltaMultiplier: UInt8, charData: UCKeyCharSeq, nextState: UInt16)
}
struct UCKeyboardTypeHeader {
  var keyboardTypeFirst: UInt32
  var keyboardTypeLast: UInt32
  var keyModifiersToTableNumOffset: UInt32
  var keyToCharTableIndexOffset: UInt32
  var keyStateRecordsIndexOffset: UInt32
  var keyStateTerminatorsOffset: UInt32
  var keySequenceDataIndexOffset: UInt32
  init()
  init(keyboardTypeFirst: UInt32, keyboardTypeLast: UInt32, keyModifiersToTableNumOffset: UInt32, keyToCharTableIndexOffset: UInt32, keyStateRecordsIndexOffset: UInt32, keyStateTerminatorsOffset: UInt32, keySequenceDataIndexOffset: UInt32)
}
struct UCKeyboardLayout {
  var keyLayoutHeaderFormat: UInt16
  var keyLayoutDataVersion: UInt16
  var keyLayoutFeatureInfoOffset: UInt32
  var keyboardTypeCount: UInt32
  var keyboardTypeList: (UCKeyboardTypeHeader)
  init()
  init(keyLayoutHeaderFormat: UInt16, keyLayoutDataVersion: UInt16, keyLayoutFeatureInfoOffset: UInt32, keyboardTypeCount: UInt32, keyboardTypeList: (UCKeyboardTypeHeader))
}
struct UCKeyLayoutFeatureInfo {
  var keyLayoutFeatureInfoFormat: UInt16
  var reserved: UInt16
  var maxOutputStringLength: UInt32
  init()
  init(keyLayoutFeatureInfoFormat: UInt16, reserved: UInt16, maxOutputStringLength: UInt32)
}
struct UCKeyModifiersToTableNum {
  var keyModifiersToTableNumFormat: UInt16
  var defaultTableNum: UInt16
  var modifiersCount: UInt32
  var tableNum: (UInt8)
  init()
  init(keyModifiersToTableNumFormat: UInt16, defaultTableNum: UInt16, modifiersCount: UInt32, tableNum: (UInt8))
}
struct UCKeyToCharTableIndex {
  var keyToCharTableIndexFormat: UInt16
  var keyToCharTableSize: UInt16
  var keyToCharTableCount: UInt32
  var keyToCharTableOffsets: (UInt32)
  init()
  init(keyToCharTableIndexFormat: UInt16, keyToCharTableSize: UInt16, keyToCharTableCount: UInt32, keyToCharTableOffsets: (UInt32))
}
struct UCKeyStateRecordsIndex {
  var keyStateRecordsIndexFormat: UInt16
  var keyStateRecordCount: UInt16
  var keyStateRecordOffsets: (UInt32)
  init()
  init(keyStateRecordsIndexFormat: UInt16, keyStateRecordCount: UInt16, keyStateRecordOffsets: (UInt32))
}
struct UCKeyStateTerminators {
  var keyStateTerminatorsFormat: UInt16
  var keyStateTerminatorCount: UInt16
  var keyStateTerminators: (UCKeyCharSeq)
  init()
  init(keyStateTerminatorsFormat: UInt16, keyStateTerminatorCount: UInt16, keyStateTerminators: (UCKeyCharSeq))
}
struct UCKeySequenceDataIndex {
  var keySequenceDataIndexFormat: UInt16
  var charSequenceCount: UInt16
  var charSequenceOffsets: (UInt16)
  init()
  init(keySequenceDataIndexFormat: UInt16, charSequenceCount: UInt16, charSequenceOffsets: (UInt16))
}
var kUCKeyLayoutHeaderFormat: Int { get }
var kUCKeyLayoutFeatureInfoFormat: Int { get }
var kUCKeyModifiersToTableNumFormat: Int { get }
var kUCKeyToCharTableIndexFormat: Int { get }
var kUCKeyStateRecordsIndexFormat: Int { get }
var kUCKeyStateTerminatorsFormat: Int { get }
var kUCKeySequenceDataIndexFormat: Int { get }
var kUCKeyActionDown: Int { get }
var kUCKeyActionUp: Int { get }
var kUCKeyActionAutoKey: Int { get }
var kUCKeyActionDisplay: Int { get }
var kUCKeyTranslateNoDeadKeysBit: Int { get }
var kUCKeyTranslateNoDeadKeysMask: Int { get }
var kUnicodeCollationClass: Int { get }
typealias CollatorRef = COpaquePointer
typealias UCCollateOptions = UInt32
var kUCCollateComposeInsensitiveMask: Int { get }
var kUCCollateWidthInsensitiveMask: Int { get }
var kUCCollateCaseInsensitiveMask: Int { get }
var kUCCollateDiacritInsensitiveMask: Int { get }
var kUCCollatePunctuationSignificantMask: Int { get }
var kUCCollateDigitsOverrideMask: Int { get }
var kUCCollateDigitsAsNumberMask: Int { get }
var kUCCollateStandardOptions: Int { get }
var kUCCollateTypeHFSExtended: Int { get }
var kUCCollateTypeSourceMask: Int { get }
var kUCCollateTypeShiftBits: Int { get }
var kUCCollateTypeMask: UInt32 { get }
typealias UCCollationValue = UInt32
typealias UCTypeSelectRef = COpaquePointer
typealias UCTypeSelectCompareResult = Int32
typealias UCTSWalkDirection = UInt16
var kUCTSDirectionNext: Int { get }
var kUCTSDirectionPrevious: Int { get }
typealias UCTypeSelectOptions = UInt16
var kUCTSOptionsNoneMask: Int { get }
var kUCTSOptionsReleaseStringMask: Int { get }
var kUCTSOptionsDataIsOrderedMask: Int { get }
typealias IndexToUCStringProcPtr = @convention(c) (UInt32, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Unmanaged<CFString>?>, UnsafeMutablePointer<UCTypeSelectOptions>) -> DarwinBoolean
typealias IndexToUCStringUPP = IndexToUCStringProcPtr
@available(OSX 10.4, *)
func NewIndexToUCStringUPP(userRoutine: IndexToUCStringProcPtr!) -> IndexToUCStringUPP!
@available(OSX 10.4, *)
func DisposeIndexToUCStringUPP(userUPP: IndexToUCStringUPP!)
@available(OSX 10.4, *)
func InvokeIndexToUCStringUPP(index: UInt32, _ listDataPtr: UnsafeMutablePointer<Void>, _ refcon: UnsafeMutablePointer<Void>, _ outString: UnsafeMutablePointer<Unmanaged<CFString>?>, _ tsOptions: UnsafeMutablePointer<UCTypeSelectOptions>, _ userUPP: IndexToUCStringUPP!) -> Bool
var kUCTypeSelectMaxListSize: UInt32 { get }
var kUnicodeTextBreakClass: Int { get }
typealias TextBreakLocatorRef = COpaquePointer
typealias UCTextBreakType = UInt32
var kUCTextBreakCharMask: Int { get }
var kUCTextBreakClusterMask: Int { get }
var kUCTextBreakWordMask: Int { get }
var kUCTextBreakLineMask: Int { get }
var kUCTextBreakParagraphMask: Int { get }
typealias UCTextBreakOptions = UInt32
var kUCTextBreakLeadingEdgeMask: Int { get }
var kUCTextBreakGoBackwardsMask: Int { get }
var kUCTextBreakIterateMask: Int { get }
@available(OSX 10.0, *)
func UCKeyTranslate(keyLayoutPtr: UnsafePointer<UCKeyboardLayout>, _ virtualKeyCode: UInt16, _ keyAction: UInt16, _ modifierKeyState: UInt32, _ keyboardType: UInt32, _ keyTranslateOptions: OptionBits, _ deadKeyState: UnsafeMutablePointer<UInt32>, _ maxStringLength: Int, _ actualStringLength: UnsafeMutablePointer<Int>, _ unicodeString: UnsafeMutablePointer<UniChar>) -> OSStatus
@available(OSX 10.0, *)
func UCCreateCollator(locale: LocaleRef, _ opVariant: LocaleOperationVariant, _ options: UCCollateOptions, _ collatorRef: UnsafeMutablePointer<CollatorRef>) -> OSStatus
@available(OSX 10.0, *)
func UCGetCollationKey(collatorRef: CollatorRef, _ textPtr: UnsafePointer<UniChar>, _ textLength: Int, _ maxKeySize: Int, _ actualKeySize: UnsafeMutablePointer<Int>, _ collationKey: UnsafeMutablePointer<UCCollationValue>) -> OSStatus
@available(OSX 10.0, *)
func UCCompareCollationKeys(key1Ptr: UnsafePointer<UCCollationValue>, _ key1Length: Int, _ key2Ptr: UnsafePointer<UCCollationValue>, _ key2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.0, *)
func UCCompareText(collatorRef: CollatorRef, _ text1Ptr: UnsafePointer<UniChar>, _ text1Length: Int, _ text2Ptr: UnsafePointer<UniChar>, _ text2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.0, *)
func UCDisposeCollator(collatorRef: UnsafeMutablePointer<CollatorRef>) -> OSStatus
@available(OSX 10.0, *)
func UCCompareTextDefault(options: UCCollateOptions, _ text1Ptr: UnsafePointer<UniChar>, _ text1Length: Int, _ text2Ptr: UnsafePointer<UniChar>, _ text2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.0, *)
func UCCompareTextNoLocale(options: UCCollateOptions, _ text1Ptr: UnsafePointer<UniChar>, _ text1Length: Int, _ text2Ptr: UnsafePointer<UniChar>, _ text2Length: Int, _ equivalent: UnsafeMutablePointer<DarwinBoolean>, _ order: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectCreateSelector(locale: LocaleRef, _ opVariant: LocaleOperationVariant, _ options: UCCollateOptions, _ newSelector: UnsafeMutablePointer<UCTypeSelectRef>) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectFlushSelectorData(ref: UCTypeSelectRef) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectReleaseSelector(ref: UnsafeMutablePointer<UCTypeSelectRef>) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectWouldResetBuffer(inRef: UCTypeSelectRef, _ inText: CFString!, _ inEventTime: Double) -> Bool
@available(OSX 10.4, *)
func UCTypeSelectAddKeyToSelector(inRef: UCTypeSelectRef, _ inText: CFString!, _ inEventTime: Double, _ updateFlag: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectCompare(ref: UCTypeSelectRef, _ inText: CFString!, _ result: UnsafeMutablePointer<UCTypeSelectCompareResult>) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectFindItem(ref: UCTypeSelectRef, _ listSize: UInt32, _ listDataPtr: UnsafeMutablePointer<Void>, _ refcon: UnsafeMutablePointer<Void>, _ userUPP: IndexToUCStringUPP!, _ closestItem: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.4, *)
func UCTypeSelectWalkList(ref: UCTypeSelectRef, _ currSelect: CFString!, _ direction: UCTSWalkDirection, _ listSize: UInt32, _ listDataPtr: UnsafeMutablePointer<Void>, _ refcon: UnsafeMutablePointer<Void>, _ userUPP: IndexToUCStringUPP!, _ closestItem: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@typedef	DCSDictionaryRef
	@abstract	Opaque CF object that represents a dictionary file
*/
typealias DCSDictionaryRef = DCSDictionary

/*!
	@function	DCSGetTermRangeInString
	@abstract	Look for a word or a phrase that contains the specified offset in dictionaries
				activated in Dictionary.app preference
	@param		dictionary
				This parameter is not supported for Leopard. You should always pass NULL.
	@param		textString
				Text that contains the word or phrase to look up
	@param		offset
				Specifies a character offset in textString
	@result		Returns a detected range of word or phrase around the specified offset,
				or (kCFNotFound, 0) is returned if any term is not found in active dictionaries.
				The result range can be used as an input parameter of DCSCopyTextDefinition()
				and HIDictionaryWindowShow() in Carbon framework.
*/
@available(OSX 10.5, *)
func DCSGetTermRangeInString(dictionary: DCSDictionary?, _ textString: CFString, _ offset: CFIndex) -> CFRange

/*!
	@function	DCSCopyTextDefinition
	@abstract	Copies definition for a specified range of text
	@param		dictionary
				This parameter is not supported for Leopard. You should always pass NULL.
	@param		textString
				Text that contains the word or phrase to look up
	@param		range
				Range of the target word or phrase in textString
	@result		Returns a definition of the specified term in range in plain text
*/
@available(OSX 10.5, *)
func DCSCopyTextDefinition(dictionary: DCSDictionary?, _ textString: CFString, _ range: CFRange) -> Unmanaged<CFString>?
typealias FSEventStreamCreateFlags = UInt32
var kFSEventStreamCreateFlagNone: Int { get }
var kFSEventStreamCreateFlagUseCFTypes: Int { get }
var kFSEventStreamCreateFlagNoDefer: Int { get }
var kFSEventStreamCreateFlagWatchRoot: Int { get }
@available(OSX 10.6, *)
var kFSEventStreamCreateFlagIgnoreSelf: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamCreateFlagFileEvents: Int { get }
@available(OSX 10.9, *)
var kFSEventStreamCreateFlagMarkSelf: Int { get }
typealias FSEventStreamEventFlags = UInt32
var kFSEventStreamEventFlagNone: Int { get }
var kFSEventStreamEventFlagMustScanSubDirs: Int { get }
var kFSEventStreamEventFlagUserDropped: Int { get }
var kFSEventStreamEventFlagKernelDropped: Int { get }
var kFSEventStreamEventFlagEventIdsWrapped: Int { get }
var kFSEventStreamEventFlagHistoryDone: Int { get }
var kFSEventStreamEventFlagRootChanged: Int { get }
var kFSEventStreamEventFlagMount: Int { get }
var kFSEventStreamEventFlagUnmount: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemCreated: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemRemoved: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemInodeMetaMod: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemRenamed: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemModified: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemFinderInfoMod: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemChangeOwner: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemXattrMod: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemIsFile: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemIsDir: Int { get }
@available(OSX 10.7, *)
var kFSEventStreamEventFlagItemIsSymlink: Int { get }
@available(OSX 10.9, *)
var kFSEventStreamEventFlagOwnEvent: Int { get }
@available(OSX 10.10, *)
var kFSEventStreamEventFlagItemIsHardlink: Int { get }
@available(OSX 10.10, *)
var kFSEventStreamEventFlagItemIsLastHardlink: Int { get }
typealias FSEventStreamEventId = UInt64
var kFSEventStreamEventIdSinceNow: UInt { get }
typealias FSEventStreamRef = COpaquePointer
typealias ConstFSEventStreamRef = COpaquePointer
struct FSEventStreamContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias FSEventStreamCallback = @convention(c) (ConstFSEventStreamRef, UnsafeMutablePointer<Void>, Int, UnsafeMutablePointer<Void>, UnsafePointer<FSEventStreamEventFlags>, UnsafePointer<FSEventStreamEventId>) -> Void
@available(OSX 10.5, *)
func FSEventStreamCreate(allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>, _ pathsToWatch: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef
@available(OSX 10.5, *)
func FSEventStreamCreateRelativeToDevice(allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>, _ deviceToWatch: dev_t, _ pathsToWatchRelativeToDevice: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef
@available(OSX 10.5, *)
func FSEventStreamGetLatestEventId(streamRef: ConstFSEventStreamRef) -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventStreamGetDeviceBeingWatched(streamRef: ConstFSEventStreamRef) -> dev_t
@available(OSX 10.5, *)
func FSEventStreamCopyPathsBeingWatched(streamRef: ConstFSEventStreamRef) -> CFArray
@available(OSX 10.5, *)
func FSEventsGetCurrentEventId() -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventsCopyUUIDForDevice(dev: dev_t) -> CFUUID?
@available(OSX 10.5, *)
func FSEventsGetLastEventIdForDeviceBeforeTime(dev: dev_t, _ time: CFAbsoluteTime) -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventsPurgeEventsForDeviceUpToEventId(dev: dev_t, _ eventId: FSEventStreamEventId) -> Bool
@available(OSX 10.5, *)
func FSEventStreamRetain(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamRelease(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamScheduleWithRunLoop(streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.5, *)
func FSEventStreamUnscheduleFromRunLoop(streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.6, *)
func FSEventStreamSetDispatchQueue(streamRef: FSEventStreamRef, _ q: dispatch_queue_t?)
@available(OSX 10.5, *)
func FSEventStreamInvalidate(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamStart(streamRef: FSEventStreamRef) -> Bool
@available(OSX 10.5, *)
func FSEventStreamFlushAsync(streamRef: FSEventStreamRef) -> FSEventStreamEventId
@available(OSX 10.5, *)
func FSEventStreamFlushSync(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamStop(streamRef: FSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamShow(streamRef: ConstFSEventStreamRef)
@available(OSX 10.5, *)
func FSEventStreamCopyDescription(streamRef: ConstFSEventStreamRef) -> CFString
@available(OSX 10.9, *)
func FSEventStreamSetExclusionPaths(streamRef: FSEventStreamRef, _ pathsToExclude: CFArray) -> Bool
var kGenericDocumentIconResource: Int { get }
var kGenericStationeryIconResource: Int { get }
var kGenericEditionFileIconResource: Int { get }
var kGenericApplicationIconResource: Int { get }
var kGenericDeskAccessoryIconResource: Int { get }
var kGenericFolderIconResource: Int { get }
var kPrivateFolderIconResource: Int { get }
var kFloppyIconResource: Int { get }
var kTrashIconResource: Int { get }
var kGenericRAMDiskIconResource: Int { get }
var kGenericCDROMIconResource: Int { get }
var kDesktopIconResource: Int { get }
var kOpenFolderIconResource: Int { get }
var kGenericHardDiskIconResource: Int { get }
var kGenericFileServerIconResource: Int { get }
var kGenericSuitcaseIconResource: Int { get }
var kGenericMoverObjectIconResource: Int { get }
var kGenericPreferencesIconResource: Int { get }
var kGenericQueryDocumentIconResource: Int { get }
var kGenericExtensionIconResource: Int { get }
var kSystemFolderIconResource: Int { get }
var kHelpIconResource: Int { get }
var kAppleMenuFolderIconResource: Int { get }
var genericDocumentIconResource: Int { get }
var genericStationeryIconResource: Int { get }
var genericEditionFileIconResource: Int { get }
var genericApplicationIconResource: Int { get }
var genericDeskAccessoryIconResource: Int { get }
var genericFolderIconResource: Int { get }
var privateFolderIconResource: Int { get }
var floppyIconResource: Int { get }
var trashIconResource: Int { get }
var genericRAMDiskIconResource: Int { get }
var genericCDROMIconResource: Int { get }
var desktopIconResource: Int { get }
var openFolderIconResource: Int { get }
var genericHardDiskIconResource: Int { get }
var genericFileServerIconResource: Int { get }
var genericSuitcaseIconResource: Int { get }
var genericMoverObjectIconResource: Int { get }
var genericPreferencesIconResource: Int { get }
var genericQueryDocumentIconResource: Int { get }
var genericExtensionIconResource: Int { get }
var systemFolderIconResource: Int { get }
var appleMenuFolderIconResource: Int { get }
var kStartupFolderIconResource: Int { get }
var kOwnedFolderIconResource: Int { get }
var kDropFolderIconResource: Int { get }
var kSharedFolderIconResource: Int { get }
var kMountedFolderIconResource: Int { get }
var kControlPanelFolderIconResource: Int { get }
var kPrintMonitorFolderIconResource: Int { get }
var kPreferencesFolderIconResource: Int { get }
var kExtensionsFolderIconResource: Int { get }
var kFontsFolderIconResource: Int { get }
var kFullTrashIconResource: Int { get }
var startupFolderIconResource: Int { get }
var ownedFolderIconResource: Int { get }
var dropFolderIconResource: Int { get }
var sharedFolderIconResource: Int { get }
var mountedFolderIconResource: Int { get }
var controlPanelFolderIconResource: Int { get }
var printMonitorFolderIconResource: Int { get }
var preferencesFolderIconResource: Int { get }
var extensionsFolderIconResource: Int { get }
var fontsFolderIconResource: Int { get }
var fullTrashIconResource: Int { get }
typealias IconRef = COpaquePointer
var kSystemIconsCreator: Int { get }
var kClipboardIcon: Int { get }
var kClippingUnknownTypeIcon: Int { get }
var kClippingPictureTypeIcon: Int { get }
var kClippingTextTypeIcon: Int { get }
var kClippingSoundTypeIcon: Int { get }
var kDesktopIcon: Int { get }
var kFinderIcon: Int { get }
var kComputerIcon: Int { get }
var kFontSuitcaseIcon: Int { get }
var kFullTrashIcon: Int { get }
var kGenericApplicationIcon: Int { get }
var kGenericCDROMIcon: Int { get }
var kGenericControlPanelIcon: Int { get }
var kGenericControlStripModuleIcon: Int { get }
var kGenericComponentIcon: Int { get }
var kGenericDeskAccessoryIcon: Int { get }
var kGenericDocumentIcon: Int { get }
var kGenericEditionFileIcon: Int { get }
var kGenericExtensionIcon: Int { get }
var kGenericFileServerIcon: Int { get }
var kGenericFontIcon: Int { get }
var kGenericFontScalerIcon: Int { get }
var kGenericFloppyIcon: Int { get }
var kGenericHardDiskIcon: Int { get }
var kGenericIDiskIcon: Int { get }
var kGenericRemovableMediaIcon: Int { get }
var kGenericMoverObjectIcon: Int { get }
var kGenericPCCardIcon: Int { get }
var kGenericPreferencesIcon: Int { get }
var kGenericQueryDocumentIcon: Int { get }
var kGenericRAMDiskIcon: Int { get }
var kGenericSharedLibaryIcon: Int { get }
var kGenericStationeryIcon: Int { get }
var kGenericSuitcaseIcon: Int { get }
var kGenericURLIcon: Int { get }
var kGenericWORMIcon: Int { get }
var kInternationalResourcesIcon: Int { get }
var kKeyboardLayoutIcon: Int { get }
var kSoundFileIcon: Int { get }
var kSystemSuitcaseIcon: Int { get }
var kTrashIcon: Int { get }
var kTrueTypeFontIcon: Int { get }
var kTrueTypeFlatFontIcon: Int { get }
var kTrueTypeMultiFlatFontIcon: Int { get }
var kUserIDiskIcon: Int { get }
var kUnknownFSObjectIcon: Int { get }
var kInternationResourcesIcon: Int { get }
var kInternetLocationHTTPIcon: Int { get }
var kInternetLocationFTPIcon: Int { get }
var kInternetLocationAppleShareIcon: Int { get }
var kInternetLocationAppleTalkZoneIcon: Int { get }
var kInternetLocationFileIcon: Int { get }
var kInternetLocationMailIcon: Int { get }
var kInternetLocationNewsIcon: Int { get }
var kInternetLocationNSLNeighborhoodIcon: Int { get }
var kInternetLocationGenericIcon: Int { get }
var kGenericFolderIcon: Int { get }
var kDropFolderIcon: Int { get }
var kMountedFolderIcon: Int { get }
var kOpenFolderIcon: Int { get }
var kOwnedFolderIcon: Int { get }
var kPrivateFolderIcon: Int { get }
var kSharedFolderIcon: Int { get }
var kSharingPrivsNotApplicableIcon: Int { get }
var kSharingPrivsReadOnlyIcon: Int { get }
var kSharingPrivsReadWriteIcon: Int { get }
var kSharingPrivsUnknownIcon: Int { get }
var kSharingPrivsWritableIcon: Int { get }
var kUserFolderIcon: Int { get }
var kWorkgroupFolderIcon: Int { get }
var kGuestUserIcon: Int { get }
var kUserIcon: Int { get }
var kOwnerIcon: Int { get }
var kGroupIcon: Int { get }
var kAppearanceFolderIcon: Int { get }
var kAppleExtrasFolderIcon: Int { get }
var kAppleMenuFolderIcon: Int { get }
var kApplicationsFolderIcon: Int { get }
var kApplicationSupportFolderIcon: Int { get }
var kAssistantsFolderIcon: Int { get }
var kColorSyncFolderIcon: Int { get }
var kContextualMenuItemsFolderIcon: Int { get }
var kControlPanelDisabledFolderIcon: Int { get }
var kControlPanelFolderIcon: Int { get }
var kControlStripModulesFolderIcon: Int { get }
var kDocumentsFolderIcon: Int { get }
var kExtensionsDisabledFolderIcon: Int { get }
var kExtensionsFolderIcon: Int { get }
var kFavoritesFolderIcon: Int { get }
var kFontsFolderIcon: Int { get }
var kHelpFolderIcon: Int { get }
var kInternetFolderIcon: Int { get }
var kInternetPlugInFolderIcon: Int { get }
var kInternetSearchSitesFolderIcon: Int { get }
var kLocalesFolderIcon: Int { get }
var kMacOSReadMeFolderIcon: Int { get }
var kPublicFolderIcon: Int { get }
var kPreferencesFolderIcon: Int { get }
var kPrinterDescriptionFolderIcon: Int { get }
var kPrinterDriverFolderIcon: Int { get }
var kPrintMonitorFolderIcon: Int { get }
var kRecentApplicationsFolderIcon: Int { get }
var kRecentDocumentsFolderIcon: Int { get }
var kRecentServersFolderIcon: Int { get }
var kScriptingAdditionsFolderIcon: Int { get }
var kSharedLibrariesFolderIcon: Int { get }
var kScriptsFolderIcon: Int { get }
var kShutdownItemsDisabledFolderIcon: Int { get }
var kShutdownItemsFolderIcon: Int { get }
var kSpeakableItemsFolder: Int { get }
var kStartupItemsDisabledFolderIcon: Int { get }
var kStartupItemsFolderIcon: Int { get }
var kSystemExtensionDisabledFolderIcon: Int { get }
var kSystemFolderIcon: Int { get }
var kTextEncodingsFolderIcon: Int { get }
var kUsersFolderIcon: Int { get }
var kUtilitiesFolderIcon: Int { get }
var kVoicesFolderIcon: Int { get }
var kAppleScriptBadgeIcon: Int { get }
var kLockedBadgeIcon: Int { get }
var kMountedBadgeIcon: Int { get }
var kSharedBadgeIcon: Int { get }
var kAliasBadgeIcon: Int { get }
var kAlertCautionBadgeIcon: Int { get }
var kAlertNoteIcon: Int { get }
var kAlertCautionIcon: Int { get }
var kAlertStopIcon: Int { get }
var kAppleTalkIcon: Int { get }
var kAppleTalkZoneIcon: Int { get }
var kAFPServerIcon: Int { get }
var kFTPServerIcon: Int { get }
var kHTTPServerIcon: Int { get }
var kGenericNetworkIcon: Int { get }
var kIPFileServerIcon: Int { get }
var kToolbarCustomizeIcon: Int { get }
var kToolbarDeleteIcon: Int { get }
var kToolbarFavoritesIcon: Int { get }
var kToolbarHomeIcon: Int { get }
var kToolbarAdvancedIcon: Int { get }
var kToolbarInfoIcon: Int { get }
var kToolbarLabelsIcon: Int { get }
var kToolbarApplicationsFolderIcon: Int { get }
var kToolbarDocumentsFolderIcon: Int { get }
var kToolbarMovieFolderIcon: Int { get }
var kToolbarMusicFolderIcon: Int { get }
var kToolbarPicturesFolderIcon: Int { get }
var kToolbarPublicFolderIcon: Int { get }
var kToolbarDesktopFolderIcon: Int { get }
var kToolbarDownloadsFolderIcon: Int { get }
var kToolbarLibraryFolderIcon: Int { get }
var kToolbarUtilitiesFolderIcon: Int { get }
var kToolbarSitesFolderIcon: Int { get }
var kAppleLogoIcon: Int { get }
var kAppleMenuIcon: Int { get }
var kBackwardArrowIcon: Int { get }
var kFavoriteItemsIcon: Int { get }
var kForwardArrowIcon: Int { get }
var kGridIcon: Int { get }
var kHelpIcon: Int { get }
var kKeepArrangedIcon: Int { get }
var kLockedIcon: Int { get }
var kNoFilesIcon: Int { get }
var kNoFolderIcon: Int { get }
var kNoWriteIcon: Int { get }
var kProtectedApplicationFolderIcon: Int { get }
var kProtectedSystemFolderIcon: Int { get }
var kRecentItemsIcon: Int { get }
var kShortcutIcon: Int { get }
var kSortAscendingIcon: Int { get }
var kSortDescendingIcon: Int { get }
var kUnlockedIcon: Int { get }
var kConnectToIcon: Int { get }
var kGenericWindowIcon: Int { get }
var kQuestionMarkIcon: Int { get }
var kDeleteAliasIcon: Int { get }
var kEjectMediaIcon: Int { get }
var kBurningIcon: Int { get }
var kRightContainerArrowIcon: Int { get }
typealias IconServicesUsageFlags = UInt32
var kIconServicesNormalUsageFlag: Int { get }
var kIconServicesNoBadgeFlag: Int { get }
var kIconServicesUpdateIfNeededFlag: Int { get }
var kIconServicesCatalogInfoMask: Int { get }
@available(OSX 10.0, *)
func GetIconRefOwners(theIconRef: IconRef, _ owners: UnsafeMutablePointer<UInt16>) -> OSErr
@available(OSX 10.0, *)
func AcquireIconRef(theIconRef: IconRef) -> OSErr
@available(OSX 10.0, *)
func ReleaseIconRef(theIconRef: IconRef) -> OSErr
@available(OSX 10.0, *)
func GetIconRef(vRefNum: Int16, _ creator: OSType, _ iconType: OSType, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
@available(OSX 10.0, *)
func GetIconRefFromFolder(vRefNum: Int16, _ parentFolderID: Int32, _ folderID: Int32, _ attributes: Int8, _ accessPrivileges: Int8, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
@available(OSX 10.1, *)
func GetIconRefFromFileInfo(inRef: UnsafePointer<FSRef>, _ inFileNameLength: Int, _ inFileName: UnsafePointer<UniChar>, _ inWhichInfo: FSCatalogInfoBitmap, _ inCatalogInfo: UnsafePointer<FSCatalogInfo>, _ inUsageFlags: IconServicesUsageFlags, _ outIconRef: UnsafeMutablePointer<IconRef>, _ outLabel: UnsafeMutablePointer<Int16>) -> OSStatus
@available(OSX 10.3, *)
func GetIconRefFromTypeInfo(inCreator: OSType, _ inType: OSType, _ inExtension: CFString!, _ inMIMEType: CFString!, _ inUsageFlags: IconServicesUsageFlags, _ outIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
@available(OSX 10.3, *)
func GetIconRefFromIconFamilyPtr(inIconFamilyPtr: UnsafePointer<IconFamilyResource>, _ inSize: Size, _ outIconRef: UnsafeMutablePointer<IconRef>) -> OSStatus
@available(OSX 10.5, *)
func GetIconRefFromComponent(inComponent: Component, _ outIconRef: UnsafeMutablePointer<IconRef>) -> OSStatus
@available(OSX 10.0, *)
func RegisterIconRefFromIconFamily(creator: OSType, _ iconType: OSType, _ iconFamily: IconFamilyHandle, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
@available(OSX 10.1, *)
func RegisterIconRefFromFSRef(creator: OSType, _ iconType: OSType, _ iconFile: UnsafePointer<FSRef>, _ theIconRef: UnsafeMutablePointer<IconRef>) -> OSStatus
@available(OSX 10.0, *)
func UnregisterIconRef(creator: OSType, _ iconType: OSType) -> OSErr
@available(OSX 10.0, *)
func UpdateIconRef(theIconRef: IconRef) -> OSErr
@available(OSX 10.0, *)
func OverrideIconRef(oldIconRef: IconRef, _ newIconRef: IconRef) -> OSErr
@available(OSX 10.0, *)
func RemoveIconRefOverride(theIconRef: IconRef) -> OSErr
@available(OSX 10.0, *)
func CompositeIconRef(backgroundIconRef: IconRef, _ foregroundIconRef: IconRef, _ compositeIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
@available(OSX 10.0, *)
func IsIconRefComposite(compositeIconRef: IconRef, _ backgroundIconRef: UnsafeMutablePointer<IconRef>, _ foregroundIconRef: UnsafeMutablePointer<IconRef>) -> OSErr
@available(OSX 10.0, *)
func IsValidIconRef(theIconRef: IconRef) -> Bool
@available(OSX 10.3, *)
func IsDataAvailableInIconRef(inIconKind: OSType, _ inIconRef: IconRef) -> Bool
@available(OSX 10.0, *)
func SetCustomIconsEnabled(vRefNum: Int16, _ enableCustomIcons: Bool) -> OSErr
@available(OSX 10.0, *)
func GetCustomIconsEnabled(vRefNum: Int16, _ customIconsEnabled: UnsafeMutablePointer<DarwinBoolean>) -> OSErr
@available(OSX 10.1, *)
func ReadIconFromFSRef(ref: UnsafePointer<FSRef>, _ iconFamily: UnsafeMutablePointer<IconFamilyHandle>) -> OSStatus
var kLSAppInTrashErr: OSStatus { get }
var kLSExecutableIncorrectFormat: OSStatus { get }
var kLSAttributeNotFoundErr: OSStatus { get }
var kLSAttributeNotSettableErr: OSStatus { get }
var kLSIncompatibleApplicationVersionErr: OSStatus { get }
var kLSNoRosettaEnvironmentErr: OSStatus { get }
var kLSUnknownErr: OSStatus { get }
var kLSNotAnApplicationErr: OSStatus { get }
var kLSNotInitializedErr: OSStatus { get }
var kLSDataUnavailableErr: OSStatus { get }
var kLSApplicationNotFoundErr: OSStatus { get }
var kLSUnknownTypeErr: OSStatus { get }
var kLSDataTooOldErr: OSStatus { get }
var kLSDataErr: OSStatus { get }
var kLSLaunchInProgressErr: OSStatus { get }
var kLSNotRegisteredErr: OSStatus { get }
var kLSAppDoesNotClaimTypeErr: OSStatus { get }
var kLSAppDoesNotSupportSchemeWarning: OSStatus { get }
var kLSServerCommunicationErr: OSStatus { get }
var kLSCannotSetInfoErr: OSStatus { get }
var kLSNoRegistrationInfoErr: OSStatus { get }
var kLSIncompatibleSystemVersionErr: OSStatus { get }
var kLSNoLaunchPermissionErr: OSStatus { get }
var kLSNoExecutableErr: OSStatus { get }
var kLSNoClassicEnvironmentErr: OSStatus { get }
var kLSMultipleSessionsNotSupportedErr: OSStatus { get }
struct LSRolesMask : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var None: LSRolesMask { get }
  static var Viewer: LSRolesMask { get }
  static var Editor: LSRolesMask { get }
  static var Shell: LSRolesMask { get }
  static var All: LSRolesMask { get }
}
var kLSUnknownType: OSType { get }
var kLSUnknownCreator: OSType { get }
struct LSAcceptanceFlags : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var AcceptDefault: LSAcceptanceFlags { get }
  static var AcceptAllowLoginUI: LSAcceptanceFlags { get }
}
@available(OSX 10.10, *)
func LSCopyDefaultApplicationURLForURL(inURL: CFURL, _ inRoleMask: LSRolesMask, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>?
@available(OSX 10.10, *)
func LSCopyDefaultApplicationURLForContentType(inContentType: CFString, _ inRoleMask: LSRolesMask, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>?
@available(OSX 10.10, *)
func LSCopyApplicationURLsForBundleIdentifier(inBundleIdentifier: CFString, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func LSCopyApplicationURLsForURL(inURL: CFURL, _ inRoleMask: LSRolesMask) -> Unmanaged<CFArray>?
@available(OSX 10.0, *)
func LSCanURLAcceptURL(inItemURL: CFURL, _ inTargetURL: CFURL, _ inRoleMask: LSRolesMask, _ inFlags: LSAcceptanceFlags, _ outAcceptsItem: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func LSRegisterURL(inURL: CFURL, _ inUpdate: Bool) -> OSStatus
@available(OSX 10.4, *)
func LSCopyDefaultRoleHandlerForContentType(inContentType: CFString, _ inRole: LSRolesMask) -> Unmanaged<CFString>?
@available(OSX 10.4, *)
func LSCopyAllRoleHandlersForContentType(inContentType: CFString, _ inRole: LSRolesMask) -> Unmanaged<CFArray>?
@available(OSX 10.4, *)
func LSSetDefaultRoleHandlerForContentType(inContentType: CFString, _ inRole: LSRolesMask, _ inHandlerBundleID: CFString) -> OSStatus
@available(OSX 10.4, *)
func LSCopyDefaultHandlerForURLScheme(inURLScheme: CFString) -> Unmanaged<CFString>?
@available(OSX 10.4, *)
func LSCopyAllHandlersForURLScheme(inURLScheme: CFString) -> Unmanaged<CFArray>?
@available(OSX 10.4, *)
func LSSetDefaultHandlerForURLScheme(inURLScheme: CFString, _ inHandlerBundleID: CFString) -> OSStatus
struct LSRequestedInfo : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  @available(OSX, deprecated=10.11, message="Use CFURLCopyPathExtension(), -[NSURL pathExtension], or -[NSString pathExtension] instead.")
  static var RequestExtension: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Creator codes are deprecated on OS X.")
  static var RequestTypeCreator: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
  static var RequestBasicFlagsOnly: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
  static var RequestAppTypeFlags: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
  static var RequestAllFlags: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
  static var RequestIconAndKind: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
  static var RequestExtensionFlagsOnly: LSRequestedInfo { get }
  @available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
  static var RequestAllInfo: LSRequestedInfo { get }
}
struct LSItemInfoFlags : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsRegularFileKey or NSURLIsRegularFileKey instead.")
  static var IsPlainFile: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsPackageKey or NSURLIsPackageKey instead.")
  static var IsPackage: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsApplicationKey or NSURLIsApplicationKey instead.")
  static var IsApplication: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsDirectoryKey or NSURLIsDirectoryKey instead.")
  static var IsContainer: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsAliasFileKey or NSURLIsAliasFileKey instead.")
  static var IsAliasFile: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsSymbolicLinkKey or NSURLIsSymbolicLinkKey.")
  static var IsSymlink: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsHiddenKey or NSURLIsHiddenKey instead.")
  static var IsInvisible: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var IsNativeApp: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var IsClassicApp: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var AppPrefersNative: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var AppPrefersClassic: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLApplicationIsScriptableKey or NSURLApplicationIsScriptableKey instead.")
  static var AppIsScriptable: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLIsVolumeKey or NSURLIsVolumeKey instead.")
  static var IsVolume: LSItemInfoFlags { get }
  @available(OSX, deprecated=10.11, message="Use the URL resource property kCFURLHasHiddenExtensionKey or NSURLHasHiddenExtensionKey instead.")
  static var ExtensionIsHidden: LSItemInfoFlags { get }
}
@available(OSX, deprecated=10.11, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
struct LSItemInfoRecord {
  var flags: LSItemInfoFlags
  var filetype: OSType
  var creator: OSType
  var `extension`: Unmanaged<CFString>!
  init()
  init(flags: LSItemInfoFlags, filetype: OSType, creator: OSType, `extension`: Unmanaged<CFString>!)
}
@available(OSX, introduced=10.0, deprecated=10.11, message="Use URL resource properties instead.")
func LSCopyItemInfoForURL(inURL: CFURL!, _ inWhichInfo: LSRequestedInfo, _ outItemInfo: UnsafeMutablePointer<LSItemInfoRecord>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use URL resource properties instead.")
func LSCopyItemInfoForRef(inItemRef: UnsafePointer<FSRef>, _ inWhichInfo: LSRequestedInfo, _ outItemInfo: UnsafeMutablePointer<LSItemInfoRecord>) -> OSStatus
@available(OSX, introduced=10.1, deprecated=10.11, message="Use CFURLCopyPathExtension(), -[NSURL pathExtension], or -[NSString pathExtension] instead.")
func LSGetExtensionInfo(inNameLen: Int, _ inNameBuffer: UnsafePointer<UniChar>, _ outExtStartIndex: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX, introduced=10.1, deprecated=10.10, message="Use the URL resource property kCFURLLocalizedNameKey or NSURLLocalizedNameKey instead.")
func LSCopyDisplayNameForRef(inRef: UnsafePointer<FSRef>, _ outDisplayName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX, introduced=10.1, deprecated=10.11, message="Use the URL resource property kCFURLLocalizedNameKey or NSURLLocalizedNameKey instead.")
func LSCopyDisplayNameForURL(inURL: CFURL!, _ outDisplayName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX, introduced=10.1, deprecated=10.10, message="Use the URL resource property kCFURLHasHiddenExtensionKey or NSURLHasHiddenExtensionKey instead.")
func LSSetExtensionHiddenForRef(inRef: UnsafePointer<FSRef>, _ inHide: Bool) -> OSStatus
@available(OSX, introduced=10.1, deprecated=10.11, message="Use the URL resource property kCFURLHasHiddenExtensionKey or NSURLHasHiddenExtensionKey instead.")
func LSSetExtensionHiddenForURL(inURL: CFURL!, _ inHide: Bool) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use the URL resource property kCFURLLocalizedTypeDescriptionKey or NSURLLocalizedTypeDescriptionKey instead.")
func LSCopyKindStringForRef(inFSRef: UnsafePointer<FSRef>, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.11, message="Use the URL resource property kCFURLLocalizedTypeDescriptionKey or NSURLLocalizedTypeDescriptionKey instead.")
func LSCopyKindStringForURL(inURL: CFURL!, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX, introduced=10.2, deprecated=10.10, message="Use UTTypeCopyDescription instead.")
func LSCopyKindStringForTypeInfo(inType: OSType, _ inCreator: OSType, _ inExtension: CFString!, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX, introduced=10.2, deprecated=10.10, message="Use UTTypeCopyDescription instead.")
func LSCopyKindStringForMIMEType(inMIMEType: CFString!, _ outKindString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSCopyDefaultApplicationURLForURL instead.")
func LSGetApplicationForItem(inItemRef: UnsafePointer<FSRef>, _ inRoleMask: LSRolesMask, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSCopyDefaultApplicationURLForContentType instead.")
func LSGetApplicationForInfo(inType: OSType, _ inCreator: OSType, _ inExtension: CFString!, _ inRoleMask: LSRolesMask, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX, introduced=10.2, deprecated=10.10, message="Use LSCopyDefaultApplicationURLForContentType instead.")
func LSCopyApplicationForMIMEType(inMIMEType: CFString!, _ inRoleMask: LSRolesMask, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSCopyDefaultApplicationURLForURL instead.")
func LSGetApplicationForURL(inURL: CFURL!, _ inRoleMask: LSRolesMask, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSCopyApplicationURLsForBundleIdentifier instead.")
func LSFindApplicationForInfo(inCreator: OSType, _ inBundleID: CFString!, _ inName: CFString!, _ outAppRef: UnsafeMutablePointer<FSRef>, _ outAppURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSCanURLAcceptURL instead.")
func LSCanRefAcceptItem(inItemFSRef: UnsafePointer<FSRef>, _ inTargetRef: UnsafePointer<FSRef>, _ inRoleMask: LSRolesMask, _ inFlags: LSAcceptanceFlags, _ outAcceptsItem: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX, introduced=10.3, deprecated=10.10, message="Use LSRegisterURL instead.")
func LSRegisterFSRef(inRef: UnsafePointer<FSRef>, _ inUpdate: Bool) -> OSStatus
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLTypeIdentifierKey or NSURLTypeIdentifierKey instead.")
let kLSItemContentType: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLTypeIdentifierKey or NSURLTypeIdentifierKey to get the file's UTI instead.")
let kLSItemFileType: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLTypeIdentifierKey or NSURLTypeIdentifierKey to get the file's UTI instead.")
let kLSItemFileCreator: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFURLCopyPathExtension or -[NSURL pathExtension] instead.")
let kLSItemExtension: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLLocalizedNameKey or NSURLLocalizedNameKey instead.")
let kLSItemDisplayName: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLLocalizedTypeDescriptionKey or NSURLLocalizedTypeDescriptionKey instead.")
let kLSItemDisplayKind: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Instead, resolve the desired role handler for the file, then use the URL resource property kCFURLLocalizedNameKey or NSURLLocalizedNameKey on the role handler's URL.")
let kLSItemRoleHandlerDisplayName: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLIsHiddenKey or NSURLIsHiddenKey instead.")
let kLSItemIsInvisible: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use the URL resource property kCFURLHasHiddenExtensionKey or NSURLHasHiddenExtensionKey instead.")
let kLSItemExtensionIsHidden: CFString!
@available(OSX, introduced=10.5, deprecated=10.10, message="Use the URL resource property kCFURLQuarantinePropertiesKey or NSURLQuarantinePropertiesKey instead.")
let kLSItemQuarantineProperties: CFString!
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFURLCopyResourcePropertyForKey or -[NSURL getResourceValue:forKey:error:] instead.")
func LSCopyItemAttribute(inItem: UnsafePointer<FSRef>, _ inRoles: LSRolesMask, _ inAttributeName: CFString!, _ outValue: UnsafeMutablePointer<Unmanaged<AnyObject>?>) -> OSStatus
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFURLCopyResourcePropertiesForKeys or -[NSURL resourceValuesForKeys:error:] instead.")
func LSCopyItemAttributes(inItem: UnsafePointer<FSRef>, _ inRoles: LSRolesMask, _ inAttributeNames: CFArray!, _ outValues: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.10, message="Use CFURLSetResourcePropertyForKey or -[NSURL setResourceValue:forKey:error:] instead.")
func LSSetItemAttribute(inItem: UnsafePointer<FSRef>, _ inRoles: LSRolesMask, _ inAttributeName: CFString!, _ inValue: AnyObject!) -> OSStatus
struct LSHandlerOptions : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  @available(OSX, introduced=10.4, deprecated=10.11, message="Creator codes are deprecated on OS X.")
  static var Default: LSHandlerOptions { get }
  @available(OSX, introduced=10.4, deprecated=10.11, message="Creator codes are deprecated on OS X.")
  static var IgnoreCreator: LSHandlerOptions { get }
}
@available(OSX, introduced=10.4, deprecated=10.11, message="Creator codes are deprecated on OS X.")
func LSGetHandlerOptionsForContentType(inContentType: CFString!) -> LSHandlerOptions
@available(OSX, introduced=10.4, deprecated=10.11, message="Creator codes are deprecated on OS X.")
func LSSetHandlerOptionsForContentType(inContentType: CFString!, _ inOptions: LSHandlerOptions) -> OSStatus
struct LSLaunchFlags : OptionSetType {
  init(rawValue: OptionBits)
  let rawValue: OptionBits
  static var Defaults: LSLaunchFlags { get }
  static var AndPrint: LSLaunchFlags { get }
  static var Reserved2: LSLaunchFlags { get }
  static var Reserved3: LSLaunchFlags { get }
  static var Reserved4: LSLaunchFlags { get }
  static var Reserved5: LSLaunchFlags { get }
  static var AndDisplayErrors: LSLaunchFlags { get }
  static var InhibitBGOnly: LSLaunchFlags { get }
  static var DontAddToRecents: LSLaunchFlags { get }
  static var DontSwitch: LSLaunchFlags { get }
  static var NoParams: LSLaunchFlags { get }
  static var Async: LSLaunchFlags { get }
  static var NewInstance: LSLaunchFlags { get }
  static var AndHide: LSLaunchFlags { get }
  static var AndHideOthers: LSLaunchFlags { get }
  static var HasUntrustedContents: LSLaunchFlags { get }
}
@available(OSX 10.0, *)
struct LSLaunchURLSpec {
  var appURL: Unmanaged<CFURL>?
  var itemURLs: Unmanaged<CFArray>?
  var passThruParams: UnsafePointer<AEDesc>
  var launchFlags: LSLaunchFlags
  var asyncRefCon: UnsafeMutablePointer<Void>
  init()
  init(appURL: Unmanaged<CFURL>?, itemURLs: Unmanaged<CFArray>?, passThruParams: UnsafePointer<AEDesc>, launchFlags: LSLaunchFlags, asyncRefCon: UnsafeMutablePointer<Void>)
}
@available(OSX 10.0, *)
func LSOpenCFURLRef(inURL: CFURL, _ outLaunchedURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.0, *)
func LSOpenFromURLSpec(inLaunchSpec: UnsafePointer<LSLaunchURLSpec>, _ outLaunchedURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.11, message="The Classic environment is no longer supported.")
var kLSLaunchStartClassic: Int { get }
@available(OSX, introduced=10.0, deprecated=10.11, message="The Classic environment is no longer supported.")
var kLSLaunchInClassic: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSLaunchURLSpec instead.")
struct LSLaunchFSRefSpec {
  var appRef: UnsafePointer<FSRef>
  var numDocs: Int
  var itemRefs: UnsafePointer<FSRef>
  var passThruParams: UnsafePointer<AEDesc>
  var launchFlags: LSLaunchFlags
  var asyncRefCon: UnsafeMutablePointer<Void>
  init()
  init(appRef: UnsafePointer<FSRef>, numDocs: Int, itemRefs: UnsafePointer<FSRef>, passThruParams: UnsafePointer<AEDesc>, launchFlags: LSLaunchFlags, asyncRefCon: UnsafeMutablePointer<Void>)
}
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSOpenCFURLRef or -[NSWorkspace openURL:] instead.")
func LSOpenFSRef(inRef: UnsafePointer<FSRef>, _ outLaunchedRef: UnsafeMutablePointer<FSRef>) -> OSStatus
@available(OSX, introduced=10.0, deprecated=10.10, message="Use LSOpenFromURLSpec or NSWorkspace instead.")
func LSOpenFromRefSpec(inLaunchSpec: UnsafePointer<LSLaunchFSRefSpec>, _ outLaunchedRef: UnsafeMutablePointer<FSRef>) -> OSStatus
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSWorkspace instead.")
struct LSApplicationParameters {
  var version: CFIndex
  var flags: LSLaunchFlags
  var application: UnsafePointer<FSRef>
  var asyncLaunchRefCon: UnsafeMutablePointer<Void>
  var environment: Unmanaged<CFDictionary>!
  var argv: Unmanaged<CFArray>!
  var initialEvent: UnsafeMutablePointer<AppleEvent>
  init()
  init(version: CFIndex, flags: LSLaunchFlags, application: UnsafePointer<FSRef>, asyncLaunchRefCon: UnsafeMutablePointer<Void>, environment: Unmanaged<CFDictionary>!, argv: Unmanaged<CFArray>!, initialEvent: UnsafeMutablePointer<AppleEvent>)
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use -[NSWorkspace launchApplicationAtURL:options:configuration:error:] instead.")
func LSOpenApplication(appParams: UnsafePointer<LSApplicationParameters>, _ outPSN: UnsafeMutablePointer<ProcessSerialNumber>) -> OSStatus
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSWorkspace instead.")
func LSOpenItemsWithRole(inItems: UnsafePointer<FSRef>, _ inItemCount: CFIndex, _ inRole: LSRolesMask, _ inAEParam: UnsafePointer<AEKeyDesc>, _ inAppParams: UnsafePointer<LSApplicationParameters>, _ outPSNs: UnsafeMutablePointer<ProcessSerialNumber>, _ inMaxPSNCount: CFIndex) -> OSStatus
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSWorkspace instead.")
func LSOpenURLsWithRole(inURLs: CFArray!, _ inRole: LSRolesMask, _ inAEParam: UnsafePointer<AEKeyDesc>, _ inAppParams: UnsafePointer<LSApplicationParameters>, _ outPSNs: UnsafeMutablePointer<ProcessSerialNumber>, _ inMaxPSNCount: CFIndex) -> OSStatus
@available(OSX 10.5, *)
let kLSQuarantineAgentNameKey: CFString
@available(OSX 10.5, *)
let kLSQuarantineAgentBundleIdentifierKey: CFString
@available(OSX 10.5, *)
let kLSQuarantineTimeStampKey: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeKey: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeWebDownload: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeOtherDownload: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeEmailAttachment: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeInstantMessageAttachment: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeCalendarEventAttachment: CFString
@available(OSX 10.5, *)
let kLSQuarantineTypeOtherAttachment: CFString
@available(OSX 10.5, *)
let kLSQuarantineOriginURLKey: CFString
@available(OSX 10.5, *)
let kLSQuarantineDataURLKey: CFString
@available(OSX 10.4, *)
let kUTTypeItem: CFString
@available(OSX 10.4, *)
let kUTTypeContent: CFString
@available(OSX 10.4, *)
let kUTTypeCompositeContent: CFString
@available(OSX 10.4, *)
let kUTTypeMessage: CFString
@available(OSX 10.4, *)
let kUTTypeContact: CFString
@available(OSX 10.4, *)
let kUTTypeArchive: CFString
@available(OSX 10.4, *)
let kUTTypeDiskImage: CFString
@available(OSX 10.4, *)
let kUTTypeData: CFString
@available(OSX 10.4, *)
let kUTTypeDirectory: CFString
@available(OSX 10.4, *)
let kUTTypeResolvable: CFString
@available(OSX 10.4, *)
let kUTTypeSymLink: CFString
@available(OSX 10.5, *)
let kUTTypeExecutable: CFString
@available(OSX 10.4, *)
let kUTTypeMountPoint: CFString
@available(OSX 10.4, *)
let kUTTypeAliasFile: CFString
@available(OSX 10.4, *)
let kUTTypeAliasRecord: CFString
@available(OSX 10.10, *)
let kUTTypeURLBookmarkData: CFString
@available(OSX 10.4, *)
let kUTTypeURL: CFString
@available(OSX 10.4, *)
let kUTTypeFileURL: CFString
@available(OSX 10.4, *)
let kUTTypeText: CFString
@available(OSX 10.4, *)
let kUTTypePlainText: CFString
@available(OSX 10.4, *)
let kUTTypeUTF8PlainText: CFString
@available(OSX 10.4, *)
let kUTTypeUTF16ExternalPlainText: CFString
@available(OSX 10.4, *)
let kUTTypeUTF16PlainText: CFString
@available(OSX 10.10, *)
let kUTTypeDelimitedText: CFString
@available(OSX 10.10, *)
let kUTTypeCommaSeparatedText: CFString
@available(OSX 10.10, *)
let kUTTypeTabSeparatedText: CFString
@available(OSX 10.10, *)
let kUTTypeUTF8TabSeparatedText: CFString
@available(OSX 10.4, *)
let kUTTypeRTF: CFString
@available(OSX 10.4, *)
let kUTTypeHTML: CFString
@available(OSX 10.4, *)
let kUTTypeXML: CFString
@available(OSX 10.4, *)
let kUTTypeSourceCode: CFString
@available(OSX 10.10, *)
let kUTTypeAssemblyLanguageSource: CFString
@available(OSX 10.4, *)
let kUTTypeCSource: CFString
@available(OSX 10.4, *)
let kUTTypeObjectiveCSource: CFString
@available(OSX 10.11, *)
let kUTTypeSwiftSource: CFString
@available(OSX 10.4, *)
let kUTTypeCPlusPlusSource: CFString
@available(OSX 10.4, *)
let kUTTypeObjectiveCPlusPlusSource: CFString
@available(OSX 10.4, *)
let kUTTypeCHeader: CFString
@available(OSX 10.4, *)
let kUTTypeCPlusPlusHeader: CFString
@available(OSX 10.4, *)
let kUTTypeJavaSource: CFString
@available(OSX 10.10, *)
let kUTTypeScript: CFString
@available(OSX 10.10, *)
let kUTTypeAppleScript: CFString
@available(OSX 10.10, *)
let kUTTypeOSAScript: CFString
@available(OSX 10.10, *)
let kUTTypeOSAScriptBundle: CFString
@available(OSX 10.10, *)
let kUTTypeJavaScript: CFString
@available(OSX 10.10, *)
let kUTTypeShellScript: CFString
@available(OSX 10.10, *)
let kUTTypePerlScript: CFString
@available(OSX 10.10, *)
let kUTTypePythonScript: CFString
@available(OSX 10.10, *)
let kUTTypeRubyScript: CFString
@available(OSX 10.10, *)
let kUTTypePHPScript: CFString
@available(OSX 10.10, *)
let kUTTypeJSON: CFString
@available(OSX 10.10, *)
let kUTTypePropertyList: CFString
@available(OSX 10.10, *)
let kUTTypeXMLPropertyList: CFString
@available(OSX 10.10, *)
let kUTTypeBinaryPropertyList: CFString
@available(OSX 10.4, *)
let kUTTypePDF: CFString
@available(OSX 10.4, *)
let kUTTypeRTFD: CFString
@available(OSX 10.4, *)
let kUTTypeFlatRTFD: CFString
@available(OSX 10.4, *)
let kUTTypeTXNTextAndMultimediaData: CFString
@available(OSX 10.4, *)
let kUTTypeWebArchive: CFString
@available(OSX 10.4, *)
let kUTTypeImage: CFString
@available(OSX 10.4, *)
let kUTTypeJPEG: CFString
@available(OSX 10.4, *)
let kUTTypeJPEG2000: CFString
@available(OSX 10.4, *)
let kUTTypeTIFF: CFString
@available(OSX 10.4, *)
let kUTTypePICT: CFString
@available(OSX 10.4, *)
let kUTTypeGIF: CFString
@available(OSX 10.4, *)
let kUTTypePNG: CFString
@available(OSX 10.4, *)
let kUTTypeQuickTimeImage: CFString
@available(OSX 10.4, *)
let kUTTypeAppleICNS: CFString
@available(OSX 10.4, *)
let kUTTypeBMP: CFString
@available(OSX 10.4, *)
let kUTTypeICO: CFString
@available(OSX 10.10, *)
let kUTTypeRawImage: CFString
@available(OSX 10.10, *)
let kUTTypeScalableVectorGraphics: CFString
@available(OSX 10.4, *)
let kUTTypeAudiovisualContent: CFString
@available(OSX 10.4, *)
let kUTTypeMovie: CFString
@available(OSX 10.4, *)
let kUTTypeVideo: CFString
@available(OSX 10.4, *)
let kUTTypeAudio: CFString
@available(OSX 10.4, *)
let kUTTypeQuickTimeMovie: CFString
@available(OSX 10.4, *)
let kUTTypeMPEG: CFString
@available(OSX 10.10, *)
let kUTTypeMPEG2Video: CFString
@available(OSX 10.10, *)
let kUTTypeMPEG2TransportStream: CFString
@available(OSX 10.4, *)
let kUTTypeMP3: CFString
@available(OSX 10.4, *)
let kUTTypeMPEG4: CFString
@available(OSX 10.4, *)
let kUTTypeMPEG4Audio: CFString
@available(OSX 10.4, *)
let kUTTypeAppleProtectedMPEG4Audio: CFString
@available(OSX 10.10, *)
let kUTTypeAppleProtectedMPEG4Video: CFString
@available(OSX 10.10, *)
let kUTTypeAVIMovie: CFString
@available(OSX 10.10, *)
let kUTTypeAudioInterchangeFileFormat: CFString
@available(OSX 10.10, *)
let kUTTypeWaveformAudio: CFString
@available(OSX 10.10, *)
let kUTTypeMIDIAudio: CFString
@available(OSX 10.10, *)
let kUTTypePlaylist: CFString
@available(OSX 10.10, *)
let kUTTypeM3UPlaylist: CFString
@available(OSX 10.4, *)
let kUTTypeFolder: CFString
@available(OSX 10.4, *)
let kUTTypeVolume: CFString
@available(OSX 10.4, *)
let kUTTypePackage: CFString
@available(OSX 10.4, *)
let kUTTypeBundle: CFString
@available(OSX 10.10, *)
let kUTTypePluginBundle: CFString
@available(OSX 10.10, *)
let kUTTypeSpotlightImporter: CFString
@available(OSX 10.10, *)
let kUTTypeQuickLookGenerator: CFString
@available(OSX 10.10, *)
let kUTTypeXPCService: CFString
@available(OSX 10.4, *)
let kUTTypeFramework: CFString
@available(OSX 10.4, *)
let kUTTypeApplication: CFString
@available(OSX 10.4, *)
let kUTTypeApplicationBundle: CFString
@available(OSX 10.4, *)
let kUTTypeApplicationFile: CFString
@available(OSX 10.10, *)
let kUTTypeUnixExecutable: CFString
@available(OSX 10.10, *)
let kUTTypeWindowsExecutable: CFString
@available(OSX 10.10, *)
let kUTTypeJavaClass: CFString
@available(OSX 10.10, *)
let kUTTypeJavaArchive: CFString
@available(OSX 10.10, *)
let kUTTypeSystemPreferencesPane: CFString
@available(OSX 10.10, *)
let kUTTypeGNUZipArchive: CFString
@available(OSX 10.10, *)
let kUTTypeBzip2Archive: CFString
@available(OSX 10.10, *)
let kUTTypeZipArchive: CFString
@available(OSX 10.10, *)
let kUTTypeSpreadsheet: CFString
@available(OSX 10.10, *)
let kUTTypePresentation: CFString
@available(OSX 10.4, *)
let kUTTypeDatabase: CFString
@available(OSX 10.4, *)
let kUTTypeVCard: CFString
@available(OSX 10.10, *)
let kUTTypeToDoItem: CFString
@available(OSX 10.10, *)
let kUTTypeCalendarEvent: CFString
@available(OSX 10.10, *)
let kUTTypeEmailMessage: CFString
@available(OSX 10.10, *)
let kUTTypeInternetLocation: CFString
@available(OSX 10.4, *)
let kUTTypeInkText: CFString
@available(OSX 10.10, *)
let kUTTypeFont: CFString
@available(OSX 10.10, *)
let kUTTypeBookmark: CFString
@available(OSX 10.10, *)
let kUTType3DContent: CFString
@available(OSX 10.10, *)
let kUTTypePKCS12: CFString
@available(OSX 10.10, *)
let kUTTypeX509Certificate: CFString
@available(OSX 10.10, *)
let kUTTypeElectronicPublication: CFString
@available(OSX 10.10, *)
let kUTTypeLog: CFString
@available(OSX 10.3, *)
let kUTExportedTypeDeclarationsKey: CFString
@available(OSX 10.3, *)
let kUTImportedTypeDeclarationsKey: CFString
@available(OSX 10.3, *)
let kUTTypeIdentifierKey: CFString
@available(OSX 10.3, *)
let kUTTypeTagSpecificationKey: CFString
@available(OSX 10.3, *)
let kUTTypeConformsToKey: CFString
@available(OSX 10.3, *)
let kUTTypeDescriptionKey: CFString
@available(OSX 10.3, *)
let kUTTypeIconFileKey: CFString
@available(OSX 10.3, *)
let kUTTypeReferenceURLKey: CFString
@available(OSX 10.3, *)
let kUTTypeVersionKey: CFString
@available(OSX 10.3, *)
let kUTTagClassFilenameExtension: CFString
@available(OSX 10.3, *)
let kUTTagClassMIMEType: CFString
@available(OSX 10.3, *)
let kUTTagClassNSPboardType: CFString
@available(OSX 10.3, *)
let kUTTagClassOSType: CFString
@available(OSX 10.3, *)
func UTTypeCreatePreferredIdentifierForTag(inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFString>?
@available(OSX 10.3, *)
func UTTypeCreateAllIdentifiersForTag(inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func UTTypeCopyPreferredTagWithClass(inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFString>?
@available(OSX 10.10, *)
func UTTypeCopyAllTagsWithClass(inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func UTTypeEqual(inUTI1: CFString, _ inUTI2: CFString) -> Bool
@available(OSX 10.3, *)
func UTTypeConformsTo(inUTI: CFString, _ inConformsToUTI: CFString) -> Bool
@available(OSX 10.3, *)
func UTTypeCopyDescription(inUTI: CFString) -> Unmanaged<CFString>?
@available(OSX 10.10, *)
func UTTypeIsDeclared(inUTI: CFString) -> Bool
@available(OSX 10.10, *)
func UTTypeIsDynamic(inUTI: CFString) -> Bool
@available(OSX 10.3, *)
func UTTypeCopyDeclaration(inUTI: CFString) -> Unmanaged<CFDictionary>?
@available(OSX 10.3, *)
func UTTypeCopyDeclaringBundleURL(inUTI: CFString) -> Unmanaged<CFURL>?
@available(OSX 10.3, *)
func UTCreateStringForOSType(inOSType: OSType) -> Unmanaged<CFString>
@available(OSX 10.3, *)
func UTGetOSTypeFromString(inString: CFString) -> OSType
struct MDImporterInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterImportData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFString!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterImportData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFString!) -> DarwinBoolean)!)
}
struct MDExporterInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterExportData: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, CFString!, CFString!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterExportData: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, CFString!, CFString!) -> DarwinBoolean)!)
}
struct MDImporterURLInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterImportURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterImportURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!)
}
struct MDImporterBundleWrapperURLInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var ImporterImportBundleWrapperURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, ImporterImportBundleWrapperURLData: (@convention(c) (UnsafeMutablePointer<Void>, CFMutableDictionary!, CFString!, CFURL!) -> DarwinBoolean)!)
}

/*!
        @typedef MDItemRef
        This is the type of a reference to MDItems.
*/
typealias MDItemRef = MDItem

/*!
        @function MDItemGetTypeID
        Returns the type identifier of all MDItem instances.
*/
@available(OSX 10.4, *)
func MDItemGetTypeID() -> CFTypeID

/*!
        @function MDItemCreate
        Returns an metadata item for the given path.
        @param allocator The CFAllocator which should be used to allocate
                memory for the query and its sub-storage. This
                parameter may be NULL in which case the current default
                CFAllocator is used.
        @param path A path to the file for which to create the MDItem.
                [[Currently, the path must exist. MDItemRefs may or
                may not be uniqued. Use CFEqual() to compare them.]]
        @result An MDItemRef, or NULL on failure.
*/
@available(OSX 10.4, *)
func MDItemCreate(allocator: CFAllocator!, _ path: CFString!) -> MDItem!

/*!
 @function MDItemCreateWithURL
 Returns an metadata item for the given path.
 @param allocator The CFAllocator which should be used to allocate
 memory for the query and its sub-storage. This
 parameter may be NULL in which case the current default
 CFAllocator is used.
 @param url A url to the file for which to create the MDItem.
 [[Currently, the file must exist. MDItemRefs may or
 may not be uniqued. Use CFEqual() to compare them.]]
 @result An MDItemRef, or NULL on failure.
 */
@available(OSX 10.6, *)
func MDItemCreateWithURL(allocator: CFAllocator!, _ url: CFURL!) -> MDItem!

/*!
 @function MDItemsCreateWithURLs
 Returns metadata items for the given urls.
 @param allocator The CFAllocator which should be used to allocate
 memory for the array. This parameter may be NULL in which case the current default
 CFAllocator is used.
 @param urls A CFArray of urls to the file for which to create the MDItem.
 @result A CFArrayRef of MDItemRefs, or NULL on failure. Missing items will have kCFNull entries in the result array.
 */
@available(OSX 10.7, *)
func MDItemsCreateWithURLs(allocator: CFAllocator!, _ urls: CFArray!) -> CFArray!

/*!
        @function MDItemCopyAttribute
        Returns the value of the given attribute for the item.
        @param item The item to be interrogated.
        @param name The name of the desired attribute.
        @result A CFTypeRef, or NULL on failure, or if the attribute
                does not exist, of if the attribute is not readable.
*/
@available(OSX 10.4, *)
func MDItemCopyAttribute(item: MDItem!, _ name: CFString!) -> AnyObject!

/*!
        @function MDItemCopyAttributes
        Returns the values of the given attributes for the item.
        @param item The item to be interrogated.
        @param names A CFArray of the names of the desired attributes.
        @result A CFDictionary where the keys are the attribute names,
                and the values are the attribute values, or NULL on
                failure. If an attribute does not exist, or is
                unreadable, there will be no key-value pair for it
                in the dictionary.
*/
@available(OSX 10.4, *)
func MDItemCopyAttributes(item: MDItem!, _ names: CFArray!) -> CFDictionary!

/*!
        @function MDItemCopyAttributeNames
        Returns an array of the attribute names existing in the item.
        @param item The item to be interrogated.
        @result A CFArray of CFString attribute names, or NULL on
                failure.
*/
@available(OSX 10.4, *)
func MDItemCopyAttributeNames(item: MDItem!) -> CFArray!

/*!
 @function MDItemsCopyAttributes
 Returns metadata for the given items.
 @param items A CFArray of MDItemRefs to items for which to fetch data
 @param names A CFArray of attribute names for which to fetch data. 
				The attribute names are CFStrings
 @result A CFArrayRef, or NULL on failure. Each entry in the array is either kCFNull, 
  if the item is not accessible, or a CFArray of attribute values. 
  If an attribute is not available, there will be a kCFNull in its slot in the nested array.
 */
@available(OSX 10.7, *)
func MDItemsCopyAttributes(items: CFArray!, _ names: CFArray!) -> CFArray!

/*!
   @constant kMDItemAttributeChangeDate
   This is the date that the last metadata attribute was changed.

   @constant kMDItemContentType
   UTI Type pedigree for a file for example a jpeg file will have the
   following ItemContentType public.jpeg/public.image/public.data
   the kMDItemContentType is set by the sniffer, any changes to this
   value will get over written by the sniffer when the contents of
   this MDItemRef changes. Type is a CFStringRef

   @constant kMDItemKeywords
   Represents keywords associated with this particular
   MDItemRef. Example Keywords might be Birthday,Important etc. Type
   is a CFArray of CFStrings

   @constant kMDItemTitle
   The title of this particular MDItemRef. Title of the document, or
   it could be the title of this mp3 or a subject of a mail
   message. Type is a CFString

   @constant kMDItemAuthors
   The list of author/authors that has worked on this file. There
   could be 0 or more authors of a particular file. The order of the
   authors in the array is preserved, but is not intended to represent
   the main author or relative importance of the authors. Type is a
   CFArray of CFStrings.
 
   @constant kMDItemEditors
   The list of editor/editors that has worked on this file. There
   could be 0 or more editors of a particular file. The order of the
   editors in the array is preserved, but is not intended to represent
   the main editor or relative importance of the editors. Type is a
   CFArray of CFStrings.
 
   @constant kMDItemParticipants
   The list of people who are visible in an image or movie or
   written about in a document. Type is CFArray of CFStrings.

   @constant kMDItemProjects
   The list of projects etc that this file is part of. For example if
   you were working on a movie, all of the movie files could be marked
   as belonging to the project "My movie" then a query could be done
   kMDItemProjects = "My movie" and all of the related files would
   show up. Type is a CFArray of CFStrings

   @constant kMDItemComment
   This is a comment related to a file, and can be any random
   string. Type is a CFString

   @constant kMDItemCopyright
   This is the copyright of the content. Type is a CFString
   
   @constant kMDItemDownloadedDate
   This is the date that the file was last downloaded / received.

   @constant kMDItemWhereFroms
   This attribute indicates where the item was obtained from.
   Examples:
   - downloaded file may refer to the site they were downloaded from,
    the refering URL, etc
  - files reveived by email may indicate who sent the file, the
    message subject, etc
   Type is a CFArray of CFStrings

   @constant kMDItemLastUsedDate
   This is the date that the file was last used, this field is updated
   by LaunchServices everytime a file is opend by double clicking or
   by asking LaunchServices to open a file. Type is a CFDate

   @constant kMDItemContentCreationDate
   This is the date that the contents of the file were created,
   has an application specific semantic.
   Type is a CFDate.

   @constant kMDItemContentModificationDate
   This is the date that the contents of the file were last
   modified, has an application specific semantic. For example an
   application can use this field to mark when the file was last
   modified, this date is not related to the file system modification
   date, but can be independent of that. This allows tracking of the
   last time the content was modified irrespective of the last time the
   file was modified. Type is a CFDate.
   
   @constant kMDItemDateAdded
   This is the date that the file was moved into the current location.
   Not all files will have this attribute.  Not all file systems support
   this attribute.

   @constant kMDItemDurationSeconds
   This is the duration, in seconds, of the content of the file (if
   appropriate).  A value of 10.5 represents media whose content is
   10 and 1/2 seconds long.  Type is a CFNumber.

   @constant kMDItemContactKeywords
   A list of contacts that are somehow associated with this document,
   beyond what is captured as Author.

   @constant kMDItemVersion
   A version number for this item. Type is a CFString

   @constant kMDItemPixelHeight
   The height of the document in pixels (ie Image height or Video frame height)

   @constant kMDItemPixelWidth
   The width of the document in pixels (ie Image width or Video frame width)

   @constant kMDItemPixelCount
   The total number of pixels in the document.  Type is a CFNumber.

   @constant kMDItemColorSpace
   What color space model is this document following
   (For example, are examples "RGB", "CMYK", "YUV", "YCbCr")

   @constant kMDItemBitsPerSample
   Number of bits per sample
   For example bit depth of an image (8-bit, 16-bit etc..) or bit
   depth per audio sample of uncompressed audio data (8, 16, 24, 32,
   64, etc..)

   @constant kMDItemFlashOnOff
   Indicates if the flash was used to take the picture. 0 means flash did not fire

   @constant kMDItemFocalLength
   The actual focal length of the lens in mm.

   @constant kMDItemAcquisitionMake
   Device make that was used to acquire this document

   @constant kMDItemAcquisitionModel
   Device model that was used to acquire this document

   @const kMDItemISOSpeed
   The ISO Speed the camera was set to when the image was
   taken. Examples are 100, 200, 400, etc.

   @const kMDItemOrientation
   The orientation of the data. Values are 0 is "Landscape" or 1 is "Portrait"

   @const kMDItemLayerNames
   The names of the various layers in the file

   @const kMDItemWhiteBalance
   The white balance setting of the camera when the image was
   acquired. 0 is auto white balance and 1 is manual

   @const kMDItemAperture
   The size of the lens aperture as a log-scale APEX value
   when the image was acquired.

   @const kMDItemProfileName
   Name of the color profile used for the image

   @const kMDItemResolutionWidthDPI
   Resolution width of this image in DPI

   @const kMDItemResolutionHeightDPI
   Resolution height of this image in DPI

   @const kMDItemExposureMode
   Mode that was used for the exposure. 0 is auto exposure, 1 is
   manual, and 2 is auto bracket.

   @const kMDItemExposureTimeSeconds
   Time that the lens was open during exposure

   @const kMDItemEXIFVersion
   The verion of the EXIF header that was used to generate the metadata

   @const kMDItemEXIFGPSVersion
   The version of GPSInfoIFD header that was used to generate the metadata
 
   @const kMDItemCodecs
   The codecs used to encode/decode the media

   @const kMDItemMediaTypes
   Media types present in the content

   @const kMDItemStreamable
   Whether the content is prepared for streaming

   @const kMDItemTotalBitRate
   The total byte rate (audio & video combined) of the media

   @const kMDItemVideoBitRate
   The video byte rate

   @const kMDItemAudioBitRate
   The audio byte rate

   @const kMDItemDeliveryType
   Delivery type Fast start or RTSP

   @constant kMDItemAlbum
   The title for a collection of media. This is analagous to a record album,
   or photo album whichs are collections of audio or images. Type is a CFString.

   @constant kMDItemHasAlphaChannel
   Boolean indicating if this image file has an alpha channel. Type is
   a CFBoolean.

   @constant kMDItemRedEyeOnOff
   Indicates if the flash was used to take the picture. 0 means no
   red-eye reduction mode or unknown. 1 means red-eye reduction
   supported.

   @const kMDItemMeteringMode
   The metering mode (Unknown, Average, CenterWeightedAverage, Spot,
   MultiSpot, Pattern, Partial)

   @const kMDItemMaxAperture
   The smallest F number of the lens. The unit is the APEX
   value. Ordinarily it is given in the range of 00.00 to 99.99.

   @const kMDItemFNumber
   The focal length of the lens divided by the diameter of the aperture
   when the image was acquired.

   @const kMDItemExposureProgram
   The class of the program used by the camera to set exposure when
   the picture is taken (Manual, Normal, Aperture priority, ...)

   @const kMDItemExposureTimeString
   The time  of the exposure.

   @const kMDItemHeadline
   A publishable entry providing a synopsis of the contents of the
   objectdata.

   @const kMDItemInstructions
   Other editorial instructions concerning the use of the objectdata,
   such as embargoes and warnings.

   @const kMDItemCity
   Identifies city of objectdata origin according to guidelines
   established by the provider.

   @const kMDItemStateOrProvince
   Identifies Province/State of origin according to guidelines
   established by the provider.

   @const kMDItemCountry
   Provides full, publishable, name of the country/primary location
   where the intellectual property of the objectdata was created,
   according to guidelines of the provider.
 
 @const kMDItemEXIFGPSVersion
 The version of GPSInfoIFD in EXIF used to generate the metadata.
 
 @const kMDItemAltitude
 The altitude of the item in meters above sea level, expressed 
 using the WGS84 datum.  Negative values lie below sea level.
 
 @const kMDItemLatitude
 The latitude of the item in degrees north of the equator, expressed
 using the WGS84 datum.  Negative values lie south of the equator.
 
 @const kMDItemLongitude
 The longitude of the item in degrees east of the prime meridian,
 expressed using the WGS84 datum.  Negative values lie west of the prime meridian.
 
 @const kMDItemTimestamp
 The timestamp on the item.  This generally is used to indicate the time at
 which the event captured by the item took place.
 
 @const kMDItemSpeed
 The speed of the item, in kilometers per hour.
 
 @const kMDItemGPSTrack
 The direction of travel of the item, in degrees from true north.
 
 @const kMDItemImageDirection
 The direction of the item's image, in degrees from true north.
 
 @const kMDItemNamedLocation
 The name of the location or point of interest associated with the item.
 The name may be user provided.
*/
@available(OSX 10.4, *)
let kMDItemAttributeChangeDate: CFString!
@available(OSX 10.4, *)
let kMDItemContentType: CFString!
@available(OSX 10.5, *)
let kMDItemContentTypeTree: CFString!
@available(OSX 10.4, *)
let kMDItemKeywords: CFString!
@available(OSX 10.4, *)
let kMDItemTitle: CFString!
@available(OSX 10.4, *)
let kMDItemAuthors: CFString!
@available(OSX 10.5, *)
let kMDItemEditors: CFString!
@available(OSX 10.6, *)
let kMDItemParticipants: CFString!
@available(OSX 10.4, *)
let kMDItemProjects: CFString!
@available(OSX 10.7, *)
let kMDItemDownloadedDate: CFString!
@available(OSX 10.4, *)
let kMDItemWhereFroms: CFString!
@available(OSX 10.4, *)
let kMDItemComment: CFString!
@available(OSX 10.4, *)
let kMDItemCopyright: CFString!
@available(OSX 10.4, *)
let kMDItemLastUsedDate: CFString!
@available(OSX 10.4, *)
let kMDItemContentCreationDate: CFString!
@available(OSX 10.4, *)
let kMDItemContentModificationDate: CFString!
@available(OSX 10.7, *)
let kMDItemDateAdded: CFString!
@available(OSX 10.4, *)
let kMDItemDurationSeconds: CFString!
@available(OSX 10.4, *)
let kMDItemContactKeywords: CFString!
@available(OSX 10.4, *)
let kMDItemVersion: CFString!
@available(OSX 10.4, *)
let kMDItemPixelHeight: CFString!
@available(OSX 10.4, *)
let kMDItemPixelWidth: CFString!
@available(OSX 10.6, *)
let kMDItemPixelCount: CFString!
@available(OSX 10.4, *)
let kMDItemColorSpace: CFString!
@available(OSX 10.4, *)
let kMDItemBitsPerSample: CFString!
@available(OSX 10.4, *)
let kMDItemFlashOnOff: CFString!
@available(OSX 10.4, *)
let kMDItemFocalLength: CFString!
@available(OSX 10.4, *)
let kMDItemAcquisitionMake: CFString!
@available(OSX 10.4, *)
let kMDItemAcquisitionModel: CFString!
@available(OSX 10.4, *)
let kMDItemISOSpeed: CFString!
@available(OSX 10.4, *)
let kMDItemOrientation: CFString!
@available(OSX 10.4, *)
let kMDItemLayerNames: CFString!
@available(OSX 10.4, *)
let kMDItemWhiteBalance: CFString!
@available(OSX 10.4, *)
let kMDItemAperture: CFString!
@available(OSX 10.4, *)
let kMDItemProfileName: CFString!
@available(OSX 10.4, *)
let kMDItemResolutionWidthDPI: CFString!
@available(OSX 10.4, *)
let kMDItemResolutionHeightDPI: CFString!
@available(OSX 10.4, *)
let kMDItemExposureMode: CFString!
@available(OSX 10.4, *)
let kMDItemExposureTimeSeconds: CFString!
@available(OSX 10.4, *)
let kMDItemEXIFVersion: CFString!
@available(OSX 10.7, *)
let kMDItemCameraOwner: CFString!
@available(OSX 10.7, *)
let kMDItemFocalLength35mm: CFString!
@available(OSX 10.7, *)
let kMDItemLensModel: CFString!
@available(OSX 10.5, *)
let kMDItemEXIFGPSVersion: CFString!
@available(OSX 10.5, *)
let kMDItemAltitude: CFString!
@available(OSX 10.5, *)
let kMDItemLatitude: CFString!
@available(OSX 10.5, *)
let kMDItemLongitude: CFString!
@available(OSX 10.5, *)
let kMDItemSpeed: CFString!
@available(OSX 10.5, *)
let kMDItemTimestamp: CFString!
@available(OSX 10.5, *)
let kMDItemGPSTrack: CFString!
@available(OSX 10.5, *)
let kMDItemImageDirection: CFString!
@available(OSX 10.6, *)
let kMDItemNamedLocation: CFString!
@available(OSX 10.7, *)
let kMDItemGPSStatus: CFString!
@available(OSX 10.7, *)
let kMDItemGPSMeasureMode: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDOP: CFString!
@available(OSX 10.7, *)
let kMDItemGPSMapDatum: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDestLatitude: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDestLongitude: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDestBearing: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDestDistance: CFString!
@available(OSX 10.7, *)
let kMDItemGPSProcessingMethod: CFString!
@available(OSX 10.7, *)
let kMDItemGPSAreaInformation: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDateStamp: CFString!
@available(OSX 10.7, *)
let kMDItemGPSDifferental: CFString!
@available(OSX 10.4, *)
let kMDItemCodecs: CFString!
@available(OSX 10.4, *)
let kMDItemMediaTypes: CFString!
@available(OSX 10.4, *)
let kMDItemStreamable: CFString!
@available(OSX 10.4, *)
let kMDItemTotalBitRate: CFString!
@available(OSX 10.4, *)
let kMDItemVideoBitRate: CFString!
@available(OSX 10.4, *)
let kMDItemAudioBitRate: CFString!
@available(OSX 10.4, *)
let kMDItemDeliveryType: CFString!
@available(OSX 10.4, *)
let kMDItemAlbum: CFString!
@available(OSX 10.4, *)
let kMDItemHasAlphaChannel: CFString!
@available(OSX 10.4, *)
let kMDItemRedEyeOnOff: CFString!
@available(OSX 10.4, *)
let kMDItemMeteringMode: CFString!
@available(OSX 10.4, *)
let kMDItemMaxAperture: CFString!
@available(OSX 10.4, *)
let kMDItemFNumber: CFString!
@available(OSX 10.4, *)
let kMDItemExposureProgram: CFString!
@available(OSX 10.4, *)
let kMDItemExposureTimeString: CFString!
@available(OSX 10.4, *)
let kMDItemHeadline: CFString!
@available(OSX 10.4, *)
let kMDItemInstructions: CFString!
@available(OSX 10.4, *)
let kMDItemCity: CFString!
@available(OSX 10.4, *)
let kMDItemStateOrProvince: CFString!
@available(OSX 10.4, *)
let kMDItemCountry: CFString!

/*!
   @constant kMDItemHTMLContent
   Contains the HTML content of the document. Type is a CFString.
   This field is only used by Spotlight importers to return HTML contents of a file.  Except in special cases,
   this field is not a replacement for kMDItemTextContent which should still be returned.
   This field does not particpate in Spotlight queries.

   @constant kMDItemTextContent
   Contains the text content of the document. Type is a CFString.

   @constant kMDItemDisplayName
   This is the localized version of the LaunchServices call
   LSCopyDisplayNameForURL()/LSCopyDisplayNameForRef().
 
   @constant kMDItemFSName
   This is the file name of the MDItemRef. Type is a CFString

   @constant kMDItemPath
   This is the complete path to the MDItemRef. Type is a CFString.

   @constant kMDItemFSSize
   The total logical size of the file (data and resources) on disk in bytes. Type is a CFNumber.

   @constant kMDItemFSCreationDate
   This is the date that the file was created. Type is a CFDate.

   @constant  kMDItemFSContentChangeDate
   This is the date the the file content last changed. This is a CFDate.

   @constant kMDItemFSOwnerUserID
   User-id of owner of the file. Type is a CFNumber.

   @constant kMDItemFSOwnerGroupID
   Group-id of owner of the file. Type is a CFNumber.

   @constant kMDItemFSExists *** DEPRECATED ***
   Boolean indicating if this MDItem references a file that still
   exists. The file that the MDItem references might have been
   deleted. Type is a CFBoolean.

   @constant kMDItemFSIsReadable *** DEPRECATED ***
   Boolean indicating if this file is readable. Type is a CFBoolean.

   @constant kMDItemFSIsWriteable *** DEPRECATED ***
   Boolean indicating if this file is writable. Type is a CFBoolean.

   @constant kMDItemFSNodeCount
   Number of files in directory. Type is a CFNumber.

   @constant kMDItemFSHasCustomIcon
   Boolean indicating if this file has a custom icon. Type is a CFBoolean.

   @constant kMDItemFSIsExtensionHidden
   Boolean indicating if this file has its extension hidden. Type is a CFBoolean.

   @constant kMDItemFSIsStationery
   Boolean indicating if this file is stationery. Type is a CFBoolean.

   @constant kMDItemFSInvisible
   Boolean indicating if this file is visible. Type is a CFBoolean.

   @constant kMDItemFSLabel
   Number indicating which finder label is in use (0-7). Type is a CFNumber.

*/
@available(OSX 10.4, *)
let kMDItemFSName: CFString!
@available(OSX 10.4, *)
let kMDItemDisplayName: CFString!
@available(OSX 10.4, *)
let kMDItemPath: CFString!
@available(OSX 10.4, *)
let kMDItemFSSize: CFString!
@available(OSX 10.4, *)
let kMDItemFSCreationDate: CFString!
@available(OSX 10.4, *)
let kMDItemFSContentChangeDate: CFString!
@available(OSX 10.4, *)
let kMDItemFSOwnerUserID: CFString!
@available(OSX 10.4, *)
let kMDItemFSOwnerGroupID: CFString!
@available(OSX 10.4, *)
let kMDItemFSHasCustomIcon: CFString!
@available(OSX 10.4, *)
let kMDItemFSIsExtensionHidden: CFString!
@available(OSX 10.4, *)
let kMDItemFSIsStationery: CFString!
@available(OSX 10.4, *)
let kMDItemFSInvisible: CFString!
@available(OSX 10.4, *)
let kMDItemFSLabel: CFString!
@available(OSX 10.4, *)
let kMDItemFSNodeCount: CFString!
@available(OSX 10.11, *)
let kMDItemHTMLContent: CFString!
@available(OSX 10.4, *)
let kMDItemTextContent: CFString!

/*!
   @constant kMDItemAudioSampleRate
   The sample rate of the audio data contained in the file. The sample rate is a
   float value representing hz (audio_frames/second). For example: 44100.0, 22254.54.
   Type is a CFNumber (float).

   @constant kMDItemAudioChannelCount
   The number of channels in the audio data contained in the file. This item only represents
   the number of discreet channels of audio data found in the file. It does not indicate
   any configuration of the data in regards to a user's speaker setup.
   Type is a CFNumber (integer).

   @constant kMDItemTempo
   The tempo of the music contained in the audio file in Beats Per Minute.
   Type is a CFNumber (float).

   @constant kMDItemKeySignature
   The musical key of the song/composition contained in an audio file.
   For example: C, Dm, F#m, Bb. Type is a CFString.

   @constant kMDItemTimeSignature
   The time signature of the musical composition contained in the audio/MIDI file.
   For example: "4/4", "7/8". Type is a CFString.

   @constant kMDItemAudioEncodingApplication
   The name of the application that encoded the data contained in the audio file.
   Type is a CFString.

   @constant kMDItemComposer
   The composer of the song/composition contained in the audio file.
   Type is a CFString.

   @constant kMDItemLyricist
   The lyricist/text writer for song/composition contained in the audio file.
   Type is a CFString.

   @constant kMDItemAudioTrackNumber
   The track number of a song/composition when it is part of an album (kMDItemAlbum).
   Type is a CFNumber (integer).

   @constant kMDItemRecordingDate
   The recording date of the song/composition. This information differs from
   the kMDItemContentCreationDate attribute as it indicates the date that the
   'art' was created, in contrast to ContentCreationDate which for example, could indicate
   the creation date of an edited or 'mastered' version of the original art.
   Type is a CFDate.

   @constant kMDItemMusicalGenre
   The musical genre of the song/composition contained in the audio file.
   For example: Jazz, Pop, Rock, Classical. Type is a CFString.

   @constant kMDItemIsGeneralMIDISequence
   This attribute indicates whether the MIDI sequence contained in the file
   is setup for use with a General MIDI device. Type is a CFBoolean.

   @const kMDItemRecordingYear
   This attribute indicates what year the item was recorded on.
   Type is a CFNumber
*/
@available(OSX 10.4, *)
let kMDItemAudioSampleRate: CFString!
@available(OSX 10.4, *)
let kMDItemAudioChannelCount: CFString!
@available(OSX 10.4, *)
let kMDItemTempo: CFString!
@available(OSX 10.4, *)
let kMDItemKeySignature: CFString!
@available(OSX 10.4, *)
let kMDItemTimeSignature: CFString!
@available(OSX 10.4, *)
let kMDItemAudioEncodingApplication: CFString!
@available(OSX 10.4, *)
let kMDItemComposer: CFString!
@available(OSX 10.4, *)
let kMDItemLyricist: CFString!
@available(OSX 10.4, *)
let kMDItemAudioTrackNumber: CFString!
@available(OSX 10.4, *)
let kMDItemRecordingDate: CFString!
@available(OSX 10.4, *)
let kMDItemMusicalGenre: CFString!
@available(OSX 10.4, *)
let kMDItemIsGeneralMIDISequence: CFString!
@available(OSX 10.4, *)
let kMDItemRecordingYear: CFString!

/*!
        @const kMDItemOrganizations
        Used to indicate company/Organization that created the document.
        Type is a CFArray of CFStrings.

        @const kMDItemLanguages
        Used to designate the languages of the intellectual content of the
        resource. Recommended best practice for the values of the Language
        element is defined by RFC 3066.
        Type is a CFArray of CFStrings.

        @const kMDItemRights
        Used to provide a link to information about rights held in and
        over the resource. Typically a Rights element will contain a
        rights management statement for the resource, or reference a
        service providing such information. Rights information often
        encompasses Intellectual Property Rights (IPR), Copyright, and
        various Property Rights. If the rights element is absent, no
        assumptions can be made about the status of these and other rights
        with respect to the resource. Type is a CFString type.

        @const kMDItemPublishers
        Used to designate the entity responsible for making the resource
        available. Examples of a Publisher include a person, an
        organization, or a service. Typically, the name of a Publisher
        should be used to indicate the entity. Type is a CFArray of CFStrings.

        @const kMDItemContributors
        Used to designate the entity responsible for making contributions
        to the content of the resource. Examples of a Contributor include
        a person, an organization or a service. Typically, the name of a
        Contributor should be used to indicate the entity. Type is a
        CFArray of CFStrings.

        @const kMDItemCoverage
        Used to designate the extent or scope of the content of the
        resource. Coverage will typically include spatial location (a
        place name or geographic co-ordinates), temporal period (a period
        label, date, or date range) or jurisdiction (such as a named
        administrative entity). Recommended best practice is to select a
        value from a controlled vocabulary, and that, where appropriate,
        named places or time periods be used in preference to numeric
        identifiers such as sets of co-ordinates or date ranges. Type is a
        CFString.

        @const kMDItemSubject
        Subject of the this item. Type is a CFString.

        @const kMDItemTheme
        Theme of the this item. Type is a CFString.
 
        @const kMDItemDescription
        An account of the content of the resource. Description may include
        but is not limited to: an abstract, table of contents, reference
        to a graphical representation of content or a free-text account of
        the content. Type is a CFString.

        @const kMDItemIdentifier
        Used  to reference to the resource within a given
        context. Recommended best practice is to identify the resource by
        means of a string or number conforming to a formal identification
        system. Type is a CFString.

        @const kMDItemAudiences
        A class of entity for whom the resource is intended or useful. A
        class of entity may be determined by the creator or the publisher
        or by a third party. Type is a  CFArray of CFString.
*/
@available(OSX 10.4, *)
let kMDItemOrganizations: CFString!
@available(OSX 10.4, *)
let kMDItemLanguages: CFString!
@available(OSX 10.4, *)
let kMDItemRights: CFString!
@available(OSX 10.4, *)
let kMDItemPublishers: CFString!
@available(OSX 10.4, *)
let kMDItemContributors: CFString!
@available(OSX 10.4, *)
let kMDItemCoverage: CFString!
@available(OSX 10.4, *)
let kMDItemSubject: CFString!
@available(OSX 10.4, *)
let kMDItemTheme: CFString!
@available(OSX 10.4, *)
let kMDItemDescription: CFString!
@available(OSX 10.4, *)
let kMDItemIdentifier: CFString!
@available(OSX 10.4, *)
let kMDItemAudiences: CFString!

/*!
        @const kMDItemNumberOfPages
        Number of pages in the item. Type is a CFNumberRef

        @const kMDItemPageWidth
        Width in points (72 points per inch) of the document page
        (first page only for PDF's - other pages within the PDF may
        not be the same width). Type is a CFNumber.

        @const kMDItemPageHeight
        Height in points (72 points per inch) of the document page
        (first page only for PDF's - other pages within the PDF may
        not be the same height). Type is a CFNumber.

        @const kMDItemSecurityMethod
        Security (encryption) method used in the file, for a PDF will be one of:
        "Password Encrypted" or "None". Type is a CFStrings.

        @const kMDItemCreator
        Application used to create the document content (e.g. "Word",
        "Framemaker", etc.). Type is a CFStrings.

        @const kMDItemEncodingApplications
        Software used to convert the original content into a PDF stream
        (e.g. "Distiller", etc.). Type is a Array of CFStrings.

        @const kMDItemDueDate
        Date this item is due. Type is a CFDate.

        @const kMDItemStarRating
        User rate of this item like iTunes. Type is a CFNumber

        @const kMDItemPhoneNumbers
        Phone numbers for this item. Type is an Array of CFStrings.

        @const kMDItemEmailAddresses
        Email addresses for this item. Type is an Array of CFStrings.

        @const  kMDItemInstantMessageAddresses
        Instant message addresses for this item. Type is an Array of CFStrings.

        @const kMDItemKind
        Kind that this item represents. Type is a CFString.

        @const kMDItemRecipients
        This attribute indicates the recipients of this item. Type is a Array of CFStrings

        @const  kMDItemFinderComment
        These are the finder comments for this item. Type is a CFString.

        @const kMDItemFonts
        Array of font names used in the item. Attribute would store the Fonts
        full name, the postscript name or the font family name based on whats available.
        Type is an Array of CFStrings.
*/
@available(OSX 10.4, *)
let kMDItemNumberOfPages: CFString!
@available(OSX 10.4, *)
let kMDItemPageWidth: CFString!
@available(OSX 10.4, *)
let kMDItemPageHeight: CFString!
@available(OSX 10.4, *)
let kMDItemSecurityMethod: CFString!
@available(OSX 10.4, *)
let kMDItemCreator: CFString!
@available(OSX 10.4, *)
let kMDItemEncodingApplications: CFString!
@available(OSX 10.4, *)
let kMDItemDueDate: CFString!
@available(OSX 10.4, *)
let kMDItemStarRating: CFString!
@available(OSX 10.4, *)
let kMDItemPhoneNumbers: CFString!
@available(OSX 10.4, *)
let kMDItemEmailAddresses: CFString!
@available(OSX 10.4, *)
let kMDItemInstantMessageAddresses: CFString!
@available(OSX 10.4, *)
let kMDItemKind: CFString!
@available(OSX 10.4, *)
let kMDItemRecipients: CFString!
@available(OSX 10.4, *)
let kMDItemFinderComment: CFString!
@available(OSX 10.4, *)
let kMDItemFonts: CFString!

/*!
        @const kMDItemAppleLoopsRootKey
        Meta data attribute that stores the root note or tonic for the
        loop, and does not include the scale type. The root key is
        represented as follows: "C" "C#/Db" "D" "D#/Eb" "E" "F"
        "F#/Gb" "G" "G#/Ab" "A" "A#/Bb" "B" "NoKey"

        @const kMDItemAppleLoopsKeyFilterType
        Meta data attribute that stores key filtering information
        about a loop. Loops are matched against projects that often in
        a major or minor key. To assist users in identifying loops
        that will "fit" with their compositions, loops can be tagged
        with one of the following key filters: "AnyKey" "Minor"
        "Major" "NeitherKey" "BothKeys". AnyKey means that it fits
        with anything (whether in a major key, minor key or
        neither). Minor fits with compositions in a minor
        key. NeitherKey doesn't work well with compositions that are
        in major or minor key. BothKeys means it fits with major or
        minor key.

        @const kMDItemAppleLoopsLoopMode
        Meta data attribute that stores how a file should be
        played. Tagged files can either be loops or non-loops (e.g., a
        cymbal crash). "Looping" indicates if the file should be
        treated as a loop. "Non-looping" indicates the file should not
        be treated as a loop.

        @const kMDItemAppleLoopDescriptors
        Meta data attribute that stores multiple pieces of descriptive
        information about a loop. Besides genre and instrument, files
        can contain descriptive information that help users in
        refining searches. A file can have multiple descriptors
        associated with them, though they come in pairs of antonyms
        (e.g., "Acoustic" and "Electric"). A file can have zero or
        more descriptors.


        @const kMDItemMusicalInstrumentCategory
        Meta data attribute that stores the category of
        instrument. Files should have an instrument associated with
        them ("Other Instrument" is provided as a catch-all). For some
        categories, like "Keyboards" there are instrument names which
        provide a more detailed instrument definition (e.g., Piano,
        Organ, etc.)

        @const kMDItemMusicalInstrumentName
        Meta data attribute that stores the name of instrument
        (relative to the instrument category) Files can have an
        instrument name associated with them if they have certain
        instrument categories (e.g., the category Percussion has
        multiple instruments, including Conga and Bongo).

        @const kMDItemCFBundleIdentifier
        If this item is a bundle, then this is the CFBundleIdentifier
*/
@available(OSX 10.4, *)
let kMDItemAppleLoopsRootKey: CFString!
@available(OSX 10.4, *)
let kMDItemAppleLoopsKeyFilterType: CFString!
@available(OSX 10.4, *)
let kMDItemAppleLoopsLoopMode: CFString!
@available(OSX 10.4, *)
let kMDItemAppleLoopDescriptors: CFString!
@available(OSX 10.4, *)
let kMDItemMusicalInstrumentCategory: CFString!
@available(OSX 10.4, *)
let kMDItemMusicalInstrumentName: CFString!
@available(OSX 10.5, *)
let kMDItemCFBundleIdentifier: CFString!

/*!
        @const kMDItemInformation
        Information about the item

        @const kMDItemDirector
        Director of the movie

        @const kMDItemProducer
        Producer of the content

        @const kMDItemGenre
        Genre of the movie

        @const kMDItemPerformers
        Performers in the movie

        @const kMDItemOriginalFormat
        Original format of the movie

        @const kMDItemOriginalSource
        Original source of the movie

        @const kMDItemAuthorEmailAddresses
        This attribute indicates the author of the emails message addresses. (This is always
        the email address, and not the human readable version)

        @const kMDItemRecipientEmailAddresses
        This attribute indicates the reciepients email addresses. (This is always the email
        address,  and not the human readable version).

        @const kMDItemAuthorAddresses
        This attribute indicates the author addresses of the document.
 
        @const kMDItemRecipientAddresses
        This attribute indicates the recipient addresses of the document. 
 
        @const kMDItemURL
        Url of the item
        
        @const kMDItemIsLikelyJunk
        This attribute indicates if the document is likely to be considered junk.
        
        @const kMDItemExecutableArchitectures
        Array of executables architectures the item contains.
 
        @const kMDItemExecutablePlatform
        Indicates platform required to execute this application.

        @const kMDItemApplicationCategories
        Array of categories the item application is a member of.

*/
@available(OSX 10.5, *)
let kMDItemInformation: CFString!
@available(OSX 10.5, *)
let kMDItemDirector: CFString!
@available(OSX 10.5, *)
let kMDItemProducer: CFString!
@available(OSX 10.5, *)
let kMDItemGenre: CFString!
@available(OSX 10.5, *)
let kMDItemPerformers: CFString!
@available(OSX 10.5, *)
let kMDItemOriginalFormat: CFString!
@available(OSX 10.5, *)
let kMDItemOriginalSource: CFString!
@available(OSX 10.5, *)
let kMDItemAuthorEmailAddresses: CFString!
@available(OSX 10.5, *)
let kMDItemRecipientEmailAddresses: CFString!
@available(OSX 10.6, *)
let kMDItemAuthorAddresses: CFString!
@available(OSX 10.6, *)
let kMDItemRecipientAddresses: CFString!
@available(OSX 10.5, *)
let kMDItemURL: CFString!
@available(OSX 10.7, *)
let kMDItemIsLikelyJunk: CFString!
@available(OSX 10.7, *)
let kMDItemExecutableArchitectures: CFString!
@available(OSX 10.7, *)
let kMDItemExecutablePlatform: CFString!
@available(OSX 10.7, *)
let kMDItemApplicationCategories: CFString!
@available(OSX 10.7, *)
let kMDItemIsApplicationManaged: CFString!

/*!
 @typedef MDLabelRef
 @abstract This is the type of a reference to an MDLabel.
 */
typealias MDLabelRef = MDLabel
@available(OSX 10.7, *)
func MDLabelGetTypeID() -> CFTypeID

/*!
 @function MDItemCopyLabels
 @abstract Returns an array of the labels set on the specified item.
 @param item The item to be interrogated.
 @result A CFArrayRef containing MDLabelRefs for the labels set on the item, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDItemCopyLabels(item: MDItem!) -> CFArray!

/*!
 @function MDItemSetLabel
 @abstract Sets a label on the specified item.
 @param item The item to be updated.
 @param label The label.
 @result True if the label was successfully set on the item, false otherwise.
 */
@available(OSX 10.7, *)
func MDItemSetLabel(item: MDItem!, _ label: MDLabel!) -> Bool

/*!
 @function MDItemRemoveLabel
 @abstract Removes a label from the specified item.
 @param item The item to be updated.
 @param label The label.
 @result True if the label was successfully removed from the item, false otherwise.
 */
@available(OSX 10.7, *)
func MDItemRemoveLabel(item: MDItem!, _ label: MDLabel!) -> Bool

/*!
 @typedef MDLabelDomain
 @abstract These constants are used to specify a domain to MDLabelCreate().
 */
struct MDLabelDomain : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMDLabelUserDomain: MDLabelDomain { get }
var kMDLabelLocalDomain: MDLabelDomain { get }

/*!
 @function MDLabelCreate
 @abstract Returns a label with the specified parameters. If there is already a label that exactly matches the parameters, a reference to the existing label will be returned; otherwise this will attempt to create a new label.  A successful creation of a new private label definition will generate a kMDLabelAddedNotification. Note that this function can only create labels with "Private" visibility. Creating "Public" labels requires creating and installing a label bundle.
 @param allocator The CFAllocator which should be used to allocate memory for the label. This parameter may be NULL in which case the current default CFAllocator is used. Use kCFAllocatorNull to request a reference to an existing label only.
 @param displayName The label's display name.
 @param kind The label's kind string.
 @param domain The domain of the label (normally kMDLabelUserDomain).
 @result An MDLabelRef, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDLabelCreate(allocator: CFAllocator!, _ displayName: CFString!, _ kind: CFString!, _ domain: MDLabelDomain) -> MDLabel!

/*!
 @function MDLabelCopyAttribute
 @abstract Copy the value of the named attribute of a label.
 @param label The label.
 @param name The name of the desired attribute.
 @result A CFTypeRef, or NULL on failure, or if the attribute does not exist, or if the attribute is not readable.
 */
@available(OSX 10.7, *)
func MDLabelCopyAttribute(label: MDLabel!, _ name: CFString!) -> AnyObject!

/*!
 @function MDLabelCopyAttributeName
 @abstract Copy the MDItem attribute name of a label. The attribute name can be used in an MDQuery string to search for MDItems that have the label set. The value of the MDItem attribute is a CFDate corresponding to the time the label was set on the item.
 @param label The label.
 @result A CFStringRef, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDLabelCopyAttributeName(label: MDLabel!) -> CFString!

/*!
 @function MDLabelDelete
 @abstract Deletes the user's definition or override of the specified label from ~/Library/Metadata. Labels defined in bundles elsewhere in the filesystem cannot be deleted using this API. Deleting an override of a label merely makes the original definition of the label visible again and thus will generate a kMDLabelChangedNotification. A successful deletion of a private label definition will generate a kMDLabelRemovedNotification.
 @param label The label.
 @result True if a label definition or override was successfully deleted.
 */
@available(OSX 10.7, *)
func MDLabelDelete(label: MDLabel!) -> Bool

/*!
 @function MDLabelSetAttributes
 @abstract Updates the attributes of the specified label. Labels defined in ~/Library/Metadata are modified directly. Labels defined in bundles elsewhere in the filesystem are overridden by creating a private copy of the label definition in ~/Library/Metadata. The updated attributes are then stored in the private copy. A successful call to MDLabelSetAttributes() will generate a kMDLabelChangedNotification.
 @param label The label.
 @param attrs A dictionary containing the attributes to be modified. To remove an attribute, include it in the dictionary with kCFNull as its value.
 @result True if the label definition or override was successfully updated.
 */
@available(OSX 10.7, *)
func MDLabelSetAttributes(label: MDLabel!, _ attrs: CFDictionary!) -> Bool

/*!
 @function MDCopyLabelKinds
 @abstract Copy the list of label kind strings.
 @result A CFArrayRef containing all of the label kind strings, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDCopyLabelKinds() -> CFArray!

/*!
 @function MDCopyLabelsMatchingExpression
 @abstract Copy the list of labels matching the specified query expression.
 @param simpleQueryString The query expression string.
 @result A CFArrayRef containing all of the matching labels, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDCopyLabelsMatchingExpression(simpleQueryString: CFString!) -> CFArray!

/*!
 @function MDCopyLabelsWithKind
 @abstract Copy the list of labels with the specified kind string.
 @param kind The kind string, or NULL to copy all labels.
 @result A CFArrayRef containing all of the labels with the specified kind string, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDCopyLabelsWithKind(kind: CFString!) -> CFArray!

/*!
 @function MDCopyLabelWithUUID
 @abstract Copy the label with the specified UUID.
 @param labelUUID The label UUID.
 @result An MDLabelRef, or NULL on failure.
 */
@available(OSX 10.7, *)
func MDCopyLabelWithUUID(labelUUID: CFUUID!) -> MDLabel!

/*!
 @constant kMDLabelBundleURL
 @abstract This is the bundle URL for the label.
 Type is a CFURL. This attribute is read-only.
 
 @constant kMDLabelContentChangeDate
 @abstract This is the date the the label content last changed.
 Type is a CFDate. This attribute is read-only, but its value will be altered by setting any of the writable attributes described below.
 
 @constant kMDLabelDisplayName
 @abstract This is the localized name of the label.
 Type is a CFString.
 
 @constant kMDLabelIconData
 @abstract This is the data that should be used to create an icon image source for the label. Pass this data to the ImageIO framework to create a CGImageSourceRef. To reset a label's icon to its default image, set kMDLabelIconData to kCFNull.
 Type is a CFData.
 
 @constant kMDLabelIconUUID
 @abstract This is the UUID of the icon image source for the label. Labels that share the same icon image source will have the same icon UUID.
 Type is a CFUUID. This attribute is read-only, but its value may be altered by setting the kMDLabelIconData attribute described above.
 
 @constant kMDLabelIsMutuallyExclusiveSetMember
 @abstract This attribute is true if the label kind specifies a mutually-exclusive set of labels.
 Type is a CFBoolean. This attribute is read-only.

 @constant kMDLabelKind
 @abstract This is the kind string for the label. The label kind is the name of the bundle the label is defined in.
 Type is a CFString. This attribute is read-only.
 
 @constant kMDLabelSetsFinderColor
 @abstract This attribute is optional and applicable only to labels with "Public" visibility. If it is present, then when the label is set on a file the file's Finder color will be set to the specified value (0 - 7). If the label is later removed, the file's Finder color will be reverted either to the color specified by the most-recently-set label with this attribute that remains set on the file, or to 0 (none).
 Type is a CFNumber. This attribute is ignored for unless the label's visibility is "Public".
 
 @constant kMDLabelUUID
 @abstract This is the UUID of the label.
 Type is a CFUUID. This attribute is read-only.
 
 @constant kMDLabelVisibility
 @abstract This is a constant describing the label's visibility, either "Public" (kMDPublicVisibility) or "Private" (kMDPrivateVisibility).
 Type is a CFString. This attribute is read-only.
 */
@available(OSX 10.7, *)
var kMDLabelBundleURL: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelContentChangeDate: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelDisplayName: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelIconData: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelIconUUID: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelIsMutuallyExclusiveSetMember: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelKind: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelSetsFinderColor: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelUUID: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelVisibility: Unmanaged<CFString>!

/*!
 @constant kMDLabelKindIsMutuallyExclusiveSetKey
 @abstract This key is used in the Info.plist file of a label bundle to specify that the label kind constitutes a mutually exclusive set.
 The value is a CFBoolean.
 
 @constant kMDLabelKindVisibilityKey
 @abstract This key is used in the Info.plist file of a label bundle to specify the visibility of the labels defined by the bundle.
 The value is a CFString constant, either "Public" (kMDPublicVisibility) or "Private" (kMDPrivateVisibility).
 */
@available(OSX 10.7, *)
var kMDLabelKindIsMutuallyExclusiveSetKey: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDLabelKindVisibilityKey: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDPrivateVisibility: Unmanaged<CFString>!
@available(OSX 10.7, *)
var kMDPublicVisibility: Unmanaged<CFString>!

/*!
 @constant kMDLabelAddedNotification
 @abstract The name of the notification sent when a label has been added. The notification object is the subject MDLabelRef. All label notifications are distributed to processes owned by the same uid that have initialized the Metadata framework label APIs.
 */
@available(OSX 10.7, *)
let kMDLabelAddedNotification: CFString!

/*!
 @constant kMDLabelChangedNotification
 @abstract The name of the notification sent when a label has been changed. The notification object is the subject MDLabelRef. The label's new attributes can be retrieved using MDLabelCopyAttribute().
 */
@available(OSX 10.7, *)
let kMDLabelChangedNotification: CFString!

/*!
 @constant kMDLabelRemovedNotification
 @abstract The name of the notification sent when a label has been deleted. The notification object is the subject MDLabelRef. The label's kMDLabelIconUUID, kMDLabelKind, kMDLabelKindBundleURL and kMDLabelUUID attributes can still be retrieved using MDLabelCopyAttribute(), and the label may still be passed to MDLabelCopyAttributeName().
 */
@available(OSX 10.7, *)
let kMDLabelRemovedNotification: CFString!

/*!
        @typedef MDQueryRef
        This is the type of a reference to MDQuerys.
*/
typealias MDQueryRef = MDQuery
struct MDQueryOptionFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMDQuerySynchronous: MDQueryOptionFlags { get }
var kMDQueryWantsUpdates: MDQueryOptionFlags { get }
var kMDQueryAllowFSTranslation: MDQueryOptionFlags { get }

/*!
        @function MDQueryGetTypeID
        Returns the type identifier of all MDQuery instances.
*/
@available(OSX 10.4, *)
func MDQueryGetTypeID() -> CFTypeID

/*!
        @function MDQueryCreate
        Creates a new query with the given query expression.
        @param allocator The CFAllocator which should be used to allocate
                memory for the query and its sub-storage. This
                parameter may be NULL in which case the current default
                CFAllocator is used.
        @param queryString The query expression string for this query. The
                syntax for query expressions is explained above in the
                header overview documentation.
        @param valueListAttrs An optional array of attribute names. The
                query will collect the values of these attributes into
                uniqued lists, which can be used or displayed to summarize
                the results of the query, or allow a user to further
                qualify the items for which they are searching. This
                parameter may be NULL if no value lists are desired. Value
                list collection increases CPU usage and significantly
                increases the memory usage of an MDQuery. The attribute
                names are CFStrings.
        @param sortingAttrs An optional array of attribute names. The
                query will results of the query based on the values of
                these attributes. The first name in the array is used as
                the primary sort key, the second as the secondary key, and
                so on. The comparison of like-typed values is a simple,
                literal comparison. This parameter may be NULL if no
                sorting is desired. Sorting increases memory usage and
                significantly increases the CPU usage of an MDQuery.
                However, when possible, it is almost always cheaper to have
                the MDQuery do the sorting, rather than you fetching all
                the results and attributes from each of them and doing the
                sorting yourself. The attribute names are CFStrings.
        @result An MDQueryRef, or NULL on failure. If the query string
                is empty or malformed (invalid syntax), returns NULL.
*/
@available(OSX 10.4, *)
func MDQueryCreate(allocator: CFAllocator!, _ queryString: CFString!, _ valueListAttrs: CFArray!, _ sortingAttrs: CFArray!) -> MDQuery!

/*!
        @function MDQueryCreateSubset
        Creates a new query, which is a subset of the given query. Only
                results matched by the given query can be matched by the
                query expression of this query.
        @param allocator The CFAllocator which should be used to allocate
                memory for the query and its sub-storage. This
                parameter may be NULL in which case the current default
                CFAllocator is used.
        @param query The parent query of the new query.
        @param queryString The query expression string for this query.
                This expression in effect may further restrict the matches
                found by the parent query. If the string is empty the
                behavior is undefined.
        @param valueListAttrs An optional array of attribute names. The
                query will collect the values of these attributes into
                uniqued lists, which can be used or displayed to summarize
                the results of the query, or allow a user to further
                qualify the items for which they are searching. This
                parameter may be NULL if no value lists are desired. Value
                list collection increases CPU usage and significantly
                increases the memory usage of an MDQuery. The attribute
                names are CFStrings.
        @param sortingAttrs An optional array of attribute names. The
                query will results of the query based on the values of
                these attributes. The first name in the array is used as
                the primary sort key, the second as the secondary key, and
                so on. The comparison of like-typed values is a simple,
                literal comparison. This parameter may be NULL if no
                sorting is desired. Sorting increases memory usage and
                significantly increases the CPU usage of an MDQuery.
                However, when possible, it is almost always cheaper to have
                the MDQuery do the sorting, rather than you fetching all
                the results and attributes from each of them and doing the
                sorting yourself. The attribute names are CFStrings.
        @result An MDQueryRef, or NULL on failure. If the query string
                is empty or malformed (invalid syntax), returns NULL.
*/
@available(OSX 10.4, *)
func MDQueryCreateSubset(allocator: CFAllocator!, _ query: MDQuery!, _ queryString: CFString!, _ valueListAttrs: CFArray!, _ sortingAttrs: CFArray!) -> MDQuery!

/*!
 @function MDQueryCreateForItems
 Creates a new query with the given query expression.
 @param allocator The CFAllocator which should be used to allocate
 memory for the query and its sub-storage. This
 parameter may be NULL in which case the current default
 CFAllocator is used.
 @param queryString The query expression string for this query. The
 syntax for query expressions is explained above in the
 header overview documentation.
 @param valueListAttrs An optional array of attribute names. The
 query will collect the values of these attributes into
 uniqued lists, which can be used or displayed to summarize
 the results of the query, or allow a user to further
 qualify the items for which they are searching. This
 parameter may be NULL if no value lists are desired. Value
 list collection increases CPU usage and significantly
 increases the memory usage of an MDQuery. The attribute
 names are CFStrings.
 @param sortingAttrs An optional array of attribute names. The
 query will results of the query based on the values of
 these attributes. The first name in the array is used as
 the primary sort key, the second as the secondary key, and
 so on. The comparison of like-typed values is a simple,
 literal comparison. This parameter may be NULL if no
 sorting is desired. Sorting increases memory usage and
 significantly increases the CPU usage of an MDQuery.
 However, when possible, it is almost always cheaper to have
 the MDQuery do the sorting, rather than you fetching all
 the results and attributes from each of them and doing the
 sorting yourself. The attribute names are CFStrings.
 @param items An array of items. The query will only return results
 in this set.
 @result An MDQueryRef, or NULL on failure. If the query string
 is empty or malformed (invalid syntax), returns NULL.
 */
@available(OSX 10.7, *)
func MDQueryCreateForItems(allocator: CFAllocator!, _ queryString: CFString!, _ valueListAttrs: CFArray!, _ sortingAttrs: CFArray!, _ items: CFArray!) -> MDQuery!

/*!
        @function MDQueryCopyQueryString
        Returns the query string of the query.
        @param query The query to be interrogated.
        @result The query string of the query.
*/
@available(OSX 10.4, *)
func MDQueryCopyQueryString(query: MDQuery!) -> CFString!

/*!
        @function MDQueryCopyValueListAttributes
        Returns the list of attribute names for which the query is
                collecting the lists of values.
        @param query The query to be interrogated.
        @result The list of value list attribute names of the query.
*/
@available(OSX 10.4, *)
func MDQueryCopyValueListAttributes(query: MDQuery!) -> CFArray!

/*!
        @function MDQueryCopySortingAttributes
        Returns the list of attribute names the query is using to sort
                the results.
        @param query The query to be interrogated.
        @result The list of sorting attribute names of the query.
*/
@available(OSX 10.4, *)
func MDQueryCopySortingAttributes(query: MDQuery!) -> CFArray!

/*!
        @typedef MDQueryBatchingParams
        Structure containing the progress notification batching
                parameters of an MDQuery. The first notification can be
                triggered by the either first_max_num or first_max_ms limit
                being exceeded. Subsequent notifications are triggered by
                either the progress_max_num or progress_max_ms limit. The
                default batching parameters are undefined and subject to
                change.
        @field first_max_num The maximum number of results that can
                accumulate before a progress notification is sent out
                by the MDQuery, for the first notification.
        @field first_max_ms The maximum number of milliseconds that can
                pass before a progress notification is sent out. This
                value is advisory, in that the notification will be
                triggered "at some point after first_max_ms milliseconds
                have passed since the query began accumulating results",
                but generally not very long after, for the first
                progress notification.
        @field progress_max_num The maximum number of results that can
                accumulate before a progress notification is sent out
                by the MDQuery, for notifications after the first,
                during the initial gathering phase of the query.
        @field progress_max_ms The maximum number of milliseconds that can
                pass before a progress notification is sent out. This
                value is advisory, in that the notification will be
                triggered "at some point after first_max_ms milliseconds
                have passed since the query began accumulating results",
                but generally not very long after, for progress
                notifications after the first, during the initial
                gathering phase of the query.
        @field update_max_num The maximum number of results that can
                accumulate before an update notification is sent out
                by the MDQuery, for notifications after the gathering
                phase of the query has finished.
        @field update_max_ms The maximum number of milliseconds that can
                pass before a progress notification is sent out. This
                value is advisory, in that the notification will be
                triggered "at some point after first_max_ms milliseconds
                have passed since the query began accumulating results",
                but generally not very long after, for update notifications
                after the gathering phase of the query has finished.
*/
struct MDQueryBatchingParams {
  var first_max_num: Int
  var first_max_ms: Int
  var progress_max_num: Int
  var progress_max_ms: Int
  var update_max_num: Int
  var update_max_ms: Int
  init()
  init(first_max_num: Int, first_max_ms: Int, progress_max_num: Int, progress_max_ms: Int, update_max_num: Int, update_max_ms: Int)
}

/*!
        @function MDQueryGetBatchingParameters
        Returns the current parameters that control batching of progress
                notifications.
        @param query The query to be interrogated.
        @result An MDQueryBatchingParams structure with the current
                batching parameters.
*/
@available(OSX 10.4, *)
func MDQueryGetBatchingParameters(query: MDQuery!) -> MDQueryBatchingParams

/*!
        @function MDQuerySetBatchingParameters
        @param query The query whose batching parameters are to be set.
        @param params An MDQueryBatchingParams structure with the batching
                parameters to set.
*/
@available(OSX 10.4, *)
func MDQuerySetBatchingParameters(query: MDQuery!, _ params: MDQueryBatchingParams)

/*!
        @typedef MDQueryCreateResultFunction
        Type of the callback function used to create the result objects
                stored and returned by an MDQuery. The function may
                hold onto the given MDItemRef in some other data
                structure, but must retain it for it to remain valid.
                The create-result function is called lazily as results
                are requested from a query, so it will not generally
                be called on all results, if in fact any. This avoids
                the cost of creating potentially hundreds of thousands
                of what might be temporary objects.
        @param query The MDQuery instance.
        @param item The default MDItemRef for the result.
        @param context The user-defined context parameter given to
                MDQuerySetCreateResultFunction().
        @result The function must return a pointer-sized value that can
                be managed with the callbacks which were set at the same
                time the create function was given to the query. The
                value must be returned with a reference (such as if the
                retain callback had been called on it), as implied by the
                Create name. If this function doesn't wish to create a
                new object, it can return the given MDItemRef, but must
                also return it with a new retain, and the callbacks must
                be able to handle an MDItemRef as an input value. If
                this function returns NULL, NULL will be stored for the
                moment in the query, MDQueryGetResultAtIndex() may return
                NULL for that result, and the next time the query wants
                the result, it will call this function again.
*/
typealias MDQueryCreateResultFunction = @convention(c) (MDQuery!, MDItem!, UnsafeMutablePointer<Void>) -> UnsafePointer<Void>

/*!
        @function MDQuerySetCreateResultFunction
        Sets the function used to create the result objects of the
                MDQuery. If no create function is set on an MDQuery,
                the default result objects are MDItemRefs. Results
                created after a create function is set will be created
                through the given create function, but values created
                before the function was set (or after it is unset) are
                not modified. Therefore it is not advisable to change
                this function after MDQueryExecute() has been called
                with the query. The create-result function is called
                lazily as results are requested from a query, so it will
                not generally be called on all results, if in fact any.
                This avoids the cost of creating potentially hundreds
                of thousands of what might be temporary objects.
        @param query The query to whose result create function is to be set.
        @param func The callback function the MDQuery will use to
                create its results, such as those returned from
                MDQueryGetResultAtIndex(). This parameter
                may be NULL, in which case any previous result creation
                settings are cancelled, and the MDQuery will subsequently
                produce MDItemRefs. If the function (when the parameter is
                not NULL) is not of type MDQueryCreateResultFunction or
                does not behave as a MDQueryCreateResultFunction must,
                the behavior is undefined.
        @param context A pointer-sized user-defined value, which is
                passed as the third parameter to the create function,
                but is otherwise unused by MDQuery. The MDQuery does
                not retain the context in any way, so it must remain
                valid for at least the lifetime of the query. If the
                context is not what is expected by the create function,
                the behavior is undefined.
        @param cb A pointer to a CFArrayCallBacks structure
                initialized with the callbacks for the query to use to
                manage the created result objects. A copy of the
                contents of the callbacks structure is made, so that a
                pointer to a structure on the stack can be passed in, or
                can be reused for multiple query creations. Only version
                0 of the CFArrayCallBacks is supported. The retain field
                may be NULL, in which case the MDQuery will do nothing to
                add a retain to the created results for the query. The
                release field may be NULL, in which case the MDQuery will
                do nothing to remove the query's retain (such as the one
                it gets from the create function) on the result objects
                when the query is destroyed. If the copyDescription field
                is NULL, the query will create a simple description for
                the result objects. If the equal field is NULL, the query
                will use pointer equality to test for equality of results.
                This callbacks parameter itself may be NULL, which is
                treated as if a valid structure of version 0 with all
                fields NULL had been passed in. Otherwise, if any of the
                fields are not valid pointers to functions of the correct
                type, or this parameter is not a valid pointer to a
                CFArrayCallBacks callbacks structure, the behavior is
                undefined. If any of the value values returned from the
                create function is not one understood by one or more of
                the callback functions, the behavior when those callback
                functions are used is undefined. For example, if the create
                function can return NULL, then NULL must be understood by
                the callback functions as a possible parameter. The retain
                and release callbacks must be a matched set -- do not
                assume that the retain function will be unused or that
                additional reference counts will not be taken on the
                created results.
*/
@available(OSX 10.4, *)
func MDQuerySetCreateResultFunction(query: MDQuery!, _ `func`: MDQueryCreateResultFunction!, _ context: UnsafeMutablePointer<Void>, _ cb: UnsafePointer<CFArrayCallBacks>)

/*!
        @typedef MDQueryCreateValueFunction
        Type of the callback function used to create the value objects
                stored and returned by an MDQuery. The function may
                hold onto the given attribute name and/or value in some
                other data structure, but must retain them for them to
                remain valid.
        @param query The MDQuery instance.
        @param attrName The attribute name of the value.
        @param attrValue The default value of the value.
        @param context The user-defined context parameter given to
                MDQuerySetCreateValueFunction().
        @result The function must return a pointer-sized value that can
                be managed with the callbacks which were set at the same
                time the create function was given to the query. The
                value must be returned with a reference (such as if the
                retain callback had been called on it), as implied by the
                Create name. If this function doesn't wish to create a
                new object, it can return the given CFTypeRef, but must
                also return it with a new retain, and the callbacks must
                be able to handle a CFTypeRef as an input value.
*/
typealias MDQueryCreateValueFunction = @convention(c) (MDQuery!, CFString!, AnyObject!, UnsafeMutablePointer<Void>) -> UnsafePointer<Void>

/*!
        @function MDQuerySetCreateValueFunction
        Sets the function used to create the value objects of the
                MDQuery. These are the values of the value lists that
                were requested when the query was created. If no create
                function is set on an MDQuery, the default value objects
                are the CFTypeRef values of the attributes. Values
                created after a create function is set will be created
                through the given create function, but values created
                before the function was set (or after it is unset)
                are not modified. Therefore it is not advisable to
                change this function after MDQueryExecute() has been
                called with the query.
        @param query The query to whose value create function is to be set.
        @param func The callback function the MDQuery will use to
                create the value list values, such as those returned from
                MDQueryCopyValuesOfAttribute(). This parameter
                may be NULL, in which case any previous value creation
                settings are cancelled, and the MDQuery will subsequently
                produce the default CFTypeRefs. If the function (when the
                parameter is not NULL) is not of type
                MDQueryCreateValueFunction or does not behave as a
                MDQueryCreateValueFunction must, the behavior is undefined.
        @param context A pointer-sized user-defined value, which is
                passed as the fourth parameter to the create function,
                but is otherwise unused by MDQuery. The MDQuery does
                not retain the context in any way, so it must remain
                valid for at least the lifetime of the query. If the
                context is not what is expected by the create function,
                the behavior is undefined.
        @param cb A pointer to a CFArrayCallBacks structure
                initialized with the callbacks for the query to use to
                manage the created value objects. A copy of the
                contents of the callbacks structure is made, so that a
                pointer to a structure on the stack can be passed in, or
                can be reused for multiple query creations. Only version
                0 of the CFArrayCallBacks is supported. The retain field
                may be NULL, in which case the MDQuery will do nothing to
                add a retain to the created values for the query. The
                release field may be NULL, in which case the MDQuery will
                do nothing to remove the query's retain (such as the one
                it gets from the create function) on the value objects
                when the query is destroyed. If the copyDescription field
                is NULL, the query will create a simple description for
                the value objects. If the equal field is NULL, the query
                will use pointer equality to test for equality of values.
                This callbacks parameter itself may be NULL, which is
                treated as if a valid structure of version 0 with all
                fields NULL had been passed in. Otherwise, if any of the
                fields are not valid pointers to functions of the correct
                type, or this parameter is not a valid pointer to a
                CFArrayCallBacks callbacks structure, the behavior is
                undefined. If any of the value values returned from the
                create function is not one understood by one or more of
                the callback functions, the behavior when those callback
                functions are used is undefined. For example, if the
                create function can return NULL, then NULL must be
                understood by the callback functions as a possible
                parameter. The retain and release callbacks must be a
                matched set -- do not assume that the retain function will
                be unused or that additional reference counts will not be
                taken on the created values.
*/
@available(OSX 10.4, *)
func MDQuerySetCreateValueFunction(query: MDQuery!, _ `func`: MDQueryCreateValueFunction!, _ context: UnsafeMutablePointer<Void>, _ cb: UnsafePointer<CFArrayCallBacks>)

/*!
	@function MDQuerySetDispatchQueue
	Set the dispatch queue on which query results will be delivered
				by MDQueryExecute. It is not advisable to change set 
				dispatch queue after MDQueryExecute() has been called with
				the query. Setting the dispatch queue for a synchronous 
				query (kMDQuerySynchronous) has no effect.
	@param query The query for which the dispatch queue should be set.
	@param queue The dispatch queue on which results should be delivered.
 */
@available(OSX 10.6, *)
func MDQuerySetDispatchQueue(query: MDQuery!, _ queue: dispatch_queue_t!)

/*!
        @function MDQueryExecute
        Run the query, and populate the query with the results. Queries
                only gather results or process updates while the current
                thread's run loop is running. Queries normally operate
                asynchronously, and send out progress and update
                notifications to report changes to the list of results
                that has been collected. Queries have two phases: the
                initial gathering of all currently matching results, and
                a second live-update phase where queries monitor the
                state of the system and update themselves to external
                changes in files or the operating environment (for example,
                as time advances, files which did not match the query
                when it was started may later match the query). Query
                notifications are posted within the context of the same
                thread which executes the query.
                [[There are three operational modes: (1) synchronous static
                queries, which collect the list of current results and then
                do not watch for updates to the results, (2) asynchronous
                static queries, which collect the results asychronously
                after this function returns, and then do not watch for
                updates to the results, and (3) asynchronous live queries
                which collect the initial results asychronously after this
                function returns, and then do watch for updates to the
                results, until the query is destroyed. There is little
                reason not to allow the fourth case, synchronous collection
                of initial results, followed by asynchronous monitoring
                for updates, so this may change in the future.]]
        @param query The query to execute.
        @param optionFlags Bitwise or of MDQueryOptionFlags
        @result Returns true if the query was started (executed in the case
                of a synchronous query), false otherwise. Queries cannot be
                executed more than once.
*/
@available(OSX 10.4, *)
func MDQueryExecute(query: MDQuery!, _ optionFlags: CFOptionFlags) -> Bool

/*!
        @function MDQueryStop
        Stops the query from ever generating more results. Queries may be
                executed only once, so a stopped query cannot be
                restarted. The query will also not generate any result
                updates. The query is static after this function returns.
                The query will do final processing of results that have
                come in but not yet been processed (because, say, the
                batching parameters hasn't triggered that yet). That may
                trigger a progress notification, so be aware of that if
                you are stopping a query from within your progress note
                handler; that is, during this function, a recursive
                progress and/or finished notification might occur, which
                might recursively call your notification handler. It is
                safe to call this function recursively. You would call
                this function to stop a query that is generating way too
                many results to be useful, but still want to access the
                results that have come in so far. If a query is stopped
                before the gathering phase finishes, it will not report
                itself as finished, nor will it send out a finished
                notification.
        @param query The query to stop.
*/
@available(OSX 10.4, *)
func MDQueryStop(query: MDQuery!)

/*!
        @function MDQueryDisableUpdates
        Disables updates to the query result list. This should be called
                before iterating through the list of results to prevent
                the result list from changing during the iteration. The
                disabled state is a counter, and disabling can be done
                recursively and from different threads.
        @param query The query for which updates are to be disabled.
		@result The generation number of the query. This changes each time the query's 
				result set has changed.
*/
@available(OSX 10.4, *)
func MDQueryDisableUpdates(query: MDQuery!)

/*!
        @function MDQueryEnableUpdates
        Re-enables updates to the query result list. This should be called
                when finished iterating through the list of results, to
                allow changes to the result list to occur. Changes will
                be allowed when all the disables have been matched by a
                corresponding enable.
        @param query The query for which updates are to be enabled.
*/
@available(OSX 10.4, *)
func MDQueryEnableUpdates(query: MDQuery!)

/*!
        @function MDQueryIsGatheringComplete
        Returns true if the first phase of a query, the initial result
                gathering, has finished.
        @param query The query to be interrogated.
        @result A boolean indicating whether or not the first phase
                of a query has completed.
 */
@available(OSX 10.4, *)
func MDQueryIsGatheringComplete(query: MDQuery!) -> Bool

/*!
        @function MDQueryGetResultCount
        Returns the number of results currently collected by the query.
                Note that the number of results in a query will change
                over time as the query's result list is updated.
        @param query The query to be interrogated.
        @result The number of results in the query.
*/
@available(OSX 10.4, *)
func MDQueryGetResultCount(query: MDQuery!) -> CFIndex

/*!
        @function MDQueryGetResultAtIndex
        Returns the current result at the given index. This function
                causes the result object to be created if it hasn't
                been created already. For performance reasons, it is
                not advisable to ask for results that you don't need,
                to avoid the cost of creating them. If possible, call
                this function to fetch only the results you need to
                display or otherwise process. Note that the index of
                a particular result will change over time, as the
                query's result list is updated.
        @param query The query to be interrogated.
        @param idx The index into the query's result list. If the index is
                negative, or is equal to or larger than the current
                number of results in the query, the behavior is undefined.
        @result Returns the MDItemRef currently at the given index, or
                if a result-create function has been set, returns the
                result returned by that function.
*/
@available(OSX 10.4, *)
func MDQueryGetResultAtIndex(query: MDQuery!, _ idx: CFIndex) -> UnsafePointer<Void>

/*!
        @function MDQueryGetIndexOfResult
        Returns the current index of the given result. If a result-create
                function has been set, and the equal callback is non-NULL,
                it will be used to test the query's results against the
                candidate result. Note that the index of a result will
                change over time, as the query's result list is updated.
        @param query The query to be interrogated.
        @param result The candidate result object for which to search.
                If a custom create-result function has been set, and this
                parameter is not a valid result object that the provided
                callbacks can handle, the behavior is undefined. If a custom
                create-result function has not been set, this parameter
                must be a valid MDItemRef.
        @result The index of the given result, or kCFNotFound if the
                value is not one of the query's existing results. If
                you provided a custom result creation function, 
                as well as a custom object comparator function,
                result will be objects created by that function.
*/
@available(OSX 10.4, *)
func MDQueryGetIndexOfResult(query: MDQuery!, _ result: UnsafePointer<Void>) -> CFIndex

/*!
        @function MDQueryGetAttributeValueOfResultAtIndex
        Returns the value of the named attribute for the result at
                the given index.
        @param query The query to be interrogated.
        @param name The attribute name for which to return the values.
                If the attribute is not one of those requested in the
                valueListAttrs or sortingAttrs parameters to one of
                the query creation functions, the result will be NULL.
        @param idx The index into the query's result list. If the index is
                negative, or is equal to or larger than the current
                number of results in the query, the behavior is undefined.
        @result The value of the attribute, or NULL if the attribute
                doesn't exist in the query on that result.
*/
@available(OSX 10.4, *)
func MDQueryGetAttributeValueOfResultAtIndex(query: MDQuery!, _ name: CFString!, _ idx: CFIndex) -> UnsafeMutablePointer<Void>

/*!
        @function MDQueryCopyValuesOfAttribute
        Returns the list of values, from the results of the query, of the
                named attribute. The list is not ordered in any way. The
                list contains only one occurrence of each value. Note that
                this list may change over time, as the query's result list
                is updated.
        @param query The query to be interrogated.
        @param name The attribute name for which to return the values.
                If the attribute is not one of those requested in the
                valueListAttrs parameter to one of the query creation
                functions, the behavior is undefined.
        @result A CFArray holding the value objects for that attribute.
*/
@available(OSX 10.4, *)
func MDQueryCopyValuesOfAttribute(query: MDQuery!, _ name: CFString!) -> CFArray!

/*!
        @function MDQueryGetCountOfResultsWithAttributeValue
        Returns the number of results which have the given attribute and
                attribute value. Note that this count may change over time,
                as the query's result list is updated.
        @param query The query to be interrogated.
        @param name The attribute name for which to return the number
                of results with the given value. If the attribute is not
                one of those requested in the valueListAttrs parameter to
                one of the query creation functions, the behavior is
                undefined.
        @param value The attribute value for which to return the number
                of results with that value. This parameter may be NULL,
                in which case the number of results that do not contain
                the named attribute is returned.
        @result The number of results with that attribute and value.
*/
@available(OSX 10.4, *)
func MDQueryGetCountOfResultsWithAttributeValue(query: MDQuery!, _ name: CFString!, _ value: AnyObject!) -> CFIndex

/*!
 @function MDQuerySetSortOrder
 Sets the sort order for a query.
 @param query The query for which the sort order is to be set.
 @param sortingAttrs An array of attribute names, as in MDQueryCreate. 
  The query's result set will be sorted according to the order of
  these attributes. All names in the array have to have been passed
  as sortingAttrs when the query was created. The attribute names 
  are CFStrings
 @result A boolean, true on success, false on failure.
 */
@available(OSX 10.7, *)
func MDQuerySetSortOrder(query: MDQuery!, _ sortingAttrs: CFArray!) -> Bool

/*!   
 @enum MDQuerySortOptionFlags
 @constant kMDQueryReverseSortOrderFlag Sort the attribute in reverse order.
 */
struct MDQuerySortOptionFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kMDQueryReverseSortOrderFlag: MDQuerySortOptionFlags { get }

/*!
 @function MDQuerySetSortOptionFlagsForAttribute
 Sets the sort flags for a query.
 @param query The query for which the sort flags is to be set.
 @param fieldName The attribute name for which sort option flags are to be set.  
  The attribute name must have been part of the sortingFlags when the query was created.
 @param flags A uint32_t containing MDQuerySortOptionFlags to be applied to the attibute
 @result A boolean, true on success, false on failure.
 */
@available(OSX 10.7, *)
func MDQuerySetSortOptionFlagsForAttribute(query: MDQuery!, _ fieldName: CFString!, _ flags: UInt32) -> Bool

/*!
 @function MDQueryGetSortOptionFlagsForAttribute
 Gets the sort option flags for a sorting attribute.
 @param query The query for which fetch sort option flags.
 @param fieldName The attribute name for which sort option flags are to be fetched.  
 @result A uint32_t, with MDQuerySortOptionFlags set for the attribute.
 */
@available(OSX 10.7, *)
func MDQueryGetSortOptionFlagsForAttribute(query: MDQuery!, _ fieldName: CFString!) -> UInt32

/*!
        @typedef MDQuerySortComparatorFunction
        Type of the callback function used to sort the results of an
                MDQuery.
        @param query The MDQuery instance.
        @param attrs1 A C array of attribute values for a result. The
                values occur in the array in the same order and position
                that the attribute names were passed in the sortingAttrs
                array when the query was created. The values of the
                attributes might be NULL, if the attribute doesn't exist
                on a result or if read access to that attribute is not
                allowed.
        @param attrs2 A C array of attribute values for a result. The
                values occur in the array in the same order and position
                that the attribute names were passed in the sortingAttrs
                array when the query was created. The values of the
                attributes might be NULL, if the attribute doesn't exist
                on a result or if read access to that attribute is not
                allowed.
        @param context The user-defined context parameter given to
                MDQuerySetSortComparator().
        @result The function must return one of the CFComparisonResults
                kCFCompareLessThan, kCFCompareEqualTo, or
                kCFCompareGreaterThan. There is no provision for unordered
                results. The comparison must be a total order relation,
                and additionally produce temporally identical results (that
                is, produce the same results for the same inputs in the
                future as now), for the sort results to be predictable.
*/
typealias MDQuerySortComparatorFunction = @convention(c) (UnsafePointer<Unmanaged<AnyObject>?>, UnsafePointer<Unmanaged<AnyObject>?>, UnsafeMutablePointer<Void>) -> CFComparisonResult

/*!
        @function MDQuerySetSortComparator
        Sets the function used to sort the results of an MDQuery. You
                may set the comparator function as many times as you
                like, even while the query is executing. Whenever the
                comparator function is set, all results are re-sorted
                using the new comparator function before the function
                returns. The function pointer can be NULL to cancel
                custom sorting and revert to the default sorting.
                The default sort provided by MDQueryCreate()
                is a assending sort strings are compared using
                CFStringCompare() with the options kCFCompareNonliteral |
                kCFCompareLocalized | kCFCompareNumerically. CFDataRefs are
                compared by using memcmp() of the data pointers.
        @param query The query to whose result sort function is to be set.
        @param func The callback function the MDQuery will use to
                sort its results. If the function (when the parameter is
                not NULL) is not of type MDQuerySortComparatorFunction or
                does not behave as a MDQuerySortComparatorFunction must,
                the behavior is undefined. The function pointer may
                be NULL to cancel any custom comparator.
        @param context A pointer-sized user-defined value, which is
                passed as the third parameter to the sort function,
                but is otherwise unused by MDQuery. The MDQuery does
                not retain the context in any way, so it must remain
                valid for the lifetime of the query or until the sort
                function is set again. If the context is not what is
                expected by the comparator, the behavior is undefined.
*/
@available(OSX 10.4, *)
func MDQuerySetSortComparator(query: MDQuery!, _ comparator: MDQuerySortComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
@available(OSX 10.6, *)
func MDQuerySetSortComparatorBlock(query: MDQuery!, _ comparator: ((UnsafePointer<Unmanaged<AnyObject>?>, UnsafePointer<Unmanaged<AnyObject>?>) -> CFComparisonResult)!)

/*!
        @constant kMDQueryProgressNotification
        The name of the notification sent to indicate changes to the
                query's results list during the initial gathering phase
                of a query's execution. Mostly adds will occur during
                this phase, but removals and changes can also occur, as
                in any update. This info dictionary parameter of the
                notification can carry the kMDQueryUpdateChangedItems
                and kMDQueryUpdateRemovedItems keys. Note that these
                keys may be have empty arrays for values, or be missing,
                if there are no changes of that particular type. For
                performance reasons, added results are not indicated in
                progress notifications (to avoid the cost of creating
                the result objects). These notifications are sent out
                by a query before the kMDQueryDidFinishNotification.
*/
@available(OSX 10.4, *)
let kMDQueryProgressNotification: CFString!

/*!
        @constant kMDQueryDidFinishNotification
        The name of the notification sent to indicate that the query has
                finished with the initial result-gathering phase, and may
                now proceed into the live-update phase (if that option
                was chosen when the query was executed). This notification
                often shortly follows after the last progress notification.
                It is usually not necessary to update any displayed UI in
                response to this notification, since it doesn't indicate
                any change in the result list of a query.
*/
@available(OSX 10.4, *)
let kMDQueryDidFinishNotification: CFString!

/*!
        @constant kMDQueryDidUpdateNotification
        The name of the notification sent to indicate changes to the
                query's results list during the second, live-update, phase
                of a query's execution. This notification can carry the
                kMDQueryUpdateAddedItems, kMDQueryUpdateChangedItems,
                and kMDQueryUpdateRemovedItems keys in the info
                dictionary parameter of the notification. Note that these
                keys may be have empty arrays for values, or be missing,
                if there are no changes of that particular type. These
                notifications are sent out by a query after the
                kMDQueryDidUpdateNotification.
*/
@available(OSX 10.4, *)
let kMDQueryDidUpdateNotification: CFString!

/*!
        @constant kMDQueryUpdateAddedItems
        The name of the key in a query notification's info dictionary
                which identifies the list of added results. A result is
                added if the file contents or some metadata attribute
                of it is changed, and it now matches the query. Result
                objects are created for the newly added results, to be
                put in the list.
*/
@available(OSX 10.4, *)
let kMDQueryUpdateAddedItems: CFString!

/*!
        @constant kMDQueryUpdateChangedItems
        The name of the key in a query notification's info dictionary
                which identifies the list of changed results. A result
                is changed if the file contents or some metadata
                attribute of it is changed, but it still matches the
                query. The list only contains result objects which have
                previously been created, and does not indicate results
                which have been changed for which result objects have
                not been created.
                [[This is for performance reasons, to avoid creating
                result objects just to represent a change of a result
                which has not been looked at, but this semantic may
                change.]]
*/
@available(OSX 10.4, *)
let kMDQueryUpdateChangedItems: CFString!

/*!
        @constant kMDQueryUpdateRemovedItems
        The name of the key in a query notification's info dictionary
                which identifies the list of removed results. A result
                can be removed if it no longer matches the query. The
                list only contains result objects which have previously
                been created, and does not indicate results which have
                been removed for which result objects have not been
                created.
                [[This is for performance reasons, to avoid creating
                temporary result objects just to represent the deletion
                of the result, but this semantic may change.]]
*/
@available(OSX 10.4, *)
let kMDQueryUpdateRemovedItems: CFString!

/*!
        @constant kMDQueryResultContentRelevance
        The name of a query-specific attribute for use in sorting.
                The relevance of an item is a CFNumberRef with a
                floating point value. This is the relevance for
                content searches.
                The maximum and minimum values for a particular
                search cannot be determined until all of the results
                have been returned.  If there are multiple
                kMDItemTextContent predicates in the query, no
                relevance is returned.
                This is an attribute of a result item that is
                specific to the item in the context of the query.
                Also, the relevance does not compare the result
                relative to the other results of a query, but is
                computed just on the result item itself. Finally,
                this is only the relevance value for content,
                not a relevance for the item as a whole. The
                relevance attribute may not even be computed for
                an item if the item is found to match the query
                through evaluation of other attributes of the
                item than its contents. If the value is not
                computed, it is treated as an attribute on the
                item which does not exist (for sorting purposes,
                for example).
*/
@available(OSX 10.4, *)
let kMDQueryResultContentRelevance: CFString!

/*!
    @function MDQuerySetSearchScope
    @discussion Use MDQuerySetSearchScope to limit the results
             returned by the query engine to those MDItemRefs that
             appear  within the specified directories.  This may be
             used to limit searching to particular volumes. Tilde
			 paths, or environment variables are not expanded.
			 Calling this multiple times will replace the previous
			 options. This must be called before the query is executed.
    @param query The query object to modify.
    @param scopeDirectories a CFArray of CFStringRef or CFURLRef objects which
           specify where to search.  For conveinience, the kMDQueryScopeHome,
			kMDQueryScopeComputer and kMDQueryScopeNetwork constants may also
			be present in this array.
    @param scopeOptions additional options for modifying the search.
           Currently, pass 0 (zero).
 */
@available(OSX 10.4, *)
func MDQuerySetSearchScope(query: MDQuery!, _ scopeDirectories: CFArray!, _ scopeOptions: OptionBits)

/*!
@constant kMDQueryScopeHome
	A constant, which can be passed in the scopeDirectories array, to specify
	that the search should be restricted to the volume and directory that contains
	the current user's home directory
 */
@available(OSX 10.4, *)
let kMDQueryScopeHome: CFString!

/*!
@constant kMDQueryScopeComputer
	A constant, which can be passed in the scopeDirectories array, to specify
	that the search should be restricted to all locally mounted volumes, plus the user's
	home directory (which may be on a remote volume).
 */
@available(OSX 10.4, *)
let kMDQueryScopeComputer: CFString!

/*!
@constant kMDQueryScopeNetwork
	A constant, which can be passed in the scopeDirectories array, to specify
	that the search should include all user mounted remote volumes.
 */
@available(OSX 10.4, *)
let kMDQueryScopeNetwork: CFString!

/*!
 @constant kMDQueryScopeAllIndexed
 A constant, which can be passed in the scopeDirectories array, to specify
 that the search should be restricted to indexed, locally mounted volumes and
 indexed user mounted remote volumes, plus the user's home directory.
 */
@available(OSX 10.6, *)
let kMDQueryScopeAllIndexed: CFString!

/*!
 @constant kMDQueryScopeComputerIndexed
 A constant, which can be passed in the scopeDirectories array, to specify
 that the search should be restricted to indexed, locally mounted volumes, plus the user's
 home directory (which may be on a remote volume).
 */
@available(OSX 10.6, *)
let kMDQueryScopeComputerIndexed: CFString!

/*!
 @constant kMDQueryScopeNetworkIndexed
 A constant, which can be passed in the scopeDirectories array, to specify
 that the search should include indexed user mounted remote volumes.
 */
@available(OSX 10.6, *)
let kMDQueryScopeNetworkIndexed: CFString!

/*!
 @function MDQuerySetMaxCount
 @discussion Use MDQuerySetMaxCount to limit the number of results
 returned by the query engine.  This must be called before the query is executed.
 @param query The query object to modify.
 @param size The maximum number of results desired.
 */
@available(OSX 10.5, *)
func MDQuerySetMaxCount(query: MDQuery!, _ size: CFIndex)

/*!
	@function MDSchemaCopyAttributesForContentType
        Returns an dictionary attributes to display or show the
                user for a given UTI type. This function does not walk up the
                UTI hiearchy and perform a union of the information.
        @param utiType the UTI type to be interrogated.
        @result A CFDictionaryRef with keys ==  to kMDAttributeDisplayValues etc..

*/
@available(OSX 10.4, *)
func MDSchemaCopyAttributesForContentType(contentTypeUTI: CFString!) -> CFDictionary!

/*!
        @function MDSchemaCopyMetaAttributesForAttribute
        Returns an dictionary of the meta attributes of attribute
        @param name the attribute whose schema you are interested in.
        @result A CFDictionary of the description of the attribute.
*/
@available(OSX 10.4, *)
func MDSchemaCopyMetaAttributesForAttribute(name: CFString!) -> CFDictionary!

/*!
        @function MDSchemaCopyAllAttributes
        Returns an array of all of the attributes defined in the schema
        @result A CFArray of the attribute names.
*/
@available(OSX 10.4, *)
func MDSchemaCopyAllAttributes() -> CFArray!

/*!
        @function MDSchemaCopyDisplayNameForAttribute
        Returns the localized name of an attribute
        @param name the attribute whose localization you are interested in
        @result the localized name of the passed in attribute, or NULL if there is
                 no localized name is avaliable.
*/
@available(OSX 10.4, *)
func MDSchemaCopyDisplayNameForAttribute(name: CFString!) -> CFString!

/*!
        @function MDSchemaCopyDisplayDescriptionForAttribute
        Returns the localized description of an attribute.
        @param name the attribute whose localization you are interested in
        @result the localized description of the passed in attribute, or NULL if there is
                 no localized description is avaliable.
*/
@available(OSX 10.4, *)
func MDSchemaCopyDisplayDescriptionForAttribute(name: CFString!) -> CFString!
@available(OSX 10.4, *)
let kMDAttributeDisplayValues: CFString!
@available(OSX 10.4, *)
let kMDAttributeAllValues: CFString!
@available(OSX 10.5, *)
let kMDAttributeReadOnlyValues: CFString!
@available(OSX 10.5, *)
let kMDExporterAvaliable: CFString!
@available(OSX 10.4, *)
let kMDAttributeName: CFString!
@available(OSX 10.4, *)
let kMDAttributeType: CFString!
@available(OSX 10.4, *)
let kMDAttributeMultiValued: CFString!
typealias CSIdentityRef = CSIdentity
typealias CSIdentityQueryRef = CSIdentityQuery
@available(OSX 10.5, *)
let kCSIdentityGeneratePosixName: CFString!
var kCSIdentityClassUser: Int { get }
var kCSIdentityClassGroup: Int { get }
typealias CSIdentityClass = CFIndex
var kCSIdentityFlagNone: Int { get }
var kCSIdentityFlagHidden: Int { get }
typealias CSIdentityFlags = CFOptionFlags
@available(OSX 10.5, *)
func CSIdentityGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CSIdentityCreate(allocator: CFAllocator!, _ identityClass: CSIdentityClass, _ fullName: CFString!, _ posixName: CFString!, _ flags: CSIdentityFlags, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentity>!
@available(OSX 10.5, *)
func CSIdentityCreateCopy(allocator: CFAllocator!, _ identity: CSIdentity!) -> Unmanaged<CSIdentity>!
@available(OSX 10.5, *)
func CSIdentityGetClass(identity: CSIdentity!) -> CSIdentityClass
@available(OSX 10.5, *)
func CSIdentityGetAuthority(identity: CSIdentity!) -> Unmanaged<CSIdentityAuthority>!
@available(OSX 10.5, *)
func CSIdentityGetUUID(identity: CSIdentity!) -> Unmanaged<CFUUID>!
@available(OSX 10.5, *)
func CSIdentityGetFullName(identity: CSIdentity!) -> Unmanaged<CFString>!
@available(OSX 10.5, *)
func CSIdentityGetPosixID(identity: CSIdentity!) -> id_t
@available(OSX 10.5, *)
func CSIdentityGetPosixName(identity: CSIdentity!) -> Unmanaged<CFString>!
@available(OSX 10.5, *)
func CSIdentityGetEmailAddress(identity: CSIdentity!) -> Unmanaged<CFString>!
@available(OSX 10.5, *)
func CSIdentityGetImageURL(identity: CSIdentity!) -> Unmanaged<CFURL>!
@available(OSX 10.5, *)
func CSIdentityGetImageData(identity: CSIdentity!) -> Unmanaged<CFData>!
@available(OSX 10.5, *)
func CSIdentityGetImageDataType(identity: CSIdentity!) -> Unmanaged<CFString>!
@available(OSX 10.5, *)
func CSIdentityGetAliases(identity: CSIdentity!) -> Unmanaged<CFArray>!
@available(OSX 10.5, *)
func CSIdentityIsMemberOfGroup(identity: CSIdentity!, _ group: CSIdentity!) -> Bool
@available(OSX 10.5, *)
func CSIdentityIsHidden(identity: CSIdentity!) -> Bool
@available(OSX 10.5, *)
func CSIdentityCreatePersistentReference(allocator: CFAllocator!, _ identity: CSIdentity!) -> Unmanaged<CFData>!
@available(OSX 10.5, *)
func CSIdentityIsEnabled(user: CSIdentity!) -> Bool
@available(OSX 10.5, *)
func CSIdentityAuthenticateUsingPassword(user: CSIdentity!, _ password: CFString!) -> Bool
@available(OSX 10.5, *)
func CSIdentityGetCertificate(user: CSIdentity!) -> Unmanaged<SecCertificate>!
@available(OSX 10.5, *)
func CSIdentityCreateGroupMembershipQuery(allocator: CFAllocator!, _ group: CSIdentity!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentitySetFullName(identity: CSIdentity!, _ fullName: CFString!)
@available(OSX 10.5, *)
func CSIdentitySetEmailAddress(identity: CSIdentity!, _ emailAddress: CFString!)
@available(OSX 10.5, *)
func CSIdentitySetImageURL(identity: CSIdentity!, _ url: CFURL!)
@available(OSX 10.5, *)
func CSIdentitySetImageData(identity: CSIdentity!, _ imageData: CFData!, _ imageDataType: CFString!)
@available(OSX 10.5, *)
func CSIdentityAddAlias(identity: CSIdentity!, _ alias: CFString!)
@available(OSX 10.5, *)
func CSIdentityRemoveAlias(identity: CSIdentity!, _ alias: CFString!)
@available(OSX 10.5, *)
func CSIdentityAddMember(group: CSIdentity!, _ member: CSIdentity!)
@available(OSX 10.5, *)
func CSIdentityRemoveMember(group: CSIdentity!, _ member: CSIdentity!)
@available(OSX 10.5, *)
func CSIdentitySetIsEnabled(user: CSIdentity!, _ isEnabled: Bool)
@available(OSX 10.5, *)
func CSIdentitySetPassword(user: CSIdentity!, _ password: CFString!)
@available(OSX 10.5, *)
func CSIdentitySetCertificate(user: CSIdentity!, _ certificate: SecCertificate!)
@available(OSX 10.5, *)
func CSIdentityDelete(identity: CSIdentity!)
@available(OSX 10.5, *)
func CSIdentityCommit(identity: CSIdentity!, _ authorization: AuthorizationRef, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
var kCSIdentityCommitCompleted: Int { get }
typealias CSIdentityStatusUpdatedCallback = @convention(c) (CSIdentity!, CFIndex, CFError!, UnsafeMutablePointer<Void>) -> Void
struct CSIdentityClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  var statusUpdated: CSIdentityStatusUpdatedCallback!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!, statusUpdated: CSIdentityStatusUpdatedCallback!)
}
@available(OSX 10.5, *)
func CSIdentityCommitAsynchronously(identity: CSIdentity!, _ clientContext: UnsafePointer<CSIdentityClientContext>, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!, _ authorization: AuthorizationRef) -> Bool
@available(OSX 10.5, *)
func CSIdentityIsCommitting(identity: CSIdentity!) -> Bool
@available(OSX 10.5, *)
func CSIdentityRemoveClient(identity: CSIdentity!)
typealias CSIdentityAuthorityRef = CSIdentityAuthority
@available(OSX 10.5, *)
func CSIdentityAuthorityGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CSGetDefaultIdentityAuthority() -> Unmanaged<CSIdentityAuthority>!
@available(OSX 10.5, *)
func CSGetLocalIdentityAuthority() -> Unmanaged<CSIdentityAuthority>!
@available(OSX 10.5, *)
func CSGetManagedIdentityAuthority() -> Unmanaged<CSIdentityAuthority>!
@available(OSX 10.5, *)
func CSIdentityAuthorityCopyLocalizedName(authority: CSIdentityAuthority!) -> Unmanaged<CFString>!
@available(OSX 10.5, *)
let kCSIdentityErrorDomain: CFString!
var kCSIdentityUnknownAuthorityErr: Int { get }
var kCSIdentityAuthorityNotAccessibleErr: Int { get }
var kCSIdentityPermissionErr: Int { get }
var kCSIdentityDeletedErr: Int { get }
var kCSIdentityInvalidFullNameErr: Int { get }
var kCSIdentityDuplicateFullNameErr: Int { get }
var kCSIdentityInvalidPosixNameErr: Int { get }
var kCSIdentityDuplicatePosixNameErr: Int { get }
@available(OSX 10.5, *)
func CSIdentityQueryGetTypeID() -> CFTypeID
var kCSIdentityQueryGenerateUpdateEvents: Int { get }
var kCSIdentityQueryIncludeHiddenIdentities: Int { get }
typealias CSIdentityQueryFlags = CFOptionFlags
var kCSIdentityQueryStringEquals: Int { get }
var kCSIdentityQueryStringBeginsWith: Int { get }
typealias CSIdentityQueryStringComparisonMethod = CFIndex
@available(OSX 10.5, *)
func CSIdentityQueryCreate(allocator: CFAllocator!, _ identityClass: CSIdentityClass, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentityQueryCreateForName(allocator: CFAllocator!, _ name: CFString!, _ comparisonMethod: CSIdentityQueryStringComparisonMethod, _ identityClass: CSIdentityClass, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentityQueryCreateForUUID(allocator: CFAllocator!, _ uuid: CFUUID!, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentityQueryCreateForPosixID(allocator: CFAllocator!, _ posixID: id_t, _ identityClass: CSIdentityClass, _ authority: CSIdentityAuthority!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentityQueryCreateForPersistentReference(allocator: CFAllocator!, _ referenceData: CFData!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentityQueryCreateForCurrentUser(allocator: CFAllocator!) -> Unmanaged<CSIdentityQuery>!
@available(OSX 10.5, *)
func CSIdentityQueryCopyResults(query: CSIdentityQuery!) -> Unmanaged<CFArray>!
@available(OSX 10.5, *)
func CSIdentityQueryExecute(query: CSIdentityQuery!, _ flags: CSIdentityQueryFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
var kCSIdentityQueryEventSearchPhaseFinished: Int { get }
var kCSIdentityQueryEventResultsAdded: Int { get }
var kCSIdentityQueryEventResultsChanged: Int { get }
var kCSIdentityQueryEventResultsRemoved: Int { get }
var kCSIdentityQueryEventErrorOccurred: Int { get }
typealias CSIdentityQueryEvent = CFIndex
typealias CSIdentityQueryReceiveEventCallback = @convention(c) (CSIdentityQuery!, CSIdentityQueryEvent, CFArray!, CFError!, UnsafeMutablePointer<Void>) -> Void
struct CSIdentityQueryClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retainInfo: CFAllocatorRetainCallBack!
  var releaseInfo: CFAllocatorReleaseCallBack!
  var copyInfoDescription: CFAllocatorCopyDescriptionCallBack!
  var receiveEvent: CSIdentityQueryReceiveEventCallback!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retainInfo: CFAllocatorRetainCallBack!, releaseInfo: CFAllocatorReleaseCallBack!, copyInfoDescription: CFAllocatorCopyDescriptionCallBack!, receiveEvent: CSIdentityQueryReceiveEventCallback!)
}
@available(OSX 10.5, *)
func CSIdentityQueryExecuteAsynchronously(query: CSIdentityQuery!, _ flags: CSIdentityQueryFlags, _ clientContext: UnsafePointer<CSIdentityQueryClientContext>, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!) -> Bool
@available(OSX 10.5, *)
func CSIdentityQueryStop(query: CSIdentityQuery!)
@available(OSX 10.3, *)
let kSKMinTermLength: CFString!
@available(OSX 10.3, *)
let kSKSubstitutions: CFString!
@available(OSX 10.3, *)
let kSKStopWords: CFString!
@available(OSX 10.4, *)
let kSKProximityIndexing: CFString!
@available(OSX 10.4, *)
let kSKMaximumTerms: CFString!
@available(OSX 10.4, *)
let kSKTermChars: CFString!
@available(OSX 10.4, *)
let kSKStartTermChars: CFString!
@available(OSX 10.4, *)
let kSKEndTermChars: CFString!
typealias SKDocumentRef = SKDocument
@available(OSX 10.3, *)
func SKDocumentGetTypeID() -> CFTypeID
@available(OSX 10.3, *)
func SKDocumentCreateWithURL(inURL: CFURL!) -> Unmanaged<SKDocument>!
@available(OSX 10.3, *)
func SKDocumentCopyURL(inDocument: SKDocument!) -> Unmanaged<CFURL>!
@available(OSX 10.3, *)
func SKDocumentCreate(inScheme: CFString!, _ inParent: SKDocument!, _ inName: CFString!) -> Unmanaged<SKDocument>!
@available(OSX 10.3, *)
func SKDocumentGetSchemeName(inDocument: SKDocument!) -> Unmanaged<CFString>!
@available(OSX 10.3, *)
func SKDocumentGetName(inDocument: SKDocument!) -> Unmanaged<CFString>!
@available(OSX 10.3, *)
func SKDocumentGetParent(inDocument: SKDocument!) -> Unmanaged<SKDocument>!
typealias SKIndexRef = SKIndex
@available(OSX 10.3, *)
func SKIndexGetTypeID() -> CFTypeID
typealias SKIndexDocumentIteratorRef = SKIndexDocumentIterator
@available(OSX 10.3, *)
func SKIndexDocumentIteratorGetTypeID() -> CFTypeID
struct SKIndexType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSKIndexUnknown: SKIndexType { get }
var kSKIndexInverted: SKIndexType { get }
var kSKIndexVector: SKIndexType { get }
var kSKIndexInvertedVector: SKIndexType { get }
struct SKDocumentIndexState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSKDocumentStateNotIndexed: SKDocumentIndexState { get }
var kSKDocumentStateIndexed: SKDocumentIndexState { get }
var kSKDocumentStateAddPending: SKDocumentIndexState { get }
var kSKDocumentStateDeletePending: SKDocumentIndexState { get }
@available(OSX 10.3, *)
func SKIndexCreateWithURL(inURL: CFURL!, _ inIndexName: CFString!, _ inIndexType: SKIndexType, _ inAnalysisProperties: CFDictionary!) -> Unmanaged<SKIndex>!
@available(OSX 10.3, *)
func SKIndexOpenWithURL(inURL: CFURL!, _ inIndexName: CFString!, _ inWriteAccess: Bool) -> Unmanaged<SKIndex>!
@available(OSX 10.3, *)
func SKIndexCreateWithMutableData(inData: CFMutableData!, _ inIndexName: CFString!, _ inIndexType: SKIndexType, _ inAnalysisProperties: CFDictionary!) -> Unmanaged<SKIndex>!
@available(OSX 10.3, *)
func SKIndexOpenWithData(inData: CFData!, _ inIndexName: CFString!) -> Unmanaged<SKIndex>!
@available(OSX 10.3, *)
func SKIndexOpenWithMutableData(inData: CFMutableData!, _ inIndexName: CFString!) -> Unmanaged<SKIndex>!
@available(OSX 10.3, *)
func SKIndexFlush(inIndex: SKIndex!) -> Bool
@available(OSX 10.3, *)
func SKIndexSetMaximumBytesBeforeFlush(inIndex: SKIndex!, _ inBytesForUpdate: CFIndex)
@available(OSX 10.3, *)
func SKIndexGetMaximumBytesBeforeFlush(inIndex: SKIndex!) -> CFIndex
@available(OSX 10.3, *)
func SKIndexCompact(inIndex: SKIndex!) -> Bool
@available(OSX 10.3, *)
func SKIndexGetIndexType(inIndex: SKIndex!) -> SKIndexType
@available(OSX 10.3, *)
func SKIndexGetAnalysisProperties(inIndex: SKIndex!) -> Unmanaged<CFDictionary>!
@available(OSX 10.3, *)
func SKIndexGetDocumentCount(inIndex: SKIndex!) -> CFIndex
@available(OSX 10.4, *)
func SKIndexClose(inIndex: SKIndex!)
typealias SKDocumentID = CFIndex
@available(OSX 10.3, *)
func SKIndexAddDocumentWithText(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inDocumentText: CFString!, _ inCanReplace: Bool) -> Bool
@available(OSX 10.3, *)
func SKIndexAddDocument(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inMIMETypeHint: CFString!, _ inCanReplace: Bool) -> Bool
@available(OSX 10.3, *)
func SKIndexRemoveDocument(inIndex: SKIndex!, _ inDocument: SKDocument!) -> Bool
@available(OSX 10.3, *)
func SKIndexCopyDocumentProperties(inIndex: SKIndex!, _ inDocument: SKDocument!) -> Unmanaged<CFDictionary>!
@available(OSX 10.3, *)
func SKIndexSetDocumentProperties(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inProperties: CFDictionary!)
@available(OSX 10.3, *)
func SKIndexGetDocumentState(inIndex: SKIndex!, _ inDocument: SKDocument!) -> SKDocumentIndexState
@available(OSX 10.3, *)
func SKIndexGetDocumentID(inIndex: SKIndex!, _ inDocument: SKDocument!) -> SKDocumentID
@available(OSX 10.3, *)
func SKIndexCopyDocumentForDocumentID(inIndex: SKIndex!, _ inDocumentID: SKDocumentID) -> Unmanaged<SKDocument>!
@available(OSX 10.3, *)
func SKIndexRenameDocument(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inNewName: CFString!) -> Bool
@available(OSX 10.3, *)
func SKIndexMoveDocument(inIndex: SKIndex!, _ inDocument: SKDocument!, _ inNewParent: SKDocument!) -> Bool
@available(OSX 10.3, *)
func SKIndexDocumentIteratorCreate(inIndex: SKIndex!, _ inParentDocument: SKDocument!) -> Unmanaged<SKIndexDocumentIterator>!
@available(OSX 10.3, *)
func SKIndexDocumentIteratorCopyNext(inIterator: SKIndexDocumentIterator!) -> Unmanaged<SKDocument>!
@available(OSX 10.3, *)
func SKIndexGetMaximumDocumentID(inIndex: SKIndex!) -> SKDocumentID
@available(OSX 10.3, *)
func SKIndexGetDocumentTermCount(inIndex: SKIndex!, _ inDocumentID: SKDocumentID) -> CFIndex
@available(OSX 10.3, *)
func SKIndexCopyTermIDArrayForDocumentID(inIndex: SKIndex!, _ inDocumentID: SKDocumentID) -> Unmanaged<CFArray>!
@available(OSX 10.3, *)
func SKIndexGetDocumentTermFrequency(inIndex: SKIndex!, _ inDocumentID: SKDocumentID, _ inTermID: CFIndex) -> CFIndex
@available(OSX 10.3, *)
func SKIndexGetMaximumTermID(inIndex: SKIndex!) -> CFIndex
@available(OSX 10.3, *)
func SKIndexGetTermDocumentCount(inIndex: SKIndex!, _ inTermID: CFIndex) -> CFIndex
@available(OSX 10.3, *)
func SKIndexCopyDocumentIDArrayForTermID(inIndex: SKIndex!, _ inTermID: CFIndex) -> Unmanaged<CFArray>!
@available(OSX 10.3, *)
func SKIndexCopyTermStringForTermID(inIndex: SKIndex!, _ inTermID: CFIndex) -> Unmanaged<CFString>!
@available(OSX 10.3, *)
func SKIndexGetTermIDForTermString(inIndex: SKIndex!, _ inTermString: CFString!) -> CFIndex
@available(OSX 10.3, *)
func SKLoadDefaultExtractorPlugIns()
typealias SKSearchRef = SKSearch
@available(OSX 10.4, *)
func SKSearchGetTypeID() -> CFTypeID
typealias SKSearchOptions = UInt32
var kSKSearchOptionDefault: Int { get }
var kSKSearchOptionNoRelevanceScores: Int { get }
var kSKSearchOptionSpaceMeansOR: Int { get }
var kSKSearchOptionFindSimilar: Int { get }
@available(OSX 10.4, *)
func SKSearchCreate(inIndex: SKIndex!, _ inQuery: CFString!, _ inSearchOptions: SKSearchOptions) -> Unmanaged<SKSearch>!
@available(OSX 10.4, *)
func SKSearchCancel(inSearch: SKSearch!)
@available(OSX 10.4, *)
func SKSearchFindMatches(inSearch: SKSearch!, _ inMaximumCount: CFIndex, _ outDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outScoresArray: UnsafeMutablePointer<Float>, _ maximumTime: CFTimeInterval, _ outFoundCount: UnsafeMutablePointer<CFIndex>) -> Bool
@available(OSX 10.4, *)
func SKIndexCopyInfoForDocumentIDs(inIndex: SKIndex!, _ inCount: CFIndex, _ inDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outNamesArray: UnsafeMutablePointer<Unmanaged<CFString>?>, _ outParentIDsArray: UnsafeMutablePointer<SKDocumentID>)
@available(OSX 10.4, *)
func SKIndexCopyDocumentRefsForDocumentIDs(inIndex: SKIndex!, _ inCount: CFIndex, _ inDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outDocumentRefsArray: UnsafeMutablePointer<Unmanaged<SKDocument>?>)
@available(OSX 10.4, *)
func SKIndexCopyDocumentURLsForDocumentIDs(inIndex: SKIndex!, _ inCount: CFIndex, _ inDocumentIDsArray: UnsafeMutablePointer<SKDocumentID>, _ outDocumentURLsArray: UnsafeMutablePointer<Unmanaged<CFURL>?>)
typealias SKSearchGroupRef = SKSearchGroup
typealias SKSearchResultsRef = SKSearchResults
struct SKSearchType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSKSearchRanked: SKSearchType { get }
var kSKSearchBooleanRanked: SKSearchType { get }
var kSKSearchRequiredRanked: SKSearchType { get }
var kSKSearchPrefixRanked: SKSearchType { get }
typealias SKSearchResultsFilterCallBack = @convention(c) (SKIndex!, SKDocument!, UnsafeMutablePointer<Void>) -> DarwinBoolean
typealias SKSummaryRef = SKSummary
@available(OSX 10.4, *)
func SKSummaryGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SKSummaryCreateWithString(inString: CFString!) -> Unmanaged<SKSummary>!
@available(OSX 10.4, *)
func SKSummaryGetSentenceCount(summary: SKSummary!) -> CFIndex
@available(OSX 10.4, *)
func SKSummaryGetParagraphCount(summary: SKSummary!) -> CFIndex
@available(OSX 10.4, *)
func SKSummaryCopySentenceAtIndex(summary: SKSummary!, _ i: CFIndex) -> Unmanaged<CFString>!
@available(OSX 10.4, *)
func SKSummaryCopyParagraphAtIndex(summary: SKSummary!, _ i: CFIndex) -> Unmanaged<CFString>!
@available(OSX 10.4, *)
func SKSummaryCopySentenceSummaryString(summary: SKSummary!, _ numSentences: CFIndex) -> Unmanaged<CFString>!
@available(OSX 10.4, *)
func SKSummaryCopyParagraphSummaryString(summary: SKSummary!, _ numParagraphs: CFIndex) -> Unmanaged<CFString>!
@available(OSX 10.4, *)
func SKSummaryGetSentenceSummaryInfo(summary: SKSummary!, _ numSentencesInSummary: CFIndex, _ outRankOrderOfSentences: UnsafeMutablePointer<CFIndex>, _ outSentenceIndexOfSentences: UnsafeMutablePointer<CFIndex>, _ outParagraphIndexOfSentences: UnsafeMutablePointer<CFIndex>) -> CFIndex
@available(OSX 10.4, *)
func SKSummaryGetParagraphSummaryInfo(summary: SKSummary!, _ numParagraphsInSummary: CFIndex, _ outRankOrderOfParagraphs: UnsafeMutablePointer<CFIndex>, _ outParagraphIndexOfParagraphs: UnsafeMutablePointer<CFIndex>) -> CFIndex
typealias LSSharedFileListRef = LSSharedFileList
typealias LSSharedFileListItemRef = LSSharedFileListItem
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListFavoriteVolumes: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListFavoriteItems: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListRecentApplicationItems: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListRecentDocumentItems: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListRecentServerItems: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="Use a LaunchAgent, XPCService or the ServiceManagement APIs instead.")
var kLSSharedFileListSessionLoginItems: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListRecentItemsMaxAmount: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListVolumesComputerVisible: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListVolumesNetworkVisible: Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListItemBeforeFirst: Unmanaged<LSSharedFileListItem>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListItemLast: Unmanaged<LSSharedFileListItem>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
var kLSSharedFileListItemHidden: Unmanaged<CFString>!
@available(OSX, introduced=10.6, deprecated=10.11)
var kLSSharedFileListLoginItemHidden: Unmanaged<CFString>!
typealias LSSharedFileListResolutionFlags = UInt32
var kLSSharedFileListNoUserInteraction: Int { get }
var kLSSharedFileListDoNotMountVolumes: Int { get }
typealias LSSharedFileListChangedProcPtr = @convention(c) (LSSharedFileList!, UnsafeMutablePointer<Void>) -> Void
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListGetTypeID() -> CFTypeID
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemGetTypeID() -> CFTypeID
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListCreate(inAllocator: CFAllocator!, _ inListType: CFString!, _ listOptions: AnyObject!) -> Unmanaged<LSSharedFileList>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListSetAuthorization(inList: LSSharedFileList!, _ inAuthorization: AuthorizationRef) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListAddObserver(inList: LSSharedFileList!, _ inRunloop: CFRunLoop!, _ inRunloopMode: CFString!, _ callback: LSSharedFileListChangedProcPtr!, _ context: UnsafeMutablePointer<Void>)
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListRemoveObserver(inList: LSSharedFileList!, _ inRunloop: CFRunLoop!, _ inRunloopMode: CFString!, _ callback: LSSharedFileListChangedProcPtr!, _ context: UnsafeMutablePointer<Void>)
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListGetSeedValue(inList: LSSharedFileList!) -> UInt32
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListCopyProperty(inList: LSSharedFileList!, _ inPropertyName: CFString!) -> Unmanaged<AnyObject>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListSetProperty(inList: LSSharedFileList!, _ inPropertyName: CFString!, _ inPropertyData: AnyObject!) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListCopySnapshot(inList: LSSharedFileList!, _ outSnapshotSeed: UnsafeMutablePointer<UInt32>) -> Unmanaged<CFArray>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListInsertItemURL(inList: LSSharedFileList!, _ insertAfterThisItem: LSSharedFileListItem!, _ inDisplayName: CFString!, _ inIconRef: IconRef, _ inURL: CFURL!, _ inPropertiesToSet: CFDictionary!, _ inPropertiesToClear: CFArray!) -> Unmanaged<LSSharedFileListItem>!
@available(OSX, introduced=10.5, deprecated=10.10, message="Use LSSharedFileListInsertItemURL instead.")
func LSSharedFileListInsertItemFSRef(inList: LSSharedFileList!, _ insertAfterThisItem: LSSharedFileListItem!, _ inDisplayName: CFString!, _ inIconRef: IconRef, _ inFSRef: UnsafePointer<FSRef>, _ inPropertiesToSet: CFDictionary!, _ inPropertiesToClear: CFArray!) -> Unmanaged<LSSharedFileListItem>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemMove(inList: LSSharedFileList!, _ inItem: LSSharedFileListItem!, _ inMoveAfterItem: LSSharedFileListItem!) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemRemove(inList: LSSharedFileList!, _ inItem: LSSharedFileListItem!) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListRemoveAllItems(inList: LSSharedFileList!) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemGetID(inItem: LSSharedFileListItem!) -> UInt32
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemCopyIconRef(inItem: LSSharedFileListItem!) -> IconRef
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemCopyDisplayName(inItem: LSSharedFileListItem!) -> Unmanaged<CFString>!
@available(OSX, introduced=10.5, deprecated=10.10, message="Use LSSharedFileListItemCopyResolvedURL instead.")
func LSSharedFileListItemResolve(inItem: LSSharedFileListItem!, _ inFlags: LSSharedFileListResolutionFlags, _ outURL: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ outRef: UnsafeMutablePointer<FSRef>) -> OSStatus
@available(OSX, introduced=10.10, deprecated=10.11)
func LSSharedFileListItemCopyResolvedURL(inItem: LSSharedFileListItem!, _ inFlags: LSSharedFileListResolutionFlags, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemCopyProperty(inItem: LSSharedFileListItem!, _ inPropertyName: CFString!) -> Unmanaged<AnyObject>!
@available(OSX, introduced=10.5, deprecated=10.11, message="This functionality is no longer supported on OS X.")
func LSSharedFileListItemSetProperty(inItem: LSSharedFileListItem!, _ inPropertyName: CFString!, _ inPropertyData: AnyObject!) -> OSStatus
