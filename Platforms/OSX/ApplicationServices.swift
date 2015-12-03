
var kATSOptionFlagsDefault: Int { get }
var kATSOptionFlagsComposeFontPostScriptName: Int { get }
var kATSOptionFlagsUseDataForkAsResourceFork: Int { get }
var kATSOptionFlagsUseResourceFork: Int { get }
var kATSOptionFlagsUseDataFork: Int { get }
var kATSIterationCompleted: Int { get }
var kATSInvalidFontFamilyAccess: Int { get }
var kATSInvalidFontAccess: Int { get }
var kATSIterationScopeModified: Int { get }
var kATSInvalidFontTableAccess: Int { get }
var kATSInvalidFontContainerAccess: Int { get }
var kATSInvalidGlyphAccess: Int { get }
typealias ATSFontContext = UInt32
var kATSFontContextUnspecified: Int { get }
var kATSFontContextGlobal: Int { get }
var kATSFontContextLocal: Int { get }
var kATSOptionFlagsActivateDisabled: Int { get }
var kATSOptionFlagsProcessSubdirectories: Int { get }
var kATSOptionFlagsDoNotNotify: Int { get }
var kATSOptionFlagsRecordPersistently: Int { get }
var kATSOptionFlagsIterateByPrecedenceMask: Int { get }
var kATSOptionFlagsIncludeDisabledMask: Int { get }
var kATSOptionFlagsIterationScopeMask: Int { get }
var kATSOptionFlagsDefaultScope: Int { get }
var kATSOptionFlagsUnRestrictedScope: Int { get }
var kATSOptionFlagsRestrictedScope: Int { get }
typealias ATSFontFamilyApplierFunction = @convention(c) (ATSFontFamilyRef, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSFontApplierFunction = @convention(c) (ATSFontRef, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSFontFamilyIterator = COpaquePointer
typealias ATSFontIterator = COpaquePointer
var kATSFontFilterCurrentVersion: Int { get }
struct ATSFontFilterSelector : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kATSFontFilterSelectorUnspecified: ATSFontFilterSelector { get }
var kATSFontFilterSelectorGeneration: ATSFontFilterSelector { get }
var kATSFontFilterSelectorFontFamily: ATSFontFilterSelector { get }
var kATSFontFilterSelectorFontFamilyApplierFunction: ATSFontFilterSelector { get }
var kATSFontFilterSelectorFontApplierFunction: ATSFontFilterSelector { get }
var kATSFileReferenceFilterSelector: ATSFontFilterSelector { get }
struct ATSFontFilter {
  struct __Unnamed_union_filter {
    var generationFilter: ATSGeneration
    var fontFamilyFilter: ATSFontFamilyRef
    var fontFamilyApplierFunctionFilter: ATSFontFamilyApplierFunction!
    var fontApplierFunctionFilter: ATSFontApplierFunction!
    var fontFileRefFilter: UnsafePointer<FSRef>
    init(generationFilter: ATSGeneration)
    init(fontFamilyFilter: ATSFontFamilyRef)
    init(fontFamilyApplierFunctionFilter: ATSFontFamilyApplierFunction!)
    init(fontApplierFunctionFilter: ATSFontApplierFunction!)
    init(fontFileRefFilter: UnsafePointer<FSRef>)
    init()
  }
  var version: UInt32
  var filterSelector: ATSFontFilterSelector
  var filter: ATSFontFilter.__Unnamed_union_filter
  init()
  init(version: UInt32, filterSelector: ATSFontFilterSelector, filter: ATSFontFilter.__Unnamed_union_filter)
}
typealias ATSFontNotificationRef = COpaquePointer
typealias ATSFontNotificationInfoRef = COpaquePointer
struct ATSFontNotifyOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kATSFontNotifyOptionDefault: ATSFontNotifyOption { get }
var kATSFontNotifyOptionReceiveWhileSuspended: ATSFontNotifyOption { get }
struct ATSFontNotifyAction : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kATSFontNotifyActionFontsChanged: ATSFontNotifyAction { get }
var kATSFontNotifyActionDirectoriesChanged: ATSFontNotifyAction { get }
typealias ATSNotificationCallback = @convention(c) (ATSFontNotificationInfoRef, UnsafeMutablePointer<Void>) -> Void
struct ATSFontQuerySourceContext {
  var version: UInt32
  var refCon: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  init()
  init(version: UInt32, refCon: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!)
}
struct ATSFontQueryMessageID : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kATSQueryActivateFontMessage: ATSFontQueryMessageID { get }
typealias ATSFontQueryCallback = @convention(c) (ATSFontQueryMessageID, CFPropertyList!, UnsafeMutablePointer<Void>) -> Unmanaged<CFPropertyList>!
var kATSQueryClientPID: String { get }
var kATSQueryQDFamilyName: String { get }
var kATSQueryFontName: String { get }
var kATSQueryFontPostScriptName: String { get }
var kATSQueryFontNameTableEntries: String { get }
var kATSFontNameTableCode: String { get }
var kATSFontNameTablePlatform: String { get }
var kATSFontNameTableScript: String { get }
var kATSFontNameTableLanguage: String { get }
var kATSFontNameTableBytes: String { get }
var kATSFontAutoActivationDefault: Int { get }
var kATSFontAutoActivationDisabled: Int { get }
var kATSFontAutoActivationEnabled: Int { get }
var kATSFontAutoActivationAsk: Int { get }
typealias ATSFontAutoActivationSetting = UInt32
var kATSUseGlyphAdvance: Int { get }
var kATSUseLineHeight: Int { get }
var kATSNoTracking: Int { get }
var kATSUseCaretOrigins: Int { get }
var kATSUseDeviceOrigins: Int { get }
var kATSUseFractionalOrigins: Int { get }
var kATSUseOriginFlags: Int { get }
typealias ATSULayoutOperationSelector = UInt32
var kATSULayoutOperationNone: UInt32 { get }
var kATSULayoutOperationJustification: UInt32 { get }
var kATSULayoutOperationMorph: UInt32 { get }
var kATSULayoutOperationKerningAdjustment: UInt32 { get }
var kATSULayoutOperationBaselineAdjustment: UInt32 { get }
var kATSULayoutOperationTrackingAdjustment: UInt32 { get }
var kATSULayoutOperationPostLayoutAdjustment: UInt32 { get }
var kATSULayoutOperationAppleReserved: UInt32 { get }
typealias ATSULayoutOperationCallbackStatus = UInt32
var kATSULayoutOperationCallbackStatusHandled: Int { get }
var kATSULayoutOperationCallbackStatusContinue: Int { get }
typealias ATSLineLayoutOptions = UInt32
var kATSLineNoLayoutOptions: UInt32 { get }
var kATSLineIsDisplayOnly: UInt32 { get }
var kATSLineHasNoHangers: UInt32 { get }
var kATSLineHasNoOpticalAlignment: UInt32 { get }
var kATSLineKeepSpacesOutOfMargin: UInt32 { get }
var kATSLineNoSpecialJustification: UInt32 { get }
var kATSLineLastNoJustification: UInt32 { get }
var kATSLineFractDisable: UInt32 { get }
var kATSLineImposeNoAngleForEnds: UInt32 { get }
var kATSLineFillOutToWidth: UInt32 { get }
var kATSLineTabAdjustEnabled: UInt32 { get }
var kATSLineIgnoreFontLeading: UInt32 { get }
var kATSLineApplyAntiAliasing: UInt32 { get }
var kATSLineNoAntiAliasing: UInt32 { get }
var kATSLineDisableNegativeJustification: UInt32 { get }
var kATSLineDisableAutoAdjustDisplayPos: UInt32 { get }
var kATSLineUseQDRendering: UInt32 { get }
var kATSLineDisableAllJustification: UInt32 { get }
var kATSLineDisableAllGlyphMorphing: UInt32 { get }
var kATSLineDisableAllKerningAdjustments: UInt32 { get }
var kATSLineDisableAllBaselineAdjustments: UInt32 { get }
var kATSLineDisableAllTrackingAdjustments: UInt32 { get }
var kATSLineDisableAllLayoutOperations: UInt32 { get }
var kATSLineUseDeviceMetrics: UInt32 { get }
var kATSLineBreakToNearestCharacter: UInt32 { get }
var kATSLineAppleReserved: UInt32 { get }
typealias ATSStyleRenderingOptions = UInt32
var kATSStyleNoOptions: UInt32 { get }
var kATSStyleNoHinting: UInt32 { get }
var kATSStyleApplyAntiAliasing: UInt32 { get }
var kATSStyleNoAntiAliasing: UInt32 { get }
var kATSStyleAppleReserved: UInt32 { get }
var kATSStyleApplyHints: UInt32 { get }
typealias ATSGlyphInfoFlags = UInt32
var kATSGlyphInfoAppleReserved: UInt32 { get }
var kATSGlyphInfoIsAttachment: UInt32 { get }
var kATSGlyphInfoIsLTHanger: UInt32 { get }
var kATSGlyphInfoIsRBHanger: UInt32 { get }
var kATSGlyphInfoTerminatorGlyph: UInt32 { get }
var kATSGlyphInfoIsWhiteSpace: UInt32 { get }
var kATSGlyphInfoHasImposedWidth: UInt32 { get }
var kATSGlyphInfoByteSizeMask: UInt32 { get }
struct ATSLayoutRecord {
  var glyphID: ATSGlyphRef
  var flags: ATSGlyphInfoFlags
  var originalOffset: Int
  var realPos: Fixed
  init()
  init(glyphID: ATSGlyphRef, flags: ATSGlyphInfoFlags, originalOffset: Int, realPos: Fixed)
}
struct ATSTrapezoid {
  var upperLeft: FixedPoint
  var upperRight: FixedPoint
  var lowerRight: FixedPoint
  var lowerLeft: FixedPoint
  init()
  init(upperLeft: FixedPoint, upperRight: FixedPoint, lowerRight: FixedPoint, lowerLeft: FixedPoint)
}
struct ATSJustWidthDeltaEntryOverride {
  var beforeGrowLimit: Fixed
  var beforeShrinkLimit: Fixed
  var afterGrowLimit: Fixed
  var afterShrinkLimit: Fixed
  var growFlags: JustificationFlags
  var shrinkFlags: JustificationFlags
  init()
  init(beforeGrowLimit: Fixed, beforeShrinkLimit: Fixed, afterGrowLimit: Fixed, afterShrinkLimit: Fixed, growFlags: JustificationFlags, shrinkFlags: JustificationFlags)
}
typealias ATSJustPriorityWidthDeltaOverrides = (ATSJustWidthDeltaEntryOverride, ATSJustWidthDeltaEntryOverride, ATSJustWidthDeltaEntryOverride, ATSJustWidthDeltaEntryOverride)
typealias ATSULineRef = COpaquePointer
typealias ATSUDirectLayoutOperationOverrideProcPtr = @convention(c) (ATSULayoutOperationSelector, ATSULineRef, URefCon, UnsafeMutablePointer<Void>, UnsafeMutablePointer<ATSULayoutOperationCallbackStatus>) -> OSStatus
typealias ATSUDirectLayoutOperationOverrideUPP = ATSUDirectLayoutOperationOverrideProcPtr
struct ATSULayoutOperationOverrideSpecifier {
  var operationSelector: ATSULayoutOperationSelector
  var overrideUPP: ATSUDirectLayoutOperationOverrideUPP!
  init()
  init(operationSelector: ATSULayoutOperationSelector, overrideUPP: ATSUDirectLayoutOperationOverrideUPP!)
}
typealias ATSPoint = CGPoint
struct ATSFSSpec {
  var vRefNum: FSVolumeRefNum
  var parID: Int32
  var name: StrFileName
  init()
  init(vRefNum: FSVolumeRefNum, parID: Int32, name: StrFileName)
}
typealias FMGeneration = UInt32
typealias FMFontFamily = Int16
typealias FMFontStyle = Int16
typealias FMFontSize = Int16
typealias FMFont = UInt32
struct FMFontFamilyInstance {
  var fontFamily: FMFontFamily
  var fontStyle: FMFontStyle
  init()
  init(fontFamily: FMFontFamily, fontStyle: FMFontStyle)
}
struct FMFontFamilyIterator {
  var reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
struct FMFontIterator {
  var reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
struct FMFontFamilyInstanceIterator {
  var reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(reserved: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kInvalidGeneration: Int { get }
var kInvalidFontFamily: Int { get }
var kInvalidFont: Int { get }
var kFMCurrentFilterFormat: Int { get }
typealias FMFilterSelector = UInt32
var kFMFontTechnologyFilterSelector: Int { get }
var kFMFontContainerFilterSelector: Int { get }
var kFMGenerationFilterSelector: Int { get }
var kFMFontFamilyCallbackFilterSelector: Int { get }
var kFMFontCallbackFilterSelector: Int { get }
var kFMFontDirectoryFilterSelector: Int { get }
var kFMFontFileRefFilterSelector: Int { get }
var kFMTrueTypeFontTechnology: Int { get }
var kFMPostScriptFontTechnology: Int { get }
typealias FMFontFamilyCallbackFilterProcPtr = @convention(c) (FMFontFamily, UnsafeMutablePointer<Void>) -> OSStatus
typealias FMFontCallbackFilterProcPtr = @convention(c) (FMFont, UnsafeMutablePointer<Void>) -> OSStatus
typealias FMFontFamilyCallbackFilterUPP = FMFontFamilyCallbackFilterProcPtr
typealias FMFontCallbackFilterUPP = FMFontCallbackFilterProcPtr
struct FMFontDirectoryFilter {
  var fontFolderDomain: Int16
  var reserved: (UInt32, UInt32)
  init()
  init(fontFolderDomain: Int16, reserved: (UInt32, UInt32))
}
struct FMFilter {
  struct __Unnamed_union_filter {
    var fontTechnologyFilter: FourCharCode
    var fontContainerFilter: ATSFSSpec
    var generationFilter: FMGeneration
    var fontFamilyCallbackFilter: FMFontFamilyCallbackFilterUPP!
    var fontCallbackFilter: FMFontCallbackFilterUPP!
    var fontDirectoryFilter: FMFontDirectoryFilter
    var fontFileRefFilter: UnsafePointer<FSRef>
    init(fontTechnologyFilter: FourCharCode)
    init(fontContainerFilter: ATSFSSpec)
    init(generationFilter: FMGeneration)
    init(fontFamilyCallbackFilter: FMFontFamilyCallbackFilterUPP!)
    init(fontCallbackFilter: FMFontCallbackFilterUPP!)
    init(fontDirectoryFilter: FMFontDirectoryFilter)
    init(fontFileRefFilter: UnsafePointer<FSRef>)
    init()
  }
  var format: UInt32
  var selector: FMFilterSelector
  var filter: FMFilter.__Unnamed_union_filter
  init()
  init(format: UInt32, selector: FMFilterSelector, filter: FMFilter.__Unnamed_union_filter)
}
typealias ATSOptionFlags = OptionBits
typealias ATSGeneration = UInt32
typealias ATSFontContainerRef = UInt32
typealias ATSFontFamilyRef = UInt32
var ATSFONTREF_DEFINED: Int32 { get }
typealias ATSGlyphRef = UInt16
typealias ATSFontSize = CGFloat
typealias ATSFontFormat = UInt32
var kATSFontFormatUnspecified: Int { get }
var kATSGenerationUnspecified: Int { get }
var kATSFontContainerRefUnspecified: Int { get }
var kATSFontFamilyRefUnspecified: Int { get }
var kATSFontRefUnspecified: Int { get }
struct ATSFontMetrics {
  var version: UInt32
  var ascent: CGFloat
  var descent: CGFloat
  var leading: CGFloat
  var avgAdvanceWidth: CGFloat
  var maxAdvanceWidth: CGFloat
  var minLeftSideBearing: CGFloat
  var minRightSideBearing: CGFloat
  var stemWidth: CGFloat
  var stemHeight: CGFloat
  var capHeight: CGFloat
  var xHeight: CGFloat
  var italicAngle: CGFloat
  var underlinePosition: CGFloat
  var underlineThickness: CGFloat
  init()
  init(version: UInt32, ascent: CGFloat, descent: CGFloat, leading: CGFloat, avgAdvanceWidth: CGFloat, maxAdvanceWidth: CGFloat, minLeftSideBearing: CGFloat, minRightSideBearing: CGFloat, stemWidth: CGFloat, stemHeight: CGFloat, capHeight: CGFloat, xHeight: CGFloat, italicAngle: CGFloat, underlinePosition: CGFloat, underlineThickness: CGFloat)
}
var kATSItalicQDSkew: Int { get }
var kATSBoldQDStretch: Int { get }
var kATSRadiansFactor: Int { get }
typealias ATSCurveType = UInt16
var kATSCubicCurveType: Int { get }
var kATSQuadCurveType: Int { get }
var kATSOtherCurveType: Int { get }
var kATSDeletedGlyphcode: Int { get }
struct ATSUCurvePath {
  var vectors: UInt32
  var controlBits: (UInt32)
  var vector: (ATSPoint)
  init()
  init(vectors: UInt32, controlBits: (UInt32), vector: (ATSPoint))
}
struct ATSUCurvePaths {
  var contours: UInt32
  var contour: (ATSUCurvePath)
  init()
  init(contours: UInt32, contour: (ATSUCurvePath))
}
struct ATSGlyphIdealMetrics {
  var advance: ATSPoint
  var sideBearing: ATSPoint
  var otherSideBearing: ATSPoint
  init()
  init(advance: ATSPoint, sideBearing: ATSPoint, otherSideBearing: ATSPoint)
}
struct ATSGlyphScreenMetrics {
  var deviceAdvance: ATSPoint
  var topLeft: ATSPoint
  var height: UInt32
  var width: UInt32
  var sideBearing: ATSPoint
  var otherSideBearing: ATSPoint
  init()
  init(deviceAdvance: ATSPoint, topLeft: ATSPoint, height: UInt32, width: UInt32, sideBearing: ATSPoint, otherSideBearing: ATSPoint)
}
typealias GlyphID = ATSGlyphRef
var kFontNoPlatform: UInt32 { get }
var kFontNoScript: UInt32 { get }
var kFontNoLanguage: UInt32 { get }
var kFontNoName: UInt32 { get }
typealias ColorSyncCMMRef = ColorSyncCMM
func ColorSyncCMMGetTypeID() -> CFTypeID
func ColorSyncCMMCreate(cmmBundle: CFBundle!) -> Unmanaged<ColorSyncCMM>!
func ColorSyncCMMGetBundle(_: ColorSyncCMM!) -> Unmanaged<CFBundle>!
func ColorSyncCMMCopyLocalizedName(_: ColorSyncCMM!) -> Unmanaged<CFString>!
func ColorSyncCMMCopyCMMIdentifier(_: ColorSyncCMM!) -> Unmanaged<CFString>!
typealias ColorSyncCMMIterateCallback = @convention(c) (ColorSyncCMM!, UnsafeMutablePointer<Void>) -> Bool
func ColorSyncIterateInstalledCMMs(callBack: ColorSyncCMMIterateCallback!, _ userInfo: UnsafeMutablePointer<Void>)
typealias CMMInitializeLinkProfileProc = @convention(c) (ColorSyncMutableProfile!, CFArray!, CFDictionary!) -> Bool
typealias CMMInitializeTransformProc = @convention(c) (ColorSyncTransform!, CFArray!, CFDictionary!) -> Bool
typealias CMMApplyTransformProc = @convention(c) (ColorSyncTransform!, Int, Int, Int, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, ColorSyncDataDepth, ColorSyncDataLayout, Int, Int, UnsafeMutablePointer<UnsafePointer<Void>>, ColorSyncDataDepth, ColorSyncDataLayout, Int, CFDictionary!) -> Bool
typealias CMMCreateTransformPropertyProc = @convention(c) (ColorSyncTransform!, AnyObject!, CFDictionary!) -> Unmanaged<AnyObject>!
var kCMMInitializeLinkProfileProcName: Unmanaged<CFString>!
var kCMMInitializeTransformProcName: Unmanaged<CFString>!
var kCMMApplyTransformProcName: Unmanaged<CFString>!
var kCMMCreateTransformPropertyProcName: Unmanaged<CFString>!
var kColorSyncDeviceID: Unmanaged<CFString>!
var kColorSyncDeviceClass: Unmanaged<CFString>!
var kColorSyncCameraDeviceClass: Unmanaged<CFString>!
var kColorSyncDisplayDeviceClass: Unmanaged<CFString>!
var kColorSyncPrinterDeviceClass: Unmanaged<CFString>!
var kColorSyncScannerDeviceClass: Unmanaged<CFString>!
var kColorSyncDeviceProfileURL: Unmanaged<CFString>!
var kColorSyncDeviceDescription: Unmanaged<CFString>!
var kColorSyncDeviceDescriptions: Unmanaged<CFString>!
var kColorSyncFactoryProfiles: Unmanaged<CFString>!
var kColorSyncCustomProfiles: Unmanaged<CFString>!
var kColorSyncDeviceModeDescription: Unmanaged<CFString>!
var kColorSyncDeviceModeDescriptions: Unmanaged<CFString>!
var kColorSyncDeviceDefaultProfileID: Unmanaged<CFString>!
var kColorSyncDeviceHostScope: Unmanaged<CFString>!
var kColorSyncDeviceUserScope: Unmanaged<CFString>!
var kColorSyncProfileHostScope: Unmanaged<CFString>!
var kColorSyncProfileUserScope: Unmanaged<CFString>!
var kColorSyncDeviceProfileIsFactory: Unmanaged<CFString>!
var kColorSyncDeviceProfileIsDefault: Unmanaged<CFString>!
var kColorSyncDeviceProfileIsCurrent: Unmanaged<CFString>!
var kColorSyncDeviceProfileID: Unmanaged<CFString>!
var kColorSyncDeviceRegisteredNotification: Unmanaged<CFString>!
var kColorSyncDeviceUnregisteredNotification: Unmanaged<CFString>!
var kColorSyncDeviceProfilesNotification: Unmanaged<CFString>!
var kColorSyncDisplayDeviceProfilesNotification: Unmanaged<CFString>!
func ColorSyncRegisterDevice(deviceClass: CFString!, _ deviceID: CFUUID!, _ deviceInfo: CFDictionary!) -> Bool
func ColorSyncUnregisterDevice(deviceClass: CFString!, _ deviceID: CFUUID!) -> Bool
func ColorSyncDeviceSetCustomProfiles(deviceClass: CFString!, _ deviceID: CFUUID!, _ profileInfo: CFDictionary!) -> Bool
func ColorSyncDeviceCopyDeviceInfo(deviceClass: CFString!, _ devID: CFUUID!) -> Unmanaged<CFDictionary>!
typealias ColorSyncDeviceProfileIterateCallback = @convention(c) (CFDictionary!, UnsafeMutablePointer<Void>) -> Bool
func ColorSyncIterateDeviceProfiles(callBack: ColorSyncDeviceProfileIterateCallback!, _ userInfo: UnsafeMutablePointer<Void>)
func CGDisplayCreateUUIDFromDisplayID(displayID: UInt32) -> Unmanaged<CFUUID>!
func CGDisplayGetDisplayIDFromUUID(uuid: CFUUID!) -> UInt32
typealias ColorSyncProfileRef = ColorSyncProfile
typealias ColorSyncMutableProfileRef = ColorSyncMutableProfile
var kColorSyncGenericGrayProfile: Unmanaged<CFString>!
var kColorSyncGenericGrayGamma22Profile: Unmanaged<CFString>!
var kColorSyncGenericRGBProfile: Unmanaged<CFString>!
var kColorSyncGenericCMYKProfile: Unmanaged<CFString>!
var kColorSyncSRGBProfile: Unmanaged<CFString>!
var kColorSyncAdobeRGB1998Profile: Unmanaged<CFString>!
var kColorSyncGenericLabProfile: Unmanaged<CFString>!
var kColorSyncGenericXYZProfile: Unmanaged<CFString>!
var kColorSyncACESCGLinearProfile: Unmanaged<CFString>!
var kColorSyncITUR709Profile: Unmanaged<CFString>!
var kColorSyncITUR2020Profile: Unmanaged<CFString>!
var kColorSyncROMMRGBProfile: Unmanaged<CFString>!
var kColorSyncProfileHeader: Unmanaged<CFString>!
var kColorSyncProfileClass: Unmanaged<CFString>!
var kColorSyncProfileColorSpace: Unmanaged<CFString>!
var kColorSyncProfilePCS: Unmanaged<CFString>!
var kColorSyncProfileURL: Unmanaged<CFString>!
var kColorSyncProfileDescription: Unmanaged<CFString>!
var kColorSyncProfileMD5Digest: Unmanaged<CFString>!
var kColorSyncSigAToB0Tag: Unmanaged<CFString>!
var kColorSyncSigAToB1Tag: Unmanaged<CFString>!
var kColorSyncSigAToB2Tag: Unmanaged<CFString>!
var kColorSyncSigBToA0Tag: Unmanaged<CFString>!
var kColorSyncSigBToA1Tag: Unmanaged<CFString>!
var kColorSyncSigBToA2Tag: Unmanaged<CFString>!
var kColorSyncSigCmykData: Unmanaged<CFString>!
var kColorSyncSigGrayData: Unmanaged<CFString>!
var kColorSyncSigLabData: Unmanaged<CFString>!
var kColorSyncSigRgbData: Unmanaged<CFString>!
var kColorSyncSigXYZData: Unmanaged<CFString>!
var kColorSyncSigAbstractClass: Unmanaged<CFString>!
var kColorSyncSigBlueTRCTag: Unmanaged<CFString>!
var kColorSyncSigBlueColorantTag: Unmanaged<CFString>!
var kColorSyncSigMediaBlackPointTag: Unmanaged<CFString>!
var kColorSyncSigCopyrightTag: Unmanaged<CFString>!
var kColorSyncSigProfileDescriptionTag: Unmanaged<CFString>!
var kColorSyncSigDeviceModelDescTag: Unmanaged<CFString>!
var kColorSyncSigDeviceMfgDescTag: Unmanaged<CFString>!
var kColorSyncSigGreenTRCTag: Unmanaged<CFString>!
var kColorSyncSigGreenColorantTag: Unmanaged<CFString>!
var kColorSyncSigGamutTag: Unmanaged<CFString>!
var kColorSyncSigGrayTRCTag: Unmanaged<CFString>!
var kColorSyncSigLinkClass: Unmanaged<CFString>!
var kColorSyncSigDisplayClass: Unmanaged<CFString>!
var kColorSyncSigNamedColor2Tag: Unmanaged<CFString>!
var kColorSyncSigNamedColorClass: Unmanaged<CFString>!
var kColorSyncSigPreview0Tag: Unmanaged<CFString>!
var kColorSyncSigPreview1Tag: Unmanaged<CFString>!
var kColorSyncSigPreview2Tag: Unmanaged<CFString>!
var kColorSyncSigOutputClass: Unmanaged<CFString>!
var kColorSyncSigProfileSequenceDescTag: Unmanaged<CFString>!
var kColorSyncSigRedTRCTag: Unmanaged<CFString>!
var kColorSyncSigRedColorantTag: Unmanaged<CFString>!
var kColorSyncSigInputClass: Unmanaged<CFString>!
var kColorSyncSigColorSpaceClass: Unmanaged<CFString>!
var kColorSyncSigTechnologyTag: Unmanaged<CFString>!
var kColorSyncSigViewingConditionsTag: Unmanaged<CFString>!
var kColorSyncSigViewingCondDescTag: Unmanaged<CFString>!
var kColorSyncSigMediaWhitePointTag: Unmanaged<CFString>!
var kColorSyncProfileComputerDomain: Unmanaged<CFString>!
var kColorSyncProfileUserDomain: Unmanaged<CFString>!
var COLORSYNC_PROFILE_INSTALL_ENTITLEMENT: String { get }
func ColorSyncProfileGetTypeID() -> CFTypeID
func ColorSyncProfileCreate(data: CFData!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateWithURL(url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateWithName(name: CFString!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateWithDisplayID(displayID: UInt32) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateDeviceProfile(deviceClass: CFString!, _ deviceID: CFUUID!, _ profileID: AnyObject!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateMutable() -> Unmanaged<ColorSyncMutableProfile>!
func ColorSyncProfileCreateMutableCopy(prof: ColorSyncProfile!) -> Unmanaged<ColorSyncMutableProfile>!
func ColorSyncProfileCreateLink(profileInfo: CFArray!, _ options: CFDictionary!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileVerify(prof: ColorSyncProfile!, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>, _ warnings: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ColorSyncProfileEstimateGammaWithDisplayID(displayID: Int32, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Float
func ColorSyncProfileEstimateGamma(prof: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Float
var COLORSYNC_MD5_LENGTH: Int32 { get }
struct ColorSyncMD5 {
  var digest: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(digest: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
func ColorSyncProfileGetMD5(prof: ColorSyncProfile!) -> ColorSyncMD5
func ColorSyncProfileCopyData(prof: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
func ColorSyncProfileGetURL(prof: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
func ColorSyncProfileCopyHeader(prof: ColorSyncProfile!) -> Unmanaged<CFData>!
func ColorSyncProfileSetHeader(prof: ColorSyncMutableProfile!, _ header: CFData!)
func ColorSyncProfileCopyDescriptionString(prof: ColorSyncProfile!) -> Unmanaged<CFString>!
func ColorSyncProfileCopyTagSignatures(prof: ColorSyncProfile!) -> Unmanaged<CFArray>!
func ColorSyncProfileContainsTag(prof: ColorSyncProfile!, _ signature: CFString!) -> Bool
func ColorSyncProfileCopyTag(prof: ColorSyncProfile!, _ signature: CFString!) -> Unmanaged<CFData>!
func ColorSyncProfileSetTag(prof: ColorSyncMutableProfile!, _ signature: CFString!, _ data: CFData!)
func ColorSyncProfileRemoveTag(prof: ColorSyncMutableProfile!, _ signature: CFString!)
func ColorSyncProfileGetDisplayTransferFormulaFromVCGT(profile: ColorSyncProfile!, _ redMin: UnsafeMutablePointer<Float>, _ redMax: UnsafeMutablePointer<Float>, _ redGamma: UnsafeMutablePointer<Float>, _ greenMin: UnsafeMutablePointer<Float>, _ greenMax: UnsafeMutablePointer<Float>, _ greenGamma: UnsafeMutablePointer<Float>, _ blueMin: UnsafeMutablePointer<Float>, _ blueMax: UnsafeMutablePointer<Float>, _ blueGamma: UnsafeMutablePointer<Float>) -> Bool
func ColorSyncProfileCreateDisplayTransferTablesFromVCGT(profile: ColorSyncProfile!, _ nSamplesPerChannel: UnsafeMutablePointer<Int>) -> Unmanaged<CFData>!
typealias ColorSyncProfileIterateCallback = @convention(c) (CFDictionary!, UnsafeMutablePointer<Void>) -> Bool
func ColorSyncIterateInstalledProfiles(callBack: ColorSyncProfileIterateCallback!, _ seed: UnsafeMutablePointer<UInt32>, _ userInfo: UnsafeMutablePointer<Void>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>)
func ColorSyncProfileInstall(profile: ColorSyncProfile!, _ domain: CFString!, _ subpath: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ColorSyncProfileUninstall(profile: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
typealias ColorSyncTransformRef = ColorSyncTransform
func ColorSyncTransformGetTypeID() -> CFTypeID
func ColorSyncTransformCreate(profileSequence: CFArray!, _ options: CFDictionary!) -> Unmanaged<ColorSyncTransform>!
func ColorSyncTransformCopyProperty(transform: ColorSyncTransform!, _ key: AnyObject!, _ options: CFDictionary!) -> Unmanaged<AnyObject>!
func ColorSyncTransformSetProperty(transform: ColorSyncTransform!, _ key: AnyObject!, _ property: AnyObject!)
struct ColorSyncDataDepth : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kColorSync1BitGamut: ColorSyncDataDepth { get }
var kColorSync8BitInteger: ColorSyncDataDepth { get }
var kColorSync16BitInteger: ColorSyncDataDepth { get }
var kColorSync16BitFloat: ColorSyncDataDepth { get }
var kColorSync32BitInteger: ColorSyncDataDepth { get }
var kColorSync32BitNamedColorIndex: ColorSyncDataDepth { get }
var kColorSync32BitFloat: ColorSyncDataDepth { get }
var kColorSync10BitInteger: ColorSyncDataDepth { get }
struct ColorSyncAlphaInfo : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kColorSyncAlphaNone: ColorSyncAlphaInfo { get }
var kColorSyncAlphaPremultipliedLast: ColorSyncAlphaInfo { get }
var kColorSyncAlphaPremultipliedFirst: ColorSyncAlphaInfo { get }
var kColorSyncAlphaLast: ColorSyncAlphaInfo { get }
var kColorSyncAlphaFirst: ColorSyncAlphaInfo { get }
var kColorSyncAlphaNoneSkipLast: ColorSyncAlphaInfo { get }
var kColorSyncAlphaNoneSkipFirst: ColorSyncAlphaInfo { get }
var kColorSyncAlphaInfoMask: Int { get }
var kColorSyncByteOrderMask: Int { get }
var kColorSyncByteOrderDefault: Int { get }
var kColorSyncByteOrder16Little: Int { get }
var kColorSyncByteOrder32Little: Int { get }
var kColorSyncByteOrder16Big: Int { get }
var kColorSyncByteOrder32Big: Int { get }
typealias ColorSyncDataLayout = UInt32
func ColorSyncTransformConvert(transform: ColorSyncTransform!, _ width: Int, _ height: Int, _ dst: UnsafeMutablePointer<Void>, _ dstDepth: ColorSyncDataDepth, _ dstLayout: ColorSyncDataLayout, _ dstBytesPerRow: Int, _ src: UnsafePointer<Void>, _ srcDepth: ColorSyncDataDepth, _ srcLayout: ColorSyncDataLayout, _ srcBytesPerRow: Int, _ options: CFDictionary!) -> Bool
var kColorSyncProfile: Unmanaged<CFString>!
var kColorSyncRenderingIntent: Unmanaged<CFString>!
var kColorSyncRenderingIntentPerceptual: Unmanaged<CFString>!
var kColorSyncRenderingIntentRelative: Unmanaged<CFString>!
var kColorSyncRenderingIntentSaturation: Unmanaged<CFString>!
var kColorSyncRenderingIntentAbsolute: Unmanaged<CFString>!
var kColorSyncRenderingIntentUseProfileHeader: Unmanaged<CFString>!
var kColorSyncTransformTag: Unmanaged<CFString>!
var kColorSyncTransformDeviceToPCS: Unmanaged<CFString>!
var kColorSyncTransformPCSToPCS: Unmanaged<CFString>!
var kColorSyncTransformPCSToDevice: Unmanaged<CFString>!
var kColorSyncTransformDeviceToDevice: Unmanaged<CFString>!
var kColorSyncTransformGamutCheck: Unmanaged<CFString>!
var kColorSyncBlackPointCompensation: Unmanaged<CFString>!
var kColorSyncPreferredCMM: Unmanaged<CFString>!
var kColorSyncConvertQuality: Unmanaged<CFString>!
var kColorSyncBestQuality: Unmanaged<CFString>!
var kColorSyncNormalQuality: Unmanaged<CFString>!
var kColorSyncDraftQuality: Unmanaged<CFString>!
var kColorSyncConvertThreadCount: Unmanaged<CFString>!
var kColorSyncConvertUseVectorUnit: Unmanaged<CFString>!
var kColorSyncTranformInfo: Unmanaged<CFString>!
var kColorSyncTransformCreator: Unmanaged<CFString>!
var kColorSyncTransformSrcSpace: Unmanaged<CFString>!
var kColorSyncTransformDstSpace: Unmanaged<CFString>!
var kColorSyncTransformCodeFragmentType: Unmanaged<CFString>!
var kColorSyncTransformFullConversionData: Unmanaged<CFString>!
var kColorSyncTransformSimplifiedConversionData: Unmanaged<CFString>!
var kColorSyncTransformParametricConversionData: Unmanaged<CFString>!
var kColorSyncConversionMatrix: Unmanaged<CFString>!
var kColorSyncConversionParamCurve0: Unmanaged<CFString>!
var kColorSyncConversionParamCurve1: Unmanaged<CFString>!
var kColorSyncConversionParamCurve2: Unmanaged<CFString>!
var kColorSyncConversionParamCurve3: Unmanaged<CFString>!
var kColorSyncConversionParamCurve4: Unmanaged<CFString>!
var kColorSyncConversion1DLut: Unmanaged<CFString>!
var kColorSyncConversionGridPoints: Unmanaged<CFString>!
var kColorSyncConversionChannelID: Unmanaged<CFString>!
var kColorSyncConversion3DLut: Unmanaged<CFString>!
var kColorSyncConversionNDLut: Unmanaged<CFString>!
var kColorSyncConversionInpChan: Unmanaged<CFString>!
var kColorSyncConversionOutChan: Unmanaged<CFString>!
var kColorSyncConversionBPC: Unmanaged<CFString>!
var kColorSyncFixedPointRange: Unmanaged<CFString>!
var kAXPressAction: String { get }
var kAXIncrementAction: String { get }
var kAXDecrementAction: String { get }
var kAXConfirmAction: String { get }
var kAXCancelAction: String { get }
var kAXShowAlternateUIAction: String { get }
var kAXShowDefaultUIAction: String { get }
var kAXRaiseAction: String { get }
var kAXShowMenuAction: String { get }
var kAXPickAction: String { get }
var kAXRoleAttribute: String { get }
var kAXSubroleAttribute: String { get }
var kAXRoleDescriptionAttribute: String { get }
var kAXHelpAttribute: String { get }
var kAXTitleAttribute: String { get }
var kAXValueAttribute: String { get }
var kAXValueDescriptionAttribute: String { get }
var kAXMinValueAttribute: String { get }
var kAXMaxValueAttribute: String { get }
var kAXValueIncrementAttribute: String { get }
var kAXAllowedValuesAttribute: String { get }
var kAXPlaceholderValueAttribute: String { get }
var kAXEnabledAttribute: String { get }
var kAXElementBusyAttribute: String { get }
var kAXFocusedAttribute: String { get }
var kAXParentAttribute: String { get }
var kAXChildrenAttribute: String { get }
var kAXSelectedChildrenAttribute: String { get }
var kAXVisibleChildrenAttribute: String { get }
var kAXWindowAttribute: String { get }
var kAXTopLevelUIElementAttribute: String { get }
var kAXPositionAttribute: String { get }
var kAXSizeAttribute: String { get }
var kAXOrientationAttribute: String { get }
var kAXDescriptionAttribute: String { get }
var kAXDescription: String { get }
var kAXSelectedTextAttribute: String { get }
var kAXSelectedTextRangeAttribute: String { get }
var kAXSelectedTextRangesAttribute: String { get }
var kAXVisibleCharacterRangeAttribute: String { get }
var kAXNumberOfCharactersAttribute: String { get }
var kAXSharedTextUIElementsAttribute: String { get }
var kAXSharedCharacterRangeAttribute: String { get }
var kAXSharedFocusElementsAttribute: String { get }
var kAXInsertionPointLineNumberAttribute: String { get }
var kAXMainAttribute: String { get }
var kAXMinimizedAttribute: String { get }
var kAXCloseButtonAttribute: String { get }
var kAXZoomButtonAttribute: String { get }
var kAXMinimizeButtonAttribute: String { get }
var kAXToolbarButtonAttribute: String { get }
var kAXFullScreenButtonAttribute: String { get }
var kAXProxyAttribute: String { get }
var kAXGrowAreaAttribute: String { get }
var kAXModalAttribute: String { get }
var kAXDefaultButtonAttribute: String { get }
var kAXCancelButtonAttribute: String { get }
var kAXMenuItemCmdCharAttribute: String { get }
var kAXMenuItemCmdVirtualKeyAttribute: String { get }
var kAXMenuItemCmdGlyphAttribute: String { get }
var kAXMenuItemCmdModifiersAttribute: String { get }
var kAXMenuItemMarkCharAttribute: String { get }
var kAXMenuItemPrimaryUIElementAttribute: String { get }

/*! @typedef AXMenuItemModifiers
      @abstract Values that indicate the keyboard shortcut modifiers for a menu item (used with the {@link kAXMenuItemCmdModifiersAttribute} attribute).
 */
struct AXMenuItemModifiers : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var None: AXMenuItemModifiers { get }
  static var Shift: AXMenuItemModifiers { get }
  static var Option: AXMenuItemModifiers { get }
  static var Control: AXMenuItemModifiers { get }
  static var NoCommand: AXMenuItemModifiers { get }
}
var kAXMenuBarAttribute: String { get }
var kAXWindowsAttribute: String { get }
var kAXFrontmostAttribute: String { get }
var kAXHiddenAttribute: String { get }
var kAXMainWindowAttribute: String { get }
var kAXFocusedWindowAttribute: String { get }
var kAXFocusedUIElementAttribute: String { get }
var kAXExtrasMenuBarAttribute: String { get }
var kAXHeaderAttribute: String { get }
var kAXEditedAttribute: String { get }
var kAXValueWrapsAttribute: String { get }
var kAXTabsAttribute: String { get }
var kAXTitleUIElementAttribute: String { get }
var kAXHorizontalScrollBarAttribute: String { get }
var kAXVerticalScrollBarAttribute: String { get }
var kAXOverflowButtonAttribute: String { get }
var kAXFilenameAttribute: String { get }
var kAXExpandedAttribute: String { get }
var kAXSelectedAttribute: String { get }
var kAXSplittersAttribute: String { get }
var kAXNextContentsAttribute: String { get }
var kAXDocumentAttribute: String { get }
var kAXDecrementButtonAttribute: String { get }
var kAXIncrementButtonAttribute: String { get }
var kAXPreviousContentsAttribute: String { get }
var kAXContentsAttribute: String { get }
var kAXIncrementorAttribute: String { get }
var kAXHourFieldAttribute: String { get }
var kAXMinuteFieldAttribute: String { get }
var kAXSecondFieldAttribute: String { get }
var kAXAMPMFieldAttribute: String { get }
var kAXDayFieldAttribute: String { get }
var kAXMonthFieldAttribute: String { get }
var kAXYearFieldAttribute: String { get }
var kAXColumnTitleAttribute: String { get }
var kAXURLAttribute: String { get }
var kAXLabelUIElementsAttribute: String { get }
var kAXLabelValueAttribute: String { get }
var kAXShownMenuUIElementAttribute: String { get }
var kAXServesAsTitleForUIElementsAttribute: String { get }
var kAXLinkedUIElementsAttribute: String { get }
var kAXRowsAttribute: String { get }
var kAXVisibleRowsAttribute: String { get }
var kAXSelectedRowsAttribute: String { get }
var kAXColumnsAttribute: String { get }
var kAXVisibleColumnsAttribute: String { get }
var kAXSelectedColumnsAttribute: String { get }
var kAXSortDirectionAttribute: String { get }
var kAXIndexAttribute: String { get }
var kAXDisclosingAttribute: String { get }
var kAXDisclosedRowsAttribute: String { get }
var kAXDisclosedByRowAttribute: String { get }
var kAXDisclosureLevelAttribute: String { get }
var kAXMatteHoleAttribute: String { get }
var kAXMatteContentUIElementAttribute: String { get }
var kAXMarkerUIElementsAttribute: String { get }
var kAXUnitsAttribute: String { get }
var kAXUnitDescriptionAttribute: String { get }
var kAXMarkerTypeAttribute: String { get }
var kAXMarkerTypeDescriptionAttribute: String { get }
var kAXIsApplicationRunningAttribute: String { get }
var kAXSearchButtonAttribute: String { get }
var kAXClearButtonAttribute: String { get }
var kAXFocusedApplicationAttribute: String { get }
var kAXRowCountAttribute: String { get }
var kAXColumnCountAttribute: String { get }
var kAXOrderedByRowAttribute: String { get }
var kAXWarningValueAttribute: String { get }
var kAXCriticalValueAttribute: String { get }
var kAXSelectedCellsAttribute: String { get }
var kAXVisibleCellsAttribute: String { get }
var kAXRowHeaderUIElementsAttribute: String { get }
var kAXColumnHeaderUIElementsAttribute: String { get }
var kAXRowIndexRangeAttribute: String { get }
var kAXColumnIndexRangeAttribute: String { get }
var kAXHorizontalUnitsAttribute: String { get }
var kAXVerticalUnitsAttribute: String { get }
var kAXHorizontalUnitDescriptionAttribute: String { get }
var kAXVerticalUnitDescriptionAttribute: String { get }
var kAXHandlesAttribute: String { get }
var kAXTextAttribute: String { get }
var kAXVisibleTextAttribute: String { get }
var kAXIsEditableAttribute: String { get }
var kAXColumnTitlesAttribute: String { get }
var kAXIdentifierAttribute: String { get }
var kAXAlternateUIVisibleAttribute: String { get }
var kAXLineForIndexParameterizedAttribute: String { get }
var kAXRangeForLineParameterizedAttribute: String { get }
var kAXStringForRangeParameterizedAttribute: String { get }
var kAXRangeForPositionParameterizedAttribute: String { get }
var kAXRangeForIndexParameterizedAttribute: String { get }
var kAXBoundsForRangeParameterizedAttribute: String { get }
var kAXRTFForRangeParameterizedAttribute: String { get }
var kAXAttributedStringForRangeParameterizedAttribute: String { get }
var kAXStyleRangeForIndexParameterizedAttribute: String { get }
var kAXCellForColumnAndRowParameterizedAttribute: String { get }
var kAXLayoutPointForScreenPointParameterizedAttribute: String { get }
var kAXLayoutSizeForScreenSizeParameterizedAttribute: String { get }
var kAXScreenPointForLayoutPointParameterizedAttribute: String { get }
var kAXScreenSizeForLayoutSizeParameterizedAttribute: String { get }

/*!
	@enum Accessibility Error Codes
	@abstract Error codes returned by accessibility functions.
	@discussion
    
*/
enum AXError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }

  /*! No error occurred. */
  case Success

  /*! A system error occurred, such as the failure to allocate an object. */
  case Failure

  /*! An illegal argument was passed to the function. */
  case IllegalArgument

  /*! The AXUIElementRef passed to the function is invalid. */
  case InvalidUIElement

  /*! The AXObserverRef passed to the function is not a valid observer. */
  case InvalidUIElementObserver

  /*! The function cannot complete because messaging failed in some way or because the application with which the function is communicating is busy or unresponsive. */
  case CannotComplete

  /*! The attribute is not supported by the AXUIElementRef. */
  case AttributeUnsupported

  /*! The action is not supported by the AXUIElementRef. */
  case ActionUnsupported

  /*! The notification is not supported by the AXUIElementRef. */
  case NotificationUnsupported

  /*! Indicates that the function or method is not implemented (this can be returned if a process does not support the accessibility API). */
  case NotImplemented

  /*! This notification has already been registered for. */
  case NotificationAlreadyRegistered

  /*! Indicates that a notification is not registered yet. */
  case NotificationNotRegistered

  /*! The accessibility API is disabled (as when, for example, the user deselects "Enable access for assistive devices" in Universal Access Preferences). */
  case APIDisabled

  /*! The requested value or AXUIElementRef does not exist. */
  case NoValue

  /*! The parameterized attribute is not supported by the AXUIElementRef. */
  case ParameterizedAttributeUnsupported

  /*! Not enough precision. */
  case NotEnoughPrecision
}
var kAXMainWindowChangedNotification: String { get }
var kAXFocusedWindowChangedNotification: String { get }
var kAXFocusedUIElementChangedNotification: String { get }
var kAXApplicationActivatedNotification: String { get }
var kAXApplicationDeactivatedNotification: String { get }
var kAXApplicationHiddenNotification: String { get }
var kAXApplicationShownNotification: String { get }
var kAXWindowCreatedNotification: String { get }
var kAXWindowMovedNotification: String { get }
var kAXWindowResizedNotification: String { get }
var kAXWindowMiniaturizedNotification: String { get }
var kAXWindowDeminiaturizedNotification: String { get }
var kAXDrawerCreatedNotification: String { get }
var kAXSheetCreatedNotification: String { get }
var kAXHelpTagCreatedNotification: String { get }
var kAXValueChangedNotification: String { get }
var kAXUIElementDestroyedNotification: String { get }
var kAXElementBusyChangedNotification: String { get }
var kAXMenuOpenedNotification: String { get }
var kAXMenuClosedNotification: String { get }
var kAXMenuItemSelectedNotification: String { get }
var kAXRowCountChangedNotification: String { get }
var kAXRowExpandedNotification: String { get }
var kAXRowCollapsedNotification: String { get }
var kAXSelectedCellsChangedNotification: String { get }
var kAXUnitsChangedNotification: String { get }
var kAXSelectedChildrenMovedNotification: String { get }
var kAXSelectedChildrenChangedNotification: String { get }
var kAXResizedNotification: String { get }
var kAXMovedNotification: String { get }
var kAXCreatedNotification: String { get }
var kAXSelectedRowsChangedNotification: String { get }
var kAXSelectedColumnsChangedNotification: String { get }
var kAXSelectedTextChangedNotification: String { get }
var kAXTitleChangedNotification: String { get }
var kAXLayoutChangedNotification: String { get }
var kAXAnnouncementRequestedNotification: String { get }
var kAXUIElementsKey: String { get }
var kAXPriorityKey: String { get }
var kAXAnnouncementKey: String { get }

/*! @abstract Priority values used for kAXPriorityKey
 */
@available(OSX 10.9, *)
enum AXPriority : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Low
  case Medium
  case High
}
var kAXApplicationRole: String { get }
var kAXSystemWideRole: String { get }
var kAXWindowRole: String { get }
var kAXSheetRole: String { get }
var kAXDrawerRole: String { get }
var kAXGrowAreaRole: String { get }
var kAXImageRole: String { get }
var kAXUnknownRole: String { get }
var kAXButtonRole: String { get }
var kAXRadioButtonRole: String { get }
var kAXCheckBoxRole: String { get }
var kAXPopUpButtonRole: String { get }
var kAXMenuButtonRole: String { get }
var kAXTabGroupRole: String { get }
var kAXTableRole: String { get }
var kAXColumnRole: String { get }
var kAXRowRole: String { get }
var kAXOutlineRole: String { get }
var kAXBrowserRole: String { get }
var kAXScrollAreaRole: String { get }
var kAXScrollBarRole: String { get }
var kAXRadioGroupRole: String { get }
var kAXListRole: String { get }
var kAXGroupRole: String { get }
var kAXValueIndicatorRole: String { get }
var kAXComboBoxRole: String { get }
var kAXSliderRole: String { get }
var kAXIncrementorRole: String { get }
var kAXBusyIndicatorRole: String { get }
var kAXProgressIndicatorRole: String { get }
var kAXRelevanceIndicatorRole: String { get }
var kAXToolbarRole: String { get }
var kAXDisclosureTriangleRole: String { get }
var kAXTextFieldRole: String { get }
var kAXTextAreaRole: String { get }
var kAXStaticTextRole: String { get }
var kAXMenuBarRole: String { get }
var kAXMenuBarItemRole: String { get }
var kAXMenuRole: String { get }
var kAXMenuItemRole: String { get }
var kAXSplitGroupRole: String { get }
var kAXSplitterRole: String { get }
var kAXColorWellRole: String { get }
var kAXTimeFieldRole: String { get }
var kAXDateFieldRole: String { get }
var kAXHelpTagRole: String { get }
var kAXMatteRole: String { get }
var kAXDockItemRole: String { get }
var kAXRulerRole: String { get }
var kAXRulerMarkerRole: String { get }
var kAXGridRole: String { get }
var kAXLevelIndicatorRole: String { get }
var kAXCellRole: String { get }
var kAXLayoutAreaRole: String { get }
var kAXLayoutItemRole: String { get }
var kAXHandleRole: String { get }
var kAXPopoverRole: String { get }
var kAXCloseButtonSubrole: String { get }
var kAXMinimizeButtonSubrole: String { get }
var kAXZoomButtonSubrole: String { get }
var kAXToolbarButtonSubrole: String { get }
var kAXFullScreenButtonSubrole: String { get }
var kAXSecureTextFieldSubrole: String { get }
var kAXTableRowSubrole: String { get }
var kAXOutlineRowSubrole: String { get }
var kAXUnknownSubrole: String { get }
var kAXStandardWindowSubrole: String { get }
var kAXDialogSubrole: String { get }
var kAXSystemDialogSubrole: String { get }
var kAXFloatingWindowSubrole: String { get }
var kAXSystemFloatingWindowSubrole: String { get }
var kAXIncrementArrowSubrole: String { get }
var kAXDecrementArrowSubrole: String { get }
var kAXIncrementPageSubrole: String { get }
var kAXDecrementPageSubrole: String { get }
var kAXSortButtonSubrole: String { get }
var kAXSearchFieldSubrole: String { get }
var kAXTimelineSubrole: String { get }
var kAXRatingIndicatorSubrole: String { get }
var kAXContentListSubrole: String { get }
var kAXDefinitionListSubrole: String { get }
var kAXDescriptionListSubrole: String { get }
var kAXToggleSubrole: String { get }
var kAXSwitchSubrole: String { get }
var kAXApplicationDockItemSubrole: String { get }
var kAXDocumentDockItemSubrole: String { get }
var kAXFolderDockItemSubrole: String { get }
var kAXMinimizedWindowDockItemSubrole: String { get }
var kAXURLDockItemSubrole: String { get }
var kAXDockExtraDockItemSubrole: String { get }
var kAXTrashDockItemSubrole: String { get }
var kAXSeparatorDockItemSubrole: String { get }
var kAXProcessSwitcherListSubrole: String { get }

/*! @constant kAXFontTextAttribute
      @abstract A dictionary (a <code>CFDictionaryRef</code>) of two or more font keys.
      @discussion The dictionary associated with this attribute must contain the {@link kAXFontNameKey} and
      {@link kAXFontSizeKey} font keys. It may also contain the {@link kAXFontFamilyKey} and
      {@link kAXVisibleNameKey} font keys.
 */
@available(OSX 10.4, *)
var kAXFontTextAttribute: Unmanaged<CFString>

/*! @constant kAXForegroundColorTextAttribute
      @abstract A <code>CGColorRef</code> value that describes the foreground color.
 */
@available(OSX 10.4, *)
var kAXForegroundColorTextAttribute: Unmanaged<CFString>

/*! @constant kAXBackgroundColorTextAttribute
      @abstract A <code>CGColorRef</code> value that describes the background color.
 */
@available(OSX 10.4, *)
var kAXBackgroundColorTextAttribute: Unmanaged<CFString>

/*! @constant kAXUnderlineColorTextAttribute
      @abstract A <code>CGColorRef</code> value that describes the color of the underlining.
 */
@available(OSX 10.4, *)
var kAXUnderlineColorTextAttribute: Unmanaged<CFString>

/*! @constant kAXStrikethroughColorTextAttribute
      @abstract A <code>CGColorRef</code> value that describes the color of the strikethrough.
 */
@available(OSX 10.4, *)
var kAXStrikethroughColorTextAttribute: Unmanaged<CFString>

/*! @constant kAXUnderlineTextAttribute
      @abstract A <code>CFNumberRef</code> value that describes the underline style (see {@link //apple_ref/c/tdef/AXUnderlineStyle AXUnderlineStyle} for possible values).
 */
@available(OSX 10.4, *)
var kAXUnderlineTextAttribute: Unmanaged<CFString>

/*! @constant kAXSuperscriptTextAttribute
      @abstract A <code>CFNumberRef</code> value that indicates whether the text is superscript (value > 0) or subscript (value < 0).
 */
@available(OSX 10.4, *)
var kAXSuperscriptTextAttribute: Unmanaged<CFString>

/*! @constant kAXStrikethroughTextAttribute
      @abstract A <code>CFBooleanRef</code> value that indicates whether the text displays strikethrough.
 */
@available(OSX 10.4, *)
var kAXStrikethroughTextAttribute: Unmanaged<CFString>

/*! @constant kAXShadowTextAttribute
      @abstract A <code>CFBooleanRef</code> value that indicates whether the text displays shadow.
 */
@available(OSX 10.4, *)
var kAXShadowTextAttribute: Unmanaged<CFString>

/*! @constant kAXAttachmentTextAttribute
      @abstract An <code>AXUIElementRef</code> value for the accessibility object representing the text attachment.
 */
@available(OSX 10.4, *)
var kAXAttachmentTextAttribute: Unmanaged<CFString>

/*! @constant kAXLinkTextAttribute
      @abstract An <code>AXUIElementRef</code> value used to access the object to which the specified range of text links.
 */
@available(OSX 10.4, *)
var kAXLinkTextAttribute: Unmanaged<CFString>

/*! @constant kAXNaturalLanguageTextAttribute
      @abstract A <code>CFStringRef</code> value that indicates the language in which the text will be spoken aloud by the system.
 */
@available(OSX 10.4, *)
var kAXNaturalLanguageTextAttribute: Unmanaged<CFString>

/*! @constant kAXReplacementStringTextAttribute
      @abstract A <code>CFStringRef</code> value that indicates the string that will replace the text.
 */
@available(OSX 10.4, *)
var kAXReplacementStringTextAttribute: Unmanaged<CFString>

/*! @constant kAXMisspelledTextAttribute
      @abstract A <code>CFBooleanRef</code> value that indicates whether the text is misspelled.
 */
@available(OSX 10.4, *)
var kAXMisspelledTextAttribute: Unmanaged<CFString>

/*! @constant kAXMarkedMisspelledTextAttribute
	  @abstract A <code>CFBooleanRef</code> value that indicates whether the text is visibly shown as misspelled
		(for example, with a squiggle underneath the text).
 */
@available(OSX 10.9, *)
var kAXMarkedMisspelledTextAttribute: Unmanaged<CFString>

/*! @constant kAXAutocorrectedTextAttribute
      @abstract A <code>CFBooleanRef</code> value that indicates whether the text was autocorrected.
 */
@available(OSX 10.7, *)
var kAXAutocorrectedTextAttribute: Unmanaged<CFString>

/*! @constant kAXListItemPrefixTextAttribute
      @abstract A <code>CFAttributedStringRef</code> value that indicates the prepended string of the list item. If the string is a common unicode character (e.g. a bullet �), return that unicode character. For lists with images before the text, return a reasonable label of the image.
 */
@available(OSX 10.11, *)
var kAXListItemPrefixTextAttribute: Unmanaged<CFString>

/*! @constant kAXListItemIndexTextAttribute
      @abstract A <code>CFNumberRef</code> value that indicates the line index. Each list item increments the index, even for unordered lists. The first item should have index 0.
 */
@available(OSX 10.11, *)
var kAXListItemIndexTextAttribute: Unmanaged<CFString>

/*! @constant kAXListItemLevelTextAttribute
      @abstract A <code>CFNumberRef</code> value that indicates the indent level. Each sublist increments the level. The first item should have level 0.
 */
@available(OSX 10.11, *)
var kAXListItemLevelTextAttribute: Unmanaged<CFString>

/*! @constant kAXFontNameKey
      @abstract Required key of the {@link kAXFontTextAttribute} dictionary for the font name in a <code>CFStringRef</code>.
 */
@available(OSX 10.4, *)
var kAXFontNameKey: Unmanaged<CFString>

/*! @constant kAXFontFamilyKey
      @abstract Optional key of the {@link kAXFontTextAttribute} dictionary for the font family name in a <code>CFStringRef</code>.
 */
@available(OSX 10.4, *)
var kAXFontFamilyKey: Unmanaged<CFString>

/*! @constant kAXVisibleNameKey
      @abstract Optional key of the {@link kAXFontTextAttribute} dictionary for the font display name in a <code>CFStringRef</code>.
 */
@available(OSX 10.4, *)
var kAXVisibleNameKey: Unmanaged<CFString>

/*! @constant kAXFontSizeKey
      @abstract Required key of the {@link kAXFontTextAttribute} dictionary for the font size in a <code>CFNumberRef</code>.
 */
@available(OSX 10.4, *)
var kAXFontSizeKey: Unmanaged<CFString>

/*! @typedef AXUnderlineStyle
      @abstract Values that describe the style of underlining (used with the {@link kAXUnderlineTextAttribute} attribute).
 */
enum AXUnderlineStyle : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Single
  case Thick
  case Double
}
@available(OSX 10.4, *)
var kAXForegoundColorTextAttribute: Unmanaged<CFString>

/*!
 @function AXIsProcessTrustedWithOptions
 @abstract Returns whether the current process is a trusted accessibility client.
 @param options A dictionary of options, or NULL to specify no options. The following options are available:
     
 KEY: kAXTrustedCheckOptionPrompt
 VALUE: ACFBooleanRef indicating whether the user will be informed if the current process is untrusted. This could be used, for example, on application startup to always warn a user if accessibility is not enabled for the current process. Prompting occurs asynchronously and does not affect the return value.
     
 @result Returns TRUE if the current process is a trusted accessibility client, FALSE if it is not.
 */
@available(OSX 10.9, *)
func AXIsProcessTrustedWithOptions(options: CFDictionary?) -> Bool
@available(OSX 10.9, *)
var kAXTrustedCheckOptionPrompt: Unmanaged<CFString>

/*!
 @function AXIsProcessTrusted
 @abstract Returns whether the current process is a trusted accessibility client.
 
 @result Returns TRUE if the current process is a trusted accessibility client, FALSE if it is not.
 */
@available(OSX 10.4, *)
func AXIsProcessTrusted() -> Bool

/*!
 @typedef AXUIElementRef
 @abstract A structure used to refer to an accessibility object.
 
 @discussion An accessibility object provides information about the user interface object it represents. This information includes the object's
 position in the accessibility hierarchy, its position on the display, details about what it is, and what actions it can perform. Accessibility objects
 respond to messages sent by assistive applications and send notifications that describe state changes.
 */
typealias AXUIElementRef = AXUIElement

/*!
 @enum kAXCopyMultipleAttributeOptionStopOnError
 @discussion Pass this option to @link AXUIElementCopyMultipleAttributeValues AXUIElementCopyMultipleAttributeValues@/link to force the function
 to stop when it gets an error.
 */
struct AXCopyMultipleAttributeOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var StopOnError: AXCopyMultipleAttributeOptions { get }
}

/*!
 @function AXUIElementGetTypeID
 @abstract Returns the unique type identifier for the AXUIElementRef type.
 
 @result Returns a CFTypeID representing the AXUIElementRef type.
 */
func AXUIElementGetTypeID() -> CFTypeID

/*!
 @function AXUIElementCopyAttributeNames
 @abstract Returns a list of all the attributes supported by the specified accessibility object.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param names On return, an array containing the accessibility object's attribute names.
 
 @result If unsuccessful, <code>AXUIElementCopyAttributeNames</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified attribute.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or both of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorFailure</code></dt><dd>There was a system memory failure.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementCopyAttributeNames(element: AXUIElement, _ names: UnsafeMutablePointer<CFArray?>) -> AXError

/*!
 @function AXUIElementCopyAttributeValue
 @abstract Returns the value of an accessibility object's attribute.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param attribute The attribute name.
 @param value On return, the value associated with the specified attribute.
 
 @result If unsuccessful, <code>AXUIElementCopyAttributeValue</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified attribute.</dd>
 <dt><code>kAXErrorNoValue</code></dt><dd>The specified attribute does not have a value.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementCopyAttributeValue(element: AXUIElement, _ attribute: CFString, _ value: UnsafeMutablePointer<AnyObject?>) -> AXError

/*!
 @function AXUIElementGetAttributeValueCount
 @abstract Returns the count of the array of an accessibility object's attribute value.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param attribute The attribute name.
 @param count On return, the size of the array that is the attribute's value.
 
 @result If unsuccessful, <code>AXUIElementGetAttributeValueCount</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>The attribute's value is not an array or one of the other arguments is an illegal value.</dd>
 <dt><code>kAXErrorAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified attribute.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementGetAttributeValueCount(element: AXUIElement, _ attribute: CFString, _ count: UnsafeMutablePointer<CFIndex>) -> AXError

/*!
 @function AXUIElementCopyAttributeValues
 @abstract Returns an array of attribute values for the accessibility object's attribute, starting at the specified index.
 @discussion This function is useful for dealing with large arrays, for example, a table view with a large number of children.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param attribute The attribute name.
 @param index The index into the array.
 @param maxValues The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
 @param values On return, the attribute values you requested. If <code>maxValues</code> is greater than the number of values associated with the attribute, the <code>values</code> array will contain values found between <code>index</code> and the end of the attribute's array, inclusive.
 
 @result If unsuccessful, <code>AXUIElementCopyAttributeValues</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>The attribute's value is not array, the <code>index</code> or <code>maxValues</code> arguments are outside the array's range, or one of the other arguments is an illegal value.</dd>
 <dt><code>kAXErrorNoValue</code></dt><dd>The specified attribute does not have a value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementCopyAttributeValues(element: AXUIElement, _ attribute: CFString, _ index: CFIndex, _ maxValues: CFIndex, _ values: UnsafeMutablePointer<CFArray?>) -> AXError

/*!
 @function AXUIElementIsAttributeSettable
 @abstract Returns whether the specified accessibility object's attribute can be modified.
 @discussion If you receive a <code>kAXErrorCannotComplete</code> error from this function, you might want to repeat the request or change the timeout value.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param attribute The attribute name.
 @param settable On return, a Boolean value indicating whether the attribute is settable.
 
 @result If unsuccessful, <code>AXUIElementIsAttributeSettable</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way (often due to a timeout).</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified attribute.</dd>
 <dt><code>kAXErrorNoValue</code></dt><dd>The specified attribute does not have a value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementIsAttributeSettable(element: AXUIElement, _ attribute: CFString, _ settable: UnsafeMutablePointer<DarwinBoolean>) -> AXError

/*!
 @function AXUIElementSetAttributeValue
 @abstract Sets the accessibility object's attribute to the specified value.
 @discussion You can send and receive many different CFTypeRefs using the accessibility API.
 These include all CFPropertyListRef types, AXUIElementRef, AXValueRef, AXTextMarkerRef, AXTextMarkerRangeRef,
 CFNullRef, CFAttributedStringRef, and CRURLRef.
 @param element The AXUIElementRef representing the accessibility object.
 @param attribute The attribute name.
 @param value The new value for the attribute.
 
 @result If unsuccessful, <code>AXUIElementSetAttributeValue</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>The value is not recognized by the accessible application or one of the other arguments is an illegal value.</dd>
 <dt><code>kAXErrorAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified attribute.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementSetAttributeValue(element: AXUIElement, _ attribute: CFString, _ value: AnyObject) -> AXError

/*!
 @function AXUIElementCopyMultipleAttributeValues
 @abstract Returns the values of multiple attributes in the accessibility object.
 @discussion If the specified AXUIElementRef does not support an attribute passed in the <code>attributes</code> array, the returned array
 can contain an error or CFNull at the corresponding position.
 @param element The AXUIElementRef representing the accessibility object.
 @param attributes An array of attribute names.
 @param options A value that tells <code>AXUIElementCopyMultipleAttributeValues</code> how to handle errors.
 @param values On return, an array in which each position contains the value of the
 attribute that is in the corresponding position in the passed-in <code>attributes</code> array (or CFNull). If <code>options</code> = 0,
 the <code>values</code> array can contain an AXValueRef of type <code>kAXValueAXErrorType</code> in the corresponding position. If <code>options</code> = <code>kAXCopyMultipleAttributeOptionStopOnError</code>,
 this function will return immediately when it gets an error.
 
 @result If unsuccessful, <code>AXUIElementCopyMultipleAttributeValues</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>One of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
@available(OSX 10.4, *)
func AXUIElementCopyMultipleAttributeValues(element: AXUIElement, _ attributes: CFArray, _ options: AXCopyMultipleAttributeOptions, _ values: UnsafeMutablePointer<CFArray?>) -> AXError

/*!
 @function AXUIElementCopyParameterizedAttributeNames
 @abstract Returns a list of all the parameterized attributes supported by the specified accessibility object.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param names On return, an array containing the accessibility object's parameterized attribute names.
 
 @result If unsuccessful, <code>AXUIElementCopyParameterizedAttributeNames</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorAttributeUnsupported</code> or <code>kAXErrorParameterizedAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified parameterized attribute.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or both of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorFailure</code></dt><dd>There was some sort of system memory failure.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
@available(OSX 10.3, *)
func AXUIElementCopyParameterizedAttributeNames(element: AXUIElement, _ names: UnsafeMutablePointer<CFArray?>) -> AXError

/*!
 @function AXUIElementCopyParameterizedAttributeValue
 @abstract Returns the value of an accessibility object's parameterized attribute.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param parameterizedAttribute The parameterized attribute.
 @param parameter The parameter.
 @param result On return, the value of the parameterized attribute.
 
 @result If unsuccessful, <code>AXUIElementCopyParameterizedAttributeValue</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorAttributeUnsupported</code> or <code>kAXErrorParameterizedAttributeUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified parameterized attribute.</dd>
 <dt><code>kAXErrorNoValue</code></dt><dd>The specified parameterized attribute does not have a value.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
@available(OSX 10.3, *)
func AXUIElementCopyParameterizedAttributeValue(element: AXUIElement, _ parameterizedAttribute: CFString, _ parameter: AnyObject, _ result: UnsafeMutablePointer<AnyObject?>) -> AXError

/*!
 @function AXUIElementCopyActionNames
 @abstract Returns a list of all the actions the specified accessibility object can perform.
 @param element The AXUIElementRef representing the accessibility object.
 @param names On return, an array of actions the accessibility object can perform (empty if the accessibility object supports no actions).
 
 @result If unsuccessful, <code>AXUIElementCopyActionNames</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>One or both of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorFailure</code></dt><dd>There was some sort of system memory failure.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementCopyActionNames(element: AXUIElement, _ names: UnsafeMutablePointer<CFArray?>) -> AXError

/*!
 @function AXUIElementCopyActionDescription
 @abstract Returns a localized description of the specified accessibility object's action.
 
 @param element The AXUIElementRef representing the accessibility object.
 @param action The action to be described.
 @param description On return, a string containing the description of the action.
 
 @result If unsuccessful, <code>AXUIElementCopyActionDescription</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorActionUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified action (you will also receive this error if you pass in the system-wide accessibility object).</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementCopyActionDescription(element: AXUIElement, _ action: CFString, _ description: UnsafeMutablePointer<CFString?>) -> AXError

/*!
 @function AXUIElementPerformAction
 @abstract Requests that the specified accessibility object perform the specified action.
 @discussion It is possible to receive the <code>kAXErrorCannotComplete</code> error code from this function because accessible applications often need to
 perform some sort of modal processing inside their action callbacks and they may not return within the timeout value set by the accessibility API.
 This does not necessarily mean that the function has failed, however. If appropriate, your assistive application
 can try to call this function again. Also, you may be able to increase the timeout value (see @link AXUIElementSetMessagingTimeout AXUIElementSetMessagingTimeout@/link).
 @param element The AXUIElementRef representing the accessibility object.
 @param action The action to be performed.
 
 @result If unsuccessful, <code>AXUIElementPerformAction</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorActionUnsupported</code></dt><dd>The specified AXUIElementRef does not support the specified action (you will also receive this error if you pass in the system-wide accessibility object).</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way or the application has not yet responded.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementPerformAction(element: AXUIElement, _ action: CFString) -> AXError

/*!
 @function AXUIElementCopyElementAtPosition
 @abstract Returns the accessibility object at the specified position in top-left relative screen coordinates.
 
 @discussion This function does hit-testing based on window z-order (that is, layering). If one window is on top of another window, the returned accessibility object comes from whichever window is topmost at the specified
 location. Note that if the system-wide accessibility object is passed in the <code>application</code> parameter, the position test is not restricted to a
 particular application.
 
 @param application The AXUIElementRef representing the application that contains the screen coordinates (or the system-wide accessibility object).
 @param x The horizontal position.
 @param y The vertical position.
 @param element On return, the accessibility object at the position specified by x and y.
 
 @result If unsuccessful, <code>AXUIElementCopyElementAtPosition</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorNoValue</code></dt><dd>There is no accessibility object at the specified position.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorNotImplemented</code></dt><dd>The process does not fully support the accessibility API.</dd></dl>
 */
func AXUIElementCopyElementAtPosition(application: AXUIElement, _ x: Float, _ y: Float, _ element: UnsafeMutablePointer<AXUIElement?>) -> AXError

/*!
 @function AXUIElementCreateApplication
 @abstract Creates and returns the top-level accessibility object for the application with the specified process ID.
 
 @param pid The process ID of an application.
 @result The AXUIElementRef representing the top-level accessibility object for the application with the specified process ID.
 */
func AXUIElementCreateApplication(pid: pid_t) -> Unmanaged<AXUIElement>

/*!
 @function AXUIElementCreateSystemWide
 @abstract Returns an accessibility object that provides access to system attributes.
 @discussion This is useful for things like finding the focused accessibility object regardless of which application is currently active.
 
 @result The AXUIElementRef representing the system-wide accessibility object.
 */
func AXUIElementCreateSystemWide() -> Unmanaged<AXUIElement>

/*!
 @function AXUIElementGetPid
 @abstract Returns the process ID associated with the specified accessibility object.
 
 @param element The AXUIElementRef representing an accessibility object.
 @param pid On return, the process ID associated with the specified accessibility object.
 
 @result If unsuccessful, <code>AXUIElementGetPid</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd></dl>
 */
func AXUIElementGetPid(element: AXUIElement, _ pid: UnsafeMutablePointer<pid_t>) -> AXError

/*!
 @function AXUIElementSetMessagingTimeout
 @abstract Sets the timeout value used in the accessibility API.
 @discussion Pass the system-wide accessibility object (see @link AXUIElementCreateSystemWide AXUIElementCreateSystemWide@/link) if you want to set the timeout globally for this process.
 Setting the timeout on another accessibility object sets it only for that object, not for other accessibility objects that are equal to it.
 
 Setting <code>timeoutInSeconds</code> to 0 for the system-wide accessibility object resets the global timeout to its default value. Setting <code>timeoutInSeconds</code>
 to 0 for any other accessibility object makes that element use the current global timeout value.
 
 @param element The AXUIElementRef representing an accessibility object.
 @param timeoutInSeconds The number of seconds for the new timeout value.
 
 @result If unsuccessful, <code>AXUIElementSetMessagingTimeout</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value (timeout values must be positive).</dd>
 <dt><code>kAXErrorInvalidUIElement</code></dt><dd>The AXUIElementRef is invalid.</dd></dl>
 */
@available(OSX 10.4, *)
func AXUIElementSetMessagingTimeout(element: AXUIElement, _ timeoutInSeconds: Float) -> AXError

/*!
 @typedef AXObserverRef
 
 @discussion
 An AXObserverRef is a CFType. Like all CFTypes, they are reference counted (@link //apple_ref/c/func/CFRetain CFRetain@/link, @link //apple_ref/c/func/CFRelease CFRelease@/link).
 */
typealias AXObserverRef = AXObserver

/*!
 @typedef AXObserverCallback
 @abstract
 
 @param observer An AXObserverRef object to observe the notifications.
 @param element The accessibility object.
 @param notification The name of the notification to observe.
 @param refcon Application-defined data specified when registering the observer for notification
 */
typealias AXObserverCallback = @convention(c) (AXObserver, AXUIElement, CFString, UnsafeMutablePointer<Void>) -> Void

/*!
 @typedef AXObserverCallbackWithInfo
 @abstract
     
 @param observer An AXObserverRef object to observe the notifications.
 @param element The accessibility object.
 @param notification The name of the notification to observe.
 @param info The coresponding notification information.
 @param refcon Application-defined data specified when registering the observer for notification
 */
typealias AXObserverCallbackWithInfo = @convention(c) (AXObserver, AXUIElement, CFString, CFDictionary, UnsafeMutablePointer<Void>) -> Void

/*!
 @function AXObserverGetTypeID
 @abstract Returns the unique type identifier for the AXObserverRef type.
 
 @result Returns the CFTypeID of the AXObserverRef type.
 */
func AXObserverGetTypeID() -> CFTypeID

/*!
 @function AXObserverCreate
 @abstract Creates a new observer that can receive notifications from the specified application.
 @discussion When an observed notification is received, it is passed to @link AXObserverCallback AXObserverCallback@/link.
 
 @param application The process ID of the application.
 @param callback The callback function.
 @param outObserver On return, an AXObserverRef representing the observer object.
 
 @result If unsuccessful, <code>AXObserverCreate</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
 <dt><code>kAXErrorFailure</code></dt><dd>There is some sort of system memory failure.</dd></dl>
 */
func AXObserverCreate(application: pid_t, _ callback: AXObserverCallback, _ outObserver: UnsafeMutablePointer<AXObserver?>) -> AXError

/*!
 @function AXObserverCreateWithInfoCallback
 @abstract Creates a new observer that can receive notifications with an information dictionary from the specified application.
 @discussion When an observed notification is received, it is passed to @link AXObserverCallbackWithInfo AXObserverCallbackWithInfo@/link.
     
 @param application The process ID of the application.
 @param callback The callback function.
 @param outObserver On return, an AXObserverRef representing the observer object.
     
 @result If unsuccessful, <code>AXObserverCreateWithInfoCallback</code> may return one of the following error codes, among others:
     <dl><dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value.</dd>
     <dt><code>kAXErrorFailure</code></dt><dd>There is some sort of system memory failure.</dd></dl>
*/
func AXObserverCreateWithInfoCallback(application: pid_t, _ callback: AXObserverCallbackWithInfo, _ outObserver: UnsafeMutablePointer<AXObserver?>) -> AXError

/*!
 @function AXObserverAddNotification
 @abstract Registers the specified observer to receive notifications from the specified accessibility object.
 
 @param observer The observer object created from a call to @link AXObserverCreate AXObserverCreate@/link.
 @param element The accessibility object for which to observe notifications.
 @param notification The name of the notification to observe.
 @param refcon Application-defined data passed to the callback when it is called.
 
 @result If unsuccessful, <code>AXObserverAddNotification</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorInvalidUIElementObserver</code></dt><dd>The observer is not a valid AXObserverRef type.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value or the length of the notification name is greater than 1024.</dd>
 <dt><code>kAXErrorNotificationUnsupported</code></dt><dd>The accessibility object does not support notifications (note that the system-wide accessibility object does not support notifications).</dd>
 <dt><code>kAXErrorNotificationAlreadyRegistered</code></dt><dd>The notification has already been registered.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorFailure</code></dt><dd>There is some sort of system memory failure.</dd></dl>
 */
func AXObserverAddNotification(observer: AXObserver, _ element: AXUIElement, _ notification: CFString, _ refcon: UnsafeMutablePointer<Void>) -> AXError

/*!
 @function AXObserverRemoveNotification
 @abstract Removes the specified notification from the list of notifications the observer wants to receive from the accessibility object.
 
 @param observer The observer object created from a call to @link AXObserverCreate AXObserverCreate@/link.
 @param element The accessibility object for which this observer observes notifications.
 @param notification The name of the notification to remove from the list of observed notifications.
 
 @result If unsuccessful, <code>AXObserverRemoveNotification</code> may return one of the following error codes, among others:
 <dl><dt><code>kAXErrorInvalidUIElementObserver</code></dt><dd>The observer is not a valid AXObserverRef type.</dd>
 <dt><code>kAXErrorIllegalArgument</code></dt><dd>One or more of the arguments is an illegal value or the length of the notification name is greater than 1024.</dd>
 <dt><code>kAXErrorNotificationUnsupported</code></dt><dd>The accessibility object does not support notifications (note that the system-wide accessibility object does not support notifications).</dd>
 <dt><code>kAXErrorNotificationNotRegistered</code></dt><dd>This observer has not registered for any notifications.</dd>
 <dt><code>kAXErrorCannotComplete</code></dt><dd>The function cannot complete because messaging has failed in some way.</dd>
 <dt><code>kAXErrorFailure</code></dt><dd>There is some sort of system memory failure.</dd></dl>
 */
func AXObserverRemoveNotification(observer: AXObserver, _ element: AXUIElement, _ notification: CFString) -> AXError

/*!
 @function AXObserverGetRunLoopSource
 @abstract Returns the observer's run loop source.
 @discussion The observer must be added to a run loop before it can receive notifications. Note that releasing the AXObserverRef automatically
 removes the run loop source from the run loop (you can also do this explicitly by calling @link //apple_ref/c/func/CFRunLoopRemoveSource CFRunLoopRemoveSource@/link).
 
 <code>AXObserverGetRunLoopSource</code> might be used in code in this way:
 
 <pre>
 CFRunLoopAddSource(CFRunLoopGetCurrent(), AXObserverGetRunLoopSource(observer), kCFRunLoopDefaultMode);
 </pre>
 
 @param observer The observer object (created from a call to @link AXObserverCreate AXObserverCreate@/link) for which to get the run loop source.
 @result Returns the CFRunLoopSourceRef of the observer; NIL if you pass NIL in <code>observer</code>.
 */
func AXObserverGetRunLoopSource(observer: AXObserver) -> Unmanaged<CFRunLoopSource>

/*!
  @enum AXValueType Wrappers
  
  @discussion
  These are AXValueType wrappers for other structures. You must use the AXValueCreate
  and AXValueGetValue functions to convert between the wrapped structure and the native structure.
  
  @constant kAXValueTypeCGPoint a wrapper for CGPoint; see CoreGraphics.h
  @constant kAXValueTypeCGSize a wrapper for CGSize; see CoreGraphics.h
  @constant kAXValueTypeCGRect a wrapper for CGRect; see CoreGraphics.h
  @constant kAXValueTypeCFRange a wrapper for CFRange; see CFBase.h
  @constant kAXValueTypeAXError See AXError.h
  @constant kAXValueTypeIllegal a wrapper for unsupported structures
*/
enum AXValueType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(OSX 10.11, *)
  case CGPoint
  @available(OSX 10.11, *)
  case CGSize
  @available(OSX 10.11, *)
  case CGRect
  @available(OSX 10.11, *)
  case CFRange
  @available(OSX 10.11, *)
  case AXError
  @available(OSX 10.11, *)
  case Illegal
}
let kAXValueCGPointType: UInt32
let kAXValueCGSizeType: UInt32
let kAXValueCGRectType: UInt32
let kAXValueCFRangeType: UInt32
let kAXValueAXErrorType: UInt32
let kAXValueIllegalType: UInt32

/*!
    @typedef AXValueRef
    
*/
typealias AXValueRef = AXValue

/*!
	@function AXValueGetTypeID
		
	@result
	
	@availability Mac OS X version 10.3 or later
*/
@available(OSX 10.3, *)
func AXValueGetTypeID() -> CFTypeID

/*!
	@function AXValueCreate
	
	@discussion
	Encodes a structure pointed to by valuePtr into a CFTypeRef.
	
	@param theType
	@param valuePtr
	
	@result
*/
func AXValueCreate(theType: AXValueType, _ valuePtr: UnsafePointer<Void>) -> Unmanaged<AXValue>?

/*!
	@function AXValueGetType
	
	@discussion
	Returns the structure type encoded in value. If the type is not recognized, it returns kAXValueIllegalType.
	
	@param value
		
	@result
*/
func AXValueGetType(value: AXValue) -> AXValueType

/*!
	@function AXValueGetValue
	
	@discussion
	Decodes the structure stored in value and copies it into valuePtr. If the structure stored in value is not
	the same as requested by theType, the function returns false.
	
	@param value
		
	@result
*/
func AXValueGetValue(value: AXValue, _ theType: AXValueType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
var kAXHorizontalOrientationValue: String { get }
var kAXVerticalOrientationValue: String { get }
var kAXUnknownOrientationValue: String { get }
var kAXAscendingSortDirectionValue: String { get }
var kAXDescendingSortDirectionValue: String { get }
var kAXUnknownSortDirectionValue: String { get }
var AX_ALLOW_OLD_SECURITY_METHOD: Int32 { get }
typealias HIShapeRef = HIShape
typealias HIMutableShapeRef = HIMutableShape
var kHIShapeEnumerateInit: Int { get }
var kHIShapeEnumerateRect: Int { get }
var kHIShapeEnumerateTerminate: Int { get }
var kHIShapeParseFromTop: Int { get }
var kHIShapeParseFromBottom: Int { get }
var kHIShapeParseFromLeft: Int { get }
var kHIShapeParseFromRight: Int { get }
var kHIShapeParseFromTopLeft: Int { get }
var kHIShapeParseFromBottomRight: Int { get }
typealias HIShapeEnumerateProcPtr = @convention(c) (Int32, HIShape!, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.2, *)
func HIShapeGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func HIShapeCreateEmpty() -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeCreateWithQDRgn(inRgn: RgnHandle) -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeCreateWithRect(inRect: UnsafePointer<CGRect>) -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeCreateCopy(inShape: HIShape!) -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeCreateIntersection(inShape1: HIShape!, _ inShape2: HIShape!) -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeCreateDifference(inShape1: HIShape!, _ inShape2: HIShape!) -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeCreateUnion(inShape1: HIShape!, _ inShape2: HIShape!) -> Unmanaged<HIShape>!
@available(OSX 10.5, *)
func HIShapeCreateXor(inShape1: HIShape!, _ inShape2: HIShape!) -> Unmanaged<HIShape>!
@available(OSX 10.2, *)
func HIShapeIsEmpty(inShape: HIShape!) -> Bool
@available(OSX 10.2, *)
func HIShapeIsRectangular(inShape: HIShape!) -> Bool
@available(OSX 10.2, *)
func HIShapeContainsPoint(inShape: HIShape!, _ inPoint: UnsafePointer<CGPoint>) -> Bool
@available(OSX 10.4, *)
func HIShapeIntersectsRect(inShape: HIShape!, _ inRect: UnsafePointer<CGRect>) -> Bool
@available(OSX 10.2, *)
func HIShapeGetBounds(inShape: HIShape!, _ outRect: UnsafeMutablePointer<CGRect>) -> UnsafeMutablePointer<CGRect>
@available(OSX 10.2, *)
func HIShapeGetAsQDRgn(inShape: HIShape!, _ outRgn: RgnHandle) -> OSStatus
@available(OSX 10.2, *)
func HIShapeReplacePathInCGContext(inShape: HIShape!, _ inContext: CGContext!) -> OSStatus
@available(OSX 10.5, *)
func HIShapeEnumerate(inShape: HIShape!, _ inOptions: OptionBits, _ inProc: HIShapeEnumerateProcPtr!, _ inRefcon: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.2, *)
func HIShapeCreateMutable() -> Unmanaged<HIMutableShape>!
@available(OSX 10.2, *)
func HIShapeCreateMutableCopy(inOrig: HIShape!) -> Unmanaged<HIMutableShape>!
@available(OSX 10.5, *)
func HIShapeCreateMutableWithRect(inRect: UnsafePointer<CGRect>) -> Unmanaged<HIMutableShape>!
@available(OSX 10.2, *)
func HIShapeSetEmpty(inShape: HIMutableShape!) -> OSStatus
@available(OSX 10.5, *)
func HIShapeSetWithShape(inDestShape: HIMutableShape!, _ inSrcShape: HIShape!) -> OSStatus
@available(OSX 10.2, *)
func HIShapeIntersect(inShape1: HIShape!, _ inShape2: HIShape!, _ outResult: HIMutableShape!) -> OSStatus
@available(OSX 10.2, *)
func HIShapeDifference(inShape1: HIShape!, _ inShape2: HIShape!, _ outResult: HIMutableShape!) -> OSStatus
@available(OSX 10.2, *)
func HIShapeUnion(inShape1: HIShape!, _ inShape2: HIShape!, _ outResult: HIMutableShape!) -> OSStatus
@available(OSX 10.5, *)
func HIShapeXor(inShape1: HIShape!, _ inShape2: HIShape!, _ outResult: HIMutableShape!) -> OSStatus
@available(OSX 10.2, *)
func HIShapeOffset(inShape: HIMutableShape!, _ inDX: CGFloat, _ inDY: CGFloat) -> OSStatus
@available(OSX 10.5, *)
func HIShapeInset(inShape: HIMutableShape!, _ inDX: CGFloat, _ inDY: CGFloat) -> OSStatus
@available(OSX 10.5, *)
func HIShapeUnionWithRect(inShape: HIMutableShape!, _ inRect: UnsafePointer<CGRect>) -> OSStatus
var kAlignNone: Int { get }
var kAlignVerticalCenter: Int { get }
var kAlignTop: Int { get }
var kAlignBottom: Int { get }
var kAlignHorizontalCenter: Int { get }
var kAlignAbsoluteCenter: Int { get }
var kAlignCenterTop: Int { get }
var kAlignCenterBottom: Int { get }
var kAlignLeft: Int { get }
var kAlignCenterLeft: Int { get }
var kAlignTopLeft: Int { get }
var kAlignBottomLeft: Int { get }
var kAlignRight: Int { get }
var kAlignCenterRight: Int { get }
var kAlignTopRight: Int { get }
var kAlignBottomRight: Int { get }
var atNone: Int { get }
var atVerticalCenter: Int { get }
var atTop: Int { get }
var atBottom: Int { get }
var atHorizontalCenter: Int { get }
var atAbsoluteCenter: Int { get }
var atCenterTop: Int { get }
var atCenterBottom: Int { get }
var atLeft: Int { get }
var atCenterLeft: Int { get }
var atTopLeft: Int { get }
var atBottomLeft: Int { get }
var atRight: Int { get }
var atCenterRight: Int { get }
var atTopRight: Int { get }
var atBottomRight: Int { get }
typealias IconAlignmentType = Int16
var kTransformNone: Int { get }
var kTransformDisabled: Int { get }
var kTransformOffline: Int { get }
var kTransformOpen: Int { get }
var kTransformLabel1: Int { get }
var kTransformLabel2: Int { get }
var kTransformLabel3: Int { get }
var kTransformLabel4: Int { get }
var kTransformLabel5: Int { get }
var kTransformLabel6: Int { get }
var kTransformLabel7: Int { get }
var kTransformSelected: Int { get }
var kTransformSelectedDisabled: Int { get }
var kTransformSelectedOffline: Int { get }
var kTransformSelectedOpen: Int { get }
var ttNone: Int { get }
var ttDisabled: Int { get }
var ttOffline: Int { get }
var ttOpen: Int { get }
var ttLabel1: Int { get }
var ttLabel2: Int { get }
var ttLabel3: Int { get }
var ttLabel4: Int { get }
var ttLabel5: Int { get }
var ttLabel6: Int { get }
var ttLabel7: Int { get }
var ttSelected: Int { get }
var ttSelectedDisabled: Int { get }
var ttSelectedOffline: Int { get }
var ttSelectedOpen: Int { get }
typealias IconTransformType = Int16
var kSelectorLarge1Bit: UInt32 { get }
var kSelectorLarge4Bit: UInt32 { get }
var kSelectorLarge8Bit: UInt32 { get }
var kSelectorLarge32Bit: UInt32 { get }
var kSelectorLarge8BitMask: UInt32 { get }
var kSelectorSmall1Bit: UInt32 { get }
var kSelectorSmall4Bit: UInt32 { get }
var kSelectorSmall8Bit: UInt32 { get }
var kSelectorSmall32Bit: UInt32 { get }
var kSelectorSmall8BitMask: UInt32 { get }
var kSelectorMini1Bit: UInt32 { get }
var kSelectorMini4Bit: UInt32 { get }
var kSelectorMini8Bit: UInt32 { get }
var kSelectorHuge1Bit: UInt32 { get }
var kSelectorHuge4Bit: UInt32 { get }
var kSelectorHuge8Bit: UInt32 { get }
var kSelectorHuge32Bit: UInt32 { get }
var kSelectorHuge8BitMask: UInt32 { get }
var kSelectorAllLargeData: UInt32 { get }
var kSelectorAllSmallData: UInt32 { get }
var kSelectorAllMiniData: UInt32 { get }
var kSelectorAllHugeData: UInt32 { get }
var kSelectorAll1BitData: UInt32 { get }
var kSelectorAll4BitData: UInt32 { get }
var kSelectorAll8BitData: UInt32 { get }
var kSelectorAll32BitData: UInt32 { get }
var kSelectorAllAvailableData: UInt32 { get }
typealias IconSelectorValue = UInt32
var svLarge1Bit: UInt32 { get }
var svLarge4Bit: UInt32 { get }
var svLarge8Bit: UInt32 { get }
var svSmall1Bit: UInt32 { get }
var svSmall4Bit: UInt32 { get }
var svSmall8Bit: UInt32 { get }
var svMini1Bit: UInt32 { get }
var svMini4Bit: UInt32 { get }
var svMini8Bit: UInt32 { get }
var svAllLargeData: UInt32 { get }
var svAllSmallData: UInt32 { get }
var svAllMiniData: UInt32 { get }
var svAll1BitData: UInt32 { get }
var svAll4BitData: UInt32 { get }
var svAll8BitData: UInt32 { get }
var svAllAvailableData: UInt32 { get }
typealias IconActionProcPtr = @convention(c) (ResType, UnsafeMutablePointer<Handle>, UnsafeMutablePointer<Void>) -> OSErr
typealias IconGetterProcPtr = @convention(c) (ResType, UnsafeMutablePointer<Void>) -> Handle
typealias IconActionUPP = IconActionProcPtr
typealias IconGetterUPP = IconGetterProcPtr
func NewIconActionUPP(userRoutine: IconActionProcPtr!) -> IconActionUPP!
func NewIconGetterUPP(userRoutine: IconGetterProcPtr!) -> IconGetterUPP!
func DisposeIconActionUPP(userUPP: IconActionUPP!)
func DisposeIconGetterUPP(userUPP: IconGetterUPP!)
func InvokeIconActionUPP(theType: ResType, _ theIcon: UnsafeMutablePointer<Handle>, _ yourDataPtr: UnsafeMutablePointer<Void>, _ userUPP: IconActionUPP!) -> OSErr
func InvokeIconGetterUPP(theType: ResType, _ yourDataPtr: UnsafeMutablePointer<Void>, _ userUPP: IconGetterUPP!) -> Handle
typealias PlotIconRefFlags = UInt32
var kPlotIconRefNormalFlags: Int { get }
var kPlotIconRefNoImage: Int { get }
var kPlotIconRefNoMask: Int { get }
func IconRefToIconFamily(theIconRef: IconRef, _ whichIcons: IconSelectorValue, _ iconFamily: UnsafeMutablePointer<IconFamilyHandle>) -> OSErr
func SetIconFamilyData(iconFamily: IconFamilyHandle, _ iconType: OSType, _ h: Handle) -> OSErr
func GetIconFamilyData(iconFamily: IconFamilyHandle, _ iconType: OSType, _ h: Handle) -> OSErr
@available(OSX 10.1, *)
func PlotIconRefInContext(inContext: CGContext!, _ inRect: UnsafePointer<CGRect>, _ inAlign: IconAlignmentType, _ inTransform: IconTransformType, _ inLabelColor: UnsafePointer<RGBColor>, _ inFlags: PlotIconRefFlags, _ inIconRef: IconRef) -> OSStatus
@available(OSX 10.5, *)
func IconRefContainsCGPoint(testPt: UnsafePointer<CGPoint>, _ iconRect: UnsafePointer<CGRect>, _ align: IconAlignmentType, _ iconServicesUsageFlags: IconServicesUsageFlags, _ theIconRef: IconRef) -> Bool
@available(OSX 10.5, *)
func IconRefIntersectsCGRect(testRect: UnsafePointer<CGRect>, _ iconRect: UnsafePointer<CGRect>, _ align: IconAlignmentType, _ iconServicesUsageFlags: IconServicesUsageFlags, _ theIconRef: IconRef) -> Bool
@available(OSX 10.5, *)
func IconRefToHIShape(iconRect: UnsafePointer<CGRect>, _ align: IconAlignmentType, _ iconServicesUsageFlags: IconServicesUsageFlags, _ theIconRef: IconRef) -> Unmanaged<HIShape>!
func IsIconRefMaskEmpty(iconRef: IconRef) -> Bool
func GetIconRefVariant(inIconRef: IconRef, _ inVariant: OSType, _ outTransform: UnsafeMutablePointer<IconTransformType>) -> IconRef
var icPrefNotFoundErr: Int { get }
var icPermErr: Int { get }
var icPrefDataErr: Int { get }
var icInternalErr: Int { get }
var icTruncatedErr: Int { get }
var icNoMoreWritersErr: Int { get }
var icNothingToOverrideErr: Int { get }
var icNoURLErr: Int { get }
var icConfigNotFoundErr: Int { get }
var icConfigInappropriateErr: Int { get }
var icProfileNotFoundErr: Int { get }
var icTooManyProfilesErr: Int { get }
var kICComponentInterfaceVersion0: Int { get }
var kICComponentInterfaceVersion1: Int { get }
var kICComponentInterfaceVersion2: Int { get }
var kICComponentInterfaceVersion3: Int { get }
var kICComponentInterfaceVersion4: Int { get }
var kICComponentInterfaceVersion: Int { get }

/************************************************************************************************
  opaque type for preference reference
 ************************************************************************************************/
typealias ICInstance = COpaquePointer

/************************************************************************************************
  preference attributes type, bit number constants, and mask constants
 ************************************************************************************************/
typealias ICAttr = UInt32
var kICAttrLockedBit: Int { get }
var kICAttrVolatileBit: Int { get }
var kICAttrNoChange: UInt32 { get }
var kICAttrLockedMask: UInt32 { get }
var kICAttrVolatileMask: UInt32 { get }

/************************************************************************************************
  permissions for use with ICBegin
 ************************************************************************************************/
typealias ICPerm = UInt8
var icNoPerm: Int { get }
var icReadOnlyPerm: Int { get }
var icReadWritePerm: Int { get }

/************************************************************************************************
  profile IDs
 ************************************************************************************************/
typealias ICProfileID = Int32
typealias ICProfileIDPtr = UnsafeMutablePointer<ICProfileID>
var kICNilProfileID: Int { get }
var kICNoUserInteractionBit: Int { get }
var kICNoUserInteractionMask: Int { get }
var kICFileType: Int { get }
var kICCreator: Int { get }
var kInternetEventClass: Int { get }
var kAEGetURL: Int { get }
var kAEFetchURL: Int { get }
var keyAEAttaching: Int { get }
var kICEditPreferenceEventClass: Int { get }
var kICEditPreferenceEvent: Int { get }
var keyICEditPreferenceDestination: Int { get }
var kICComponentVersion: Int { get }
var kICNumVersion: Int { get }

/************************************************************************************************
  types and constants for use with kICDocumentFont, et. al.
 ************************************************************************************************/
struct ICFontRecord {
  var size: Int16
  var face: Style
  var pad: Int8
  var font: Str255
  init()
  init(size: Int16, face: Style, pad: Int8, font: Str255)
}
typealias ICFontRecordPtr = UnsafeMutablePointer<ICFontRecord>
typealias ICFontRecordHandle = UnsafeMutablePointer<ICFontRecordPtr>

/************************************************************************************************
  types and constants for use with kICCharacterSet, et. al.
 ************************************************************************************************/
struct ICCharTable {
  var netToMac: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var macToNet: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(netToMac: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), macToNet: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias ICCharTablePtr = UnsafeMutablePointer<ICCharTable>
typealias ICCharTableHandle = UnsafeMutablePointer<ICCharTablePtr>

/************************************************************************************************
  types and constants for use with kICHelper, et. al.
 ************************************************************************************************/
struct ICAppSpec {
  var fCreator: OSType
  var name: Str63
  init()
  init(fCreator: OSType, name: Str63)
}
typealias ICAppSpecPtr = UnsafeMutablePointer<ICAppSpec>
typealias ICAppSpecHandle = UnsafeMutablePointer<ICAppSpecPtr>
struct ICAppSpecList {
  var numberOfItems: Int16
  var appSpecs: (ICAppSpec)
  init()
  init(numberOfItems: Int16, appSpecs: (ICAppSpec))
}
typealias ICAppSpecListPtr = UnsafeMutablePointer<ICAppSpecList>
typealias ICAppSpecListHandle = UnsafeMutablePointer<ICAppSpecListPtr>

/************************************************************************************************
  types and constants for use with kICDownloadFolder, et. al.
 ************************************************************************************************/
struct ICFileSpec {
  var volName: Str31
  var volCreationDate: Int32
  var fss: FSSpec
  var alias: AliasRecord
  init()
  init(volName: Str31, volCreationDate: Int32, fss: FSSpec, alias: AliasRecord)
}
typealias ICFileSpecPtr = UnsafeMutablePointer<ICFileSpec>
typealias ICFileSpecHandle = UnsafeMutablePointer<ICFileSpecPtr>
var kICFileSpecHeaderSize: Int { get }

/************************************************************************************************
  types and constants for use with ICMapFilename, et. al.
 ************************************************************************************************/
typealias ICMapEntryFlags = Int32
typealias ICFixedLength = Int16
struct ICMapEntry {
  var totalLength: Int16
  var fixedLength: ICFixedLength
  var version: Int16
  var fileType: OSType
  var fileCreator: OSType
  var postCreator: OSType
  var flags: ICMapEntryFlags
  var `extension`: Str255
  var creatorAppName: Str255
  var postAppName: Str255
  var MIMEType: Str255
  var entryName: Str255
  init()
  init(totalLength: Int16, fixedLength: ICFixedLength, version: Int16, fileType: OSType, fileCreator: OSType, postCreator: OSType, flags: ICMapEntryFlags, `extension`: Str255, creatorAppName: Str255, postAppName: Str255, MIMEType: Str255, entryName: Str255)
}
typealias ICMapEntryPtr = UnsafeMutablePointer<ICMapEntry>
typealias ICMapEntryHandle = UnsafeMutablePointer<ICMapEntryPtr>
var kICMapFixedLength: Int { get }
var kICMapBinaryBit: Int { get }
var kICMapResourceForkBit: Int { get }
var kICMapDataForkBit: Int { get }
var kICMapPostBit: Int { get }
var kICMapNotIncomingBit: Int { get }
var kICMapNotOutgoingBit: Int { get }
var kICMapBinaryMask: Int { get }
var kICMapResourceForkMask: Int { get }
var kICMapDataForkMask: Int { get }
var kICMapPostMask: Int { get }
var kICMapNotIncomingMask: Int { get }
var kICMapNotOutgoingMask: Int { get }

/************************************************************************************************
  types and constants for use with kICServices, et. al.
 ************************************************************************************************/
typealias ICServiceEntryFlags = Int16
struct ICServiceEntry {
  var name: Str255
  var port: Int16
  var flags: ICServiceEntryFlags
  init()
  init(name: Str255, port: Int16, flags: ICServiceEntryFlags)
}
typealias ICServiceEntryPtr = UnsafeMutablePointer<ICServiceEntry>
typealias ICServiceEntryHandle = UnsafeMutablePointer<ICServiceEntryPtr>
var kICServicesTCPBit: Int { get }
var kICServicesUDPBit: Int { get }
var kICServicesTCPMask: Int { get }
var kICServicesUDPMask: Int { get }
struct ICServices {
  var count: Int16
  var services: (ICServiceEntry)
  init()
  init(count: Int16, services: (ICServiceEntry))
}
typealias ICServicesPtr = UnsafeMutablePointer<ICServices>
typealias ICServicesHandle = UnsafeMutablePointer<ICServicesPtr>
var kICReservedKey: String { get }
var kICArchieAll: String { get }
var kICArchiePreferred: String { get }
var kICCharacterSet: String { get }
var kICDocumentFont: String { get }
var kICDownloadFolder: String { get }
var kICEmail: String { get }
var kICFTPHost: String { get }
var kICFTPProxyAccount: String { get }
var kICFTPProxyHost: String { get }
var kICFTPProxyPassword: String { get }
var kICFTPProxyUser: String { get }
var kICFingerHost: String { get }
var kICGopherHost: String { get }
var kICGopherProxy: String { get }
var kICHTTPProxyHost: String { get }
var kICHelper: String { get }
var kICHelperDesc: String { get }
var kICHelperList: String { get }
var kICIRCHost: String { get }
var kICInfoMacAll: String { get }
var kICInfoMacPreferred: String { get }
var kICLDAPSearchbase: String { get }
var kICLDAPServer: String { get }
var kICListFont: String { get }
var kICMacSearchHost: String { get }
var kICMailAccount: String { get }
var kICMailHeaders: String { get }
var kICMailPassword: String { get }
var kICMapping: String { get }
var kICNNTPHost: String { get }
var kICNTPHost: String { get }
var kICNewMailDialog: String { get }
var kICNewMailFlashIcon: String { get }
var kICNewMailPlaySound: String { get }
var kICNewMailSoundName: String { get }
var kICNewsAuthPassword: String { get }
var kICNewsAuthUsername: String { get }
var kICNewsHeaders: String { get }
var kICNoProxyDomains: String { get }
var kICOrganization: String { get }
var kICPhHost: String { get }
var kICPlan: String { get }
var kICPrinterFont: String { get }
var kICQuotingString: String { get }
var kICRealName: String { get }
var kICRTSPProxyHost: String { get }
var kICSMTPHost: String { get }
var kICScreenFont: String { get }
var kICServices: String { get }
var kICSignature: String { get }
var kICSnailMailAddress: String { get }
var kICSocksHost: String { get }
var kICTelnetHost: String { get }
var kICUMichAll: String { get }
var kICUMichPreferred: String { get }
var kICUseFTPProxy: String { get }
var kICUseGopherProxy: String { get }
var kICUseHTTPProxy: String { get }
var kICUsePassiveFTP: String { get }
var kICUseRTSPProxy: String { get }
var kICUseSocks: String { get }
var kICWAISGateway: String { get }
var kICWWWHomePage: String { get }
var kICWebBackgroundColour: String { get }
var kICWebReadColor: String { get }
var kICWebSearchPagePrefs: String { get }
var kICWebTextColor: String { get }
var kICWebUnderlineLinks: String { get }
var kICWebUnreadColor: String { get }
var kICWhoisHost: String { get }
typealias PasteboardRef = Pasteboard
typealias PasteboardItemID = UnsafeMutablePointer<Void>
var badPasteboardSyncErr: Int { get }
var badPasteboardIndexErr: Int { get }
var badPasteboardItemErr: Int { get }
var badPasteboardFlavorErr: Int { get }
var duplicatePasteboardFlavorErr: Int { get }
var notPasteboardOwnerErr: Int { get }
var noPasteboardPromiseKeeperErr: Int { get }
typealias PasteboardSyncFlags = OptionBits
var kPasteboardModified: Int { get }
var kPasteboardClientIsOwner: Int { get }
var kPasteboardTypeFileURLPromise: String { get }
var kPasteboardTypeFilePromiseContent: String { get }
typealias PasteboardFlavorFlags = OptionBits
var kPasteboardFlavorNoFlags: Int { get }
var kPasteboardFlavorSenderOnly: Int { get }
var kPasteboardFlavorSenderTranslated: Int { get }
var kPasteboardFlavorNotSaved: Int { get }
var kPasteboardFlavorRequestOnly: Int { get }
var kPasteboardFlavorSystemTranslated: Int { get }
var kPasteboardFlavorPromised: Int { get }
typealias PasteboardStandardLocation = OSType
var kPasteboardStandardLocationTrash: Int { get }
var kPasteboardStandardLocationUnknown: Int { get }
@available(OSX 10.3, *)
func PasteboardGetTypeID() -> CFTypeID
var kPasteboardClipboard: String { get }
var kPasteboardFind: String { get }
@available(OSX 10.3, *)
func PasteboardCreate(inName: CFString!, _ outPasteboard: UnsafeMutablePointer<Unmanaged<Pasteboard>?>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardSynchronize(inPasteboard: Pasteboard!) -> PasteboardSyncFlags
@available(OSX 10.3, *)
func PasteboardClear(inPasteboard: Pasteboard!) -> OSStatus
@available(OSX 10.4, *)
func PasteboardCopyName(inPasteboard: Pasteboard!, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardGetItemCount(inPasteboard: Pasteboard!, _ outItemCount: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardGetItemIdentifier(inPasteboard: Pasteboard!, _ inIndex: CFIndex, _ outItem: UnsafeMutablePointer<PasteboardItemID>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardCopyItemFlavors(inPasteboard: Pasteboard!, _ inItem: PasteboardItemID, _ outFlavorTypes: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardGetItemFlavorFlags(inPasteboard: Pasteboard!, _ inItem: PasteboardItemID, _ inFlavorType: CFString!, _ outFlags: UnsafeMutablePointer<PasteboardFlavorFlags>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardCopyItemFlavorData(inPasteboard: Pasteboard!, _ inItem: PasteboardItemID, _ inFlavorType: CFString!, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardPutItemFlavor(inPasteboard: Pasteboard!, _ inItem: PasteboardItemID, _ inFlavorType: CFString!, _ inData: CFData!, _ inFlags: PasteboardFlavorFlags) -> OSStatus
@available(OSX 10.3, *)
func PasteboardCopyPasteLocation(inPasteboard: Pasteboard!, _ outPasteLocation: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardSetPasteLocation(inPasteboard: Pasteboard!, _ inPasteLocation: CFURL!) -> OSStatus
typealias PasteboardPromiseKeeperProcPtr = @convention(c) (Pasteboard!, PasteboardItemID, CFString!, UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardSetPromiseKeeper(inPasteboard: Pasteboard!, _ inPromiseKeeper: PasteboardPromiseKeeperProcPtr!, _ inContext: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.3, *)
func PasteboardResolvePromises(inPasteboard: Pasteboard!) -> OSStatus
var kNoProcess: Int { get }
var kSystemProcess: Int { get }
var kCurrentProcess: Int { get }
typealias LaunchFlags = UInt16
var launchContinue: Int { get }
var launchNoFileFlags: Int { get }
var launchUseMinimum: Int { get }
var launchDontSwitch: Int { get }
var launchAllow24Bit: Int { get }
var launchInhibitDaemon: Int { get }
struct AppParameters {
  struct __Unnamed_struct_theMsgEvent {
    var what: UInt16
    var message: UInt32
    var when: UInt32
    var `where`: Point
    var modifiers: UInt16
    init()
    init(what: UInt16, message: UInt32, when: UInt32, `where`: Point, modifiers: UInt16)
  }
  var theMsgEvent: AppParameters.__Unnamed_struct_theMsgEvent
  var eventRefCon: UInt32
  var messageLength: UInt32
  init()
  init(theMsgEvent: AppParameters.__Unnamed_struct_theMsgEvent, eventRefCon: UInt32, messageLength: UInt32)
}
typealias AppParametersPtr = UnsafeMutablePointer<AppParameters>
struct LaunchParamBlockRec {
  var reserved1: UInt32
  var reserved2: UInt16
  var launchBlockID: UInt16
  var launchEPBLength: UInt32
  var launchFileFlags: UInt16
  var launchControlFlags: LaunchFlags
  var launchAppRef: FSRefPtr
  var launchProcessSN: ProcessSerialNumber
  var launchPreferredSize: UInt32
  var launchMinimumSize: UInt32
  var launchAvailableSize: UInt32
  var launchAppParameters: AppParametersPtr
  init()
  init(reserved1: UInt32, reserved2: UInt16, launchBlockID: UInt16, launchEPBLength: UInt32, launchFileFlags: UInt16, launchControlFlags: LaunchFlags, launchAppRef: FSRefPtr, launchProcessSN: ProcessSerialNumber, launchPreferredSize: UInt32, launchMinimumSize: UInt32, launchAvailableSize: UInt32, launchAppParameters: AppParametersPtr)
}
typealias LaunchPBPtr = UnsafeMutablePointer<LaunchParamBlockRec>
var extendedBlock: Int { get }
var extendedBlockLen: Int { get }
var modeReserved: Int { get }
var modeControlPanel: Int { get }
var modeLaunchDontSwitch: Int { get }
var modeDeskAccessory: Int { get }
var modeMultiLaunch: Int { get }
var modeNeedSuspendResume: Int { get }
var modeCanBackground: Int { get }
var modeDoesActivateOnFGSwitch: Int { get }
var modeOnlyBackground: Int { get }
var modeGetFrontClicks: Int { get }
var modeGetAppDiedMsg: Int { get }
var mode32BitCompatible: Int { get }
var modeHighLevelEventAware: Int { get }
var modeLocalAndRemoteHLEvents: Int { get }
var modeStationeryAware: Int { get }
var modeUseTextEditServices: Int { get }
var modeDisplayManagerAware: Int { get }
typealias ProcessApplicationTransformState = UInt32
var kProcessTransformToForegroundApplication: Int { get }
var kProcessTransformToBackgroundApplication: Int { get }
var kProcessTransformToUIElementApplication: Int { get }
struct ProcessInfoRec {
  var processInfoLength: UInt32
  var processName: StringPtr
  var processNumber: ProcessSerialNumber
  var processType: UInt32
  var processSignature: OSType
  var processMode: UInt32
  var processLocation: Ptr
  var processSize: UInt32
  var processFreeMem: UInt32
  var processLauncher: ProcessSerialNumber
  var processLaunchDate: UInt32
  var processActiveTime: UInt32
  var processAppRef: FSRefPtr
  init()
  init(processInfoLength: UInt32, processName: StringPtr, processNumber: ProcessSerialNumber, processType: UInt32, processSignature: OSType, processMode: UInt32, processLocation: Ptr, processSize: UInt32, processFreeMem: UInt32, processLauncher: ProcessSerialNumber, processLaunchDate: UInt32, processActiveTime: UInt32, processAppRef: FSRefPtr)
}
typealias ProcessInfoRecPtr = UnsafeMutablePointer<ProcessInfoRec>
struct ProcessInfoExtendedRec {
  var processInfoLength: UInt32
  var processName: StringPtr
  var processNumber: ProcessSerialNumber
  var processType: UInt32
  var processSignature: OSType
  var processMode: UInt32
  var processLocation: Ptr
  var processSize: UInt32
  var processFreeMem: UInt32
  var processLauncher: ProcessSerialNumber
  var processLaunchDate: UInt32
  var processActiveTime: UInt32
  var processAppRef: FSRefPtr
  var processTempMemTotal: UInt32
  var processPurgeableTempMemTotal: UInt32
  init()
  init(processInfoLength: UInt32, processName: StringPtr, processNumber: ProcessSerialNumber, processType: UInt32, processSignature: OSType, processMode: UInt32, processLocation: Ptr, processSize: UInt32, processFreeMem: UInt32, processLauncher: ProcessSerialNumber, processLaunchDate: UInt32, processActiveTime: UInt32, processAppRef: FSRefPtr, processTempMemTotal: UInt32, processPurgeableTempMemTotal: UInt32)
}
typealias ProcessInfoExtendedRecPtr = UnsafeMutablePointer<ProcessInfoExtendedRec>
struct SizeResourceRec {
  var flags: UInt16
  var preferredHeapSize: UInt32
  var minimumHeapSize: UInt32
  init()
  init(flags: UInt16, preferredHeapSize: UInt32, minimumHeapSize: UInt32)
}
typealias SizeResourceRecPtr = UnsafeMutablePointer<SizeResourceRec>
typealias SizeResourceRecHandle = UnsafeMutablePointer<SizeResourceRecPtr>
var kProcessDictionaryIncludeAllInformationMask: Int { get }
var kQuitBeforeNormalTimeMask: Int { get }
var kQuitAtNormalTimeMask: Int { get }
var kQuitBeforeFBAsQuitMask: Int { get }
var kQuitBeforeShellQuitsMask: Int { get }
var kQuitBeforeTerminatorAppQuitsMask: Int { get }
var kQuitNeverMask: Int { get }
var kQuitOptionsMask: Int { get }
var kQuitNotQuitDuringInstallMask: Int { get }
var kQuitNotQuitDuringLogoutMask: Int { get }
var kSetFrontProcessFrontWindowOnly: Int { get }
var kSetFrontProcessCausedByUser: Int { get }
@available(OSX 10.3, *)
func TransformProcessType(psn: UnsafePointer<ProcessSerialNumber>, _ transformState: ProcessApplicationTransformState) -> OSStatus
var initDev: Int { get }
var hitDev: Int { get }
var closeDev: Int { get }
var nulDev: Int { get }
var updateDev: Int { get }
var activDev: Int { get }
var deactivDev: Int { get }
var keyEvtDev: Int { get }
var macDev: Int { get }
var undoDev: Int { get }
var cutDev: Int { get }
var copyDev: Int { get }
var pasteDev: Int { get }
var clearDev: Int { get }
var cursorDev: Int { get }
var cdevGenErr: Int { get }
var cdevMemErr: Int { get }
var cdevResErr: Int { get }
var cdevUnset: Int { get }
typealias TranslationRef = Translation
var badTranslationRefErr: Int { get }
typealias TranslationFlags = OptionBits
var kTranslationDataTranslation: Int { get }
var kTranslationFileTranslation: Int { get }
@available(OSX 10.3, *)
func TranslationGetTypeID() -> CFTypeID
@available(OSX 10.3, *)
func TranslationCreate(inSourceType: CFString!, _ inDestinationType: CFString!, _ inTranslationFlags: TranslationFlags, _ outTranslation: UnsafeMutablePointer<Unmanaged<Translation>?>) -> OSStatus
@available(OSX 10.3, *)
func TranslationCreateWithSourceArray(inSourceTypes: CFArray!, _ inTranslationFlags: TranslationFlags, _ outDestinationTypes: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outTranslations: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(OSX 10.3, *)
func TranslationPerformForData(inTranslation: Translation!, _ inSourceData: CFData!, _ outDestinationData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(OSX 10.3, *)
func TranslationPerformForFile(inTranslation: Translation!, _ inSourceFile: UnsafePointer<FSRef>, _ inDestinationDirectory: UnsafePointer<FSRef>, _ inDestinationName: CFString!, _ outTranslatedFile: UnsafeMutablePointer<FSRef>) -> OSStatus
@available(OSX 10.3, *)
func TranslationPerformForURL(inTranslation: Translation!, _ inSourceURL: CFURL!, _ inDestinationURL: CFURL!, _ outTranslatedURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.3, *)
func TranslationCopySourceType(inTranslation: Translation!, _ outSourceType: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func TranslationCopyDestinationType(inTranslation: Translation!, _ outDestinationType: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func TranslationGetTranslationFlags(inTranslation: Translation!, _ outTranslationFlags: UnsafeMutablePointer<TranslationFlags>) -> OSStatus

/*!
	@typedef UAZoomChangeFocusType
	@abstract Defines the Universal Access zoom change focus type.
*/
typealias UAZoomChangeFocusType = UInt32

/*!
 * An event is requesting focus.
 */
var kUAZoomFocusTypeOther: Int { get }

/*!
 * The text insertion point has moved.
 */
var kUAZoomFocusTypeInsertionPoint: Int { get }

/*!
	@function UAZoomEnabled
	@abstract Determines if the Universal Access zoom feature is enabled.
	@result Returns <code>true</code> if the Universal Access zoom feature is on, <code>false</code> if the zoom feature is off or if the user
	has zoomed all the way out.
	@availability Available in Mac OS X v10.4 and later (not available in CarbonLib 1.x and not available for nonCarbon CFM).
*/
@available(OSX 10.4, *)
func UAZoomEnabled() -> Bool

/*!
	@function UAZoomChangeFocus
	@abstract Tells the Universal Access zoom feature where it should focus.
	@discussion This function tells Universal Access the frame of the element in focus and the
	part of the element that should be in focus.
	@param inRect The frame of the element in focus, in global 72-dot-per-inch (dpi) coordinates.
	@param inHighlightRect The frame of the highlighted part of the element in focus, in global 72 dpi coordinates.  If the whole element is in focus,
	and not just a smaller part of it, pass the <code>inRect</code> parameter and pass <code>NULL</code> for <code>inHighlightRect</code>.
	@param inType A value of type @link UAZoomChangeFocusType UAZoomChangeFocusType@/link.
	@result Returns <code>noErr</code> if there were no problems, if Universal Access Zoom is zoomed all the way out, or if the feature is off;
	 returns <code>paramErr</code> if <code>inRect</code> is <code>NULL</code> or if <code>inType</code> is out of range. 
	@availability Available in Mac OS X v10.4 and later (not available in CarbonLib 1.x and not available for nonCarbon CFM).
*/
@available(OSX 10.4, *)
func UAZoomChangeFocus(inRect: UnsafePointer<CGRect>, _ inHighlightRect: UnsafePointer<CGRect>, _ inType: UAZoomChangeFocusType) -> OSStatus
var kDictionaryFileType: Int { get }
var kDCMDictionaryHeaderSignature: Int { get }
var kDCMDictionaryHeaderVersion: Int { get }
var kDCMAnyFieldTag: Int { get }
var kDCMAnyFieldType: Int { get }
var keyDCMFieldTag: Int { get }
var keyDCMFieldType: Int { get }
var keyDCMMaxRecordSize: Int { get }
var keyDCMFieldAttributes: Int { get }
var keyDCMFieldDefaultData: Int { get }
var keyDCMFieldName: Int { get }
var keyDCMFieldFindMethods: Int { get }
var typeDCMFieldAttributes: Int { get }
var typeDCMFindMethod: Int { get }
var kDCMIndexedFieldMask: Int { get }
var kDCMRequiredFieldMask: Int { get }
var kDCMIdentifyFieldMask: Int { get }
var kDCMFixedSizeFieldMask: Int { get }
var kDCMHiddenFieldMask: Int { get }
typealias DCMFieldAttributes = OptionBits
var pDCMAccessMethod: Int { get }
var pDCMPermission: Int { get }
var pDCMListing: Int { get }
var pDCMMaintenance: Int { get }
var pDCMLocale: Int { get }
var pDCMClass: Int { get }
var pDCMCopyright: Int { get }
var kDCMReadOnlyDictionary: Int { get }
var kDCMReadWriteDictionary: Int { get }
var kDCMAllowListing: Int { get }
var kDCMProhibitListing: Int { get }
var kDCMUserDictionaryClass: Int { get }
var kDCMSpecificDictionaryClass: Int { get }
var kDCMBasicDictionaryClass: Int { get }
var kDCMFindMethodExactMatch: Int { get }
var kDCMFindMethodBeginningMatch: Int { get }
var kDCMFindMethodContainsMatch: Int { get }
var kDCMFindMethodEndingMatch: Int { get }
var kDCMFindMethodForwardTrie: Int { get }
var kDCMFindMethodBackwardTrie: Int { get }
typealias DCMFindMethod = OSType
var kDCMCanUseFileDictionaryMask: Int { get }
var kDCMCanUseMemoryDictionaryMask: Int { get }
var kDCMCanStreamDictionaryMask: Int { get }
var kDCMCanHaveMultipleIndexMask: Int { get }
var kDCMCanModifyDictionaryMask: Int { get }
var kDCMCanCreateDictionaryMask: Int { get }
var kDCMCanAddDictionaryFieldMask: Int { get }
var kDCMCanUseTransactionMask: Int { get }
typealias DCMAccessMethodFeature = OptionBits
typealias DCMUniqueID = UInt32
typealias DCMObjectID = COpaquePointer
typealias DCMAccessMethodID = DCMObjectID
typealias DCMDictionaryID = DCMObjectID
typealias DCMObjectRef = COpaquePointer
typealias DCMDictionaryRef = DCMObjectRef
typealias DCMDictionaryStreamRef = DCMObjectRef
typealias DCMObjectIterator = COpaquePointer
typealias DCMAccessMethodIterator = DCMObjectIterator
typealias DCMDictionaryIterator = DCMObjectIterator
typealias DCMFoundRecordIterator = COpaquePointer
typealias DCMFieldTag = DescType
typealias DCMFieldType = DescType
struct DCMDictionaryHeader {
  var headerSignature: FourCharCode
  var headerVersion: UInt32
  var headerSize: UInt32
  var accessMethod: Str63
  init()
  init(headerSignature: FourCharCode, headerVersion: UInt32, headerSize: UInt32, accessMethod: Str63)
}
typealias DCMProgressFilterProcPtr = @convention(c) (DarwinBoolean, UInt16, UInt32) -> DarwinBoolean
typealias DCMProgressFilterUPP = DCMProgressFilterProcPtr
var kAppleJapaneseDefaultAccessMethodName: String { get }
var kMaxYomiLengthInAppleJapaneseDictionary: Int { get }
var kMaxKanjiLengthInAppleJapaneseDictionary: Int { get }
var kDCMJapaneseYomiTag: Int { get }
var kDCMJapaneseHyokiTag: Int { get }
var kDCMJapaneseHinshiTag: Int { get }
var kDCMJapaneseWeightTag: Int { get }
var kDCMJapanesePhoneticTag: Int { get }
var kDCMJapaneseAccentTag: Int { get }
var kDCMJapaneseOnKunReadingTag: Int { get }
var kDCMJapaneseFukugouInfoTag: Int { get }
var kDCMJapaneseYomiType: Int { get }
var kDCMJapaneseHyokiType: Int { get }
var kDCMJapaneseHinshiType: Int { get }
var kDCMJapaneseWeightType: Int { get }
var kDCMJapanesePhoneticType: Int { get }
var kDCMJapaneseAccentType: Int { get }
var kDCMJapaneseOnKunReadingType: Int { get }
var kDCMJapaneseFukugouInfoType: Int { get }
typealias LAEnvironmentRef = COpaquePointer
typealias LAContextRef = COpaquePointer
typealias LAPropertyKey = AEKeyword
typealias LAPropertyType = DescType
struct LAMorphemeRec {
  var sourceTextLength: UInt32
  var sourceTextPtr: LogicalAddress
  var morphemeTextLength: UInt32
  var morphemeTextPtr: LogicalAddress
  var partOfSpeech: UInt32
  init()
  init(sourceTextLength: UInt32, sourceTextPtr: LogicalAddress, morphemeTextLength: UInt32, morphemeTextPtr: LogicalAddress, partOfSpeech: UInt32)
}
struct LAMorphemesArray {
  var morphemesCount: Int
  var processedTextLength: UInt32
  var morphemesTextLength: UInt32
  var morphemes: (LAMorphemeRec)
  init()
  init(morphemesCount: Int, processedTextLength: UInt32, morphemesTextLength: UInt32, morphemes: (LAMorphemeRec))
}
typealias LAMorphemesArrayPtr = UnsafeMutablePointer<LAMorphemesArray>
var kLAMorphemesArrayVersion: Int { get }
typealias LAMorphemeBundle = AERecord
typealias LAMorphemePath = AERecord
typealias LAMorpheme = AERecord
typealias LAHomograph = AERecord
var keyAELAMorphemeBundle: Int { get }
var keyAELAMorphemePath: Int { get }
var keyAELAMorpheme: Int { get }
var keyAELAHomograph: Int { get }
var typeLAMorphemeBundle: Int { get }
var typeLAMorphemePath: Int { get }
var typeLAMorpheme: Int { get }
var typeLAHomograph: Int { get }
var keyAEMorphemePartOfSpeechCode: Int { get }
var keyAEMorphemeTextRange: Int { get }
var typeAEMorphemePartOfSpeechCode: Int { get }
var typeAEMorphemeTextRange: Int { get }
typealias MorphemePartOfSpeech = UInt32
struct MorphemeTextRange {
  var sourceOffset: UInt32
  var length: UInt32
  init()
  init(sourceOffset: UInt32, length: UInt32)
}
var kLAEndOfSourceTextMask: Int { get }
var kLADefaultEdge: Int { get }
var kLAFreeEdge: Int { get }
var kLAIncompleteEdge: Int { get }
var kLAAllMorphemes: Int { get }
var kLAJapaneseKanaKanjiEnvironment: String { get }
var kLAJapaneseMorphemeAnalysisEnvironment: String { get }
var kLAJapaneseTTSEnvironment: String { get }
var kAppleJapaneseDictionarySignature: Int { get }
var kMaxInputLengthOfAppleJapaneseEngine: Int { get }
typealias JapanesePartOfSpeech = MorphemePartOfSpeech
typealias HomographWeight = UInt16
typealias HomographAccent = UInt8
var keyAEHomographDicInfo: Int { get }
var keyAEHomographWeight: Int { get }
var keyAEHomographAccent: Int { get }
var typeAEHomographDicInfo: Int { get }
var typeAEHomographWeight: Int { get }
var typeAEHomographAccent: Int { get }
struct HomographDicInfoRec {
  var dictionaryID: DCMDictionaryID
  var uniqueID: DCMUniqueID
  init()
  init(dictionaryID: DCMDictionaryID, uniqueID: DCMUniqueID)
}
var kLASpeechRoughClassMask: Int { get }
var kLASpeechMediumClassMask: Int { get }
var kLASpeechStrictClassMask: Int { get }
var kLASpeechKatsuyouMask: Int { get }
var kLASpeechMeishi: Int { get }
var kLASpeechFutsuuMeishi: Int { get }
var kLASpeechJinmei: Int { get }
var kLASpeechJinmeiSei: Int { get }
var kLASpeechJinmeiMei: Int { get }
var kLASpeechChimei: Int { get }
var kLASpeechSetsubiChimei: Int { get }
var kLASpeechSoshikimei: Int { get }
var kLASpeechKoyuuMeishi: Int { get }
var kLASpeechSahenMeishi: Int { get }
var kLASpeechKeidouMeishi: Int { get }
var kLASpeechRentaishi: Int { get }
var kLASpeechFukushi: Int { get }
var kLASpeechSetsuzokushi: Int { get }
var kLASpeechKandoushi: Int { get }
var kLASpeechDoushi: Int { get }
var kLASpeechGodanDoushi: Int { get }
var kLASpeechKagyouGodan: Int { get }
var kLASpeechSagyouGodan: Int { get }
var kLASpeechTagyouGodan: Int { get }
var kLASpeechNagyouGodan: Int { get }
var kLASpeechMagyouGodan: Int { get }
var kLASpeechRagyouGodan: Int { get }
var kLASpeechWagyouGodan: Int { get }
var kLASpeechGagyouGodan: Int { get }
var kLASpeechBagyouGodan: Int { get }
var kLASpeechIchidanDoushi: Int { get }
var kLASpeechKahenDoushi: Int { get }
var kLASpeechSahenDoushi: Int { get }
var kLASpeechZahenDoushi: Int { get }
var kLASpeechKeiyoushi: Int { get }
var kLASpeechKeiyoudoushi: Int { get }
var kLASpeechSettougo: Int { get }
var kLASpeechSuujiSettougo: Int { get }
var kLASpeechSetsubigo: Int { get }
var kLASpeechJinmeiSetsubigo: Int { get }
var kLASpeechChimeiSetsubigo: Int { get }
var kLASpeechSoshikimeiSetsubigo: Int { get }
var kLASpeechSuujiSetsubigo: Int { get }
var kLASpeechMuhinshi: Int { get }
var kLASpeechTankanji: Int { get }
var kLASpeechKigou: Int { get }
var kLASpeechKuten: Int { get }
var kLASpeechTouten: Int { get }
var kLASpeechSuushi: Int { get }
var kLASpeechDokuritsugo: Int { get }
var kLASpeechSeiku: Int { get }
var kLASpeechJodoushi: Int { get }
var kLASpeechJoshi: Int { get }
var kLASpeechKatsuyouGokan: Int { get }
var kLASpeechKatsuyouMizen: Int { get }
var kLASpeechKatsuyouRenyou: Int { get }
var kLASpeechKatsuyouSyuushi: Int { get }
var kLASpeechKatsuyouRentai: Int { get }
var kLASpeechKatsuyouKatei: Int { get }
var kLASpeechKatsuyouMeirei: Int { get }
func PMRetain(object: PMObject) -> OSStatus
func PMRelease(object: PMObject) -> OSStatus
func PMCreateSession(printSession: UnsafeMutablePointer<PMPrintSession>) -> OSStatus
func PMSessionError(printSession: PMPrintSession) -> OSStatus
func PMSessionSetError(printSession: PMPrintSession, _ printError: OSStatus) -> OSStatus
@available(OSX 10.4, *)
func PMSessionBeginCGDocumentNoDialog(printSession: PMPrintSession, _ printSettings: PMPrintSettings, _ pageFormat: PMPageFormat) -> OSStatus
func PMSessionEndDocumentNoDialog(printSession: PMPrintSession) -> OSStatus
func PMSessionBeginPageNoDialog(printSession: PMPrintSession, _ pageFormat: PMPageFormat, _ pageFrame: UnsafePointer<PMRect>) -> OSStatus
func PMSessionEndPageNoDialog(printSession: PMPrintSession) -> OSStatus
@available(OSX 10.4, *)
func PMSessionGetCGGraphicsContext(printSession: PMPrintSession, _ context: UnsafeMutablePointer<Unmanaged<CGContext>?>) -> OSStatus
@available(OSX 10.1, *)
func PMSessionGetDestinationType(printSession: PMPrintSession, _ printSettings: PMPrintSettings, _ destTypeP: UnsafeMutablePointer<PMDestinationType>) -> OSStatus
@available(OSX 10.1, *)
func PMSessionCopyDestinationFormat(printSession: PMPrintSession, _ printSettings: PMPrintSettings, _ destFormatP: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.1, *)
func PMSessionCopyDestinationLocation(printSession: PMPrintSession, _ printSettings: PMPrintSettings, _ destLocationP: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.1, *)
func PMSessionSetDestination(printSession: PMPrintSession, _ printSettings: PMPrintSettings, _ destType: PMDestinationType, _ destFormat: CFString?, _ destLocation: CFURL?) -> OSStatus
@available(OSX 10.1, *)
func PMSessionCopyOutputFormatList(printSession: PMPrintSession, _ destType: PMDestinationType, _ documentFormatP: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.1, *)
func PMSessionCreatePageFormatList(printSession: PMPrintSession, _ printer: PMPrinter, _ pageFormatList: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.1, *)
func PMSessionCreatePrinterList(printSession: PMPrintSession, _ printerList: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ currentIndex: UnsafeMutablePointer<CFIndex>, _ currentPrinter: UnsafeMutablePointer<PMPrinter>) -> OSStatus
func PMSessionGetCurrentPrinter(printSession: PMPrintSession, _ currentPrinter: UnsafeMutablePointer<PMPrinter>) -> OSStatus
@available(OSX 10.3, *)
func PMSessionSetCurrentPMPrinter(session: PMPrintSession, _ printer: PMPrinter) -> OSStatus
func PMSessionGetDataFromSession(printSession: PMPrintSession, _ key: CFString, _ data: UnsafeMutablePointer<Unmanaged<AnyObject>?>) -> OSStatus
func PMSessionSetDataInSession(printSession: PMPrintSession, _ key: CFString, _ data: AnyObject) -> OSStatus
func PMCreatePageFormat(pageFormat: UnsafeMutablePointer<PMPageFormat>) -> OSStatus
func PMSessionDefaultPageFormat(printSession: PMPrintSession, _ pageFormat: PMPageFormat) -> OSStatus
func PMSessionValidatePageFormat(printSession: PMPrintSession, _ pageFormat: PMPageFormat, _ changed: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func PMCopyPageFormat(formatSrc: PMPageFormat, _ formatDest: PMPageFormat) -> OSStatus
@available(OSX 10.3, *)
func PMCreatePageFormatWithPMPaper(pageFormat: UnsafeMutablePointer<PMPageFormat>, _ paper: PMPaper) -> OSStatus
@available(OSX 10.5, *)
func PMPageFormatCreateDataRepresentation(pageFormat: PMPageFormat, _ data: UnsafeMutablePointer<Unmanaged<CFData>?>, _ format: PMDataFormat) -> OSStatus
@available(OSX 10.5, *)
func PMPageFormatCreateWithDataRepresentation(data: CFData, _ pageFormat: UnsafeMutablePointer<PMPageFormat>) -> OSStatus
func PMGetAdjustedPageRect(pageFormat: PMPageFormat, _ pageRect: UnsafeMutablePointer<PMRect>) -> OSStatus
func PMGetAdjustedPaperRect(pageFormat: PMPageFormat, _ paperRect: UnsafeMutablePointer<PMRect>) -> OSStatus
func PMGetOrientation(pageFormat: PMPageFormat, _ orientation: UnsafeMutablePointer<PMOrientation>) -> OSStatus
func PMGetPageFormatExtendedData(pageFormat: PMPageFormat, _ dataID: OSType, _ size: UnsafeMutablePointer<UInt32>, _ extendedData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.5, *)
func PMPageFormatGetPrinterID(pageFormat: PMPageFormat, _ printerID: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func PMGetScale(pageFormat: PMPageFormat, _ scale: UnsafeMutablePointer<Double>) -> OSStatus
func PMGetUnadjustedPageRect(pageFormat: PMPageFormat, _ pageRect: UnsafeMutablePointer<PMRect>) -> OSStatus
func PMGetUnadjustedPaperRect(pageFormat: PMPageFormat, _ paperRect: UnsafeMutablePointer<PMRect>) -> OSStatus

/************************/
func PMSetOrientation(pageFormat: PMPageFormat, _ orientation: PMOrientation, _ lock: Bool) -> OSStatus
func PMSetPageFormatExtendedData(pageFormat: PMPageFormat, _ dataID: OSType, _ size: UInt32, _ extendedData: UnsafeMutablePointer<Void>) -> OSStatus
func PMSetScale(pageFormat: PMPageFormat, _ scale: Double) -> OSStatus
func PMCreatePrintSettings(printSettings: UnsafeMutablePointer<PMPrintSettings>) -> OSStatus
func PMSessionDefaultPrintSettings(printSession: PMPrintSession, _ printSettings: PMPrintSettings) -> OSStatus
func PMSessionValidatePrintSettings(printSession: PMPrintSession, _ printSettings: PMPrintSettings, _ changed: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func PMCopyPrintSettings(settingSrc: PMPrintSettings, _ settingDest: PMPrintSettings) -> OSStatus
@available(OSX 10.5, *)
func PMPrintSettingsCreateDataRepresentation(printSettings: PMPrintSettings, _ data: UnsafeMutablePointer<Unmanaged<CFData>?>, _ format: PMDataFormat) -> OSStatus
@available(OSX 10.5, *)
func PMPrintSettingsCreateWithDataRepresentation(data: CFData, _ printSettings: UnsafeMutablePointer<PMPrintSettings>) -> OSStatus
@available(OSX 10.2, *)
func PMGetCollate(printSettings: PMPrintSettings, _ collate: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
func PMGetCopies(printSettings: PMPrintSettings, _ copies: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.4, *)
func PMGetDuplex(printSettings: PMPrintSettings, _ duplexSetting: UnsafeMutablePointer<PMDuplexMode>) -> OSStatus
func PMGetFirstPage(printSettings: PMPrintSettings, _ first: UnsafeMutablePointer<UInt32>) -> OSStatus
func PMGetLastPage(printSettings: PMPrintSettings, _ last: UnsafeMutablePointer<UInt32>) -> OSStatus
func PMGetPageRange(printSettings: PMPrintSettings, _ minPage: UnsafeMutablePointer<UInt32>, _ maxPage: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.4, *)
func PMPrintSettingsGetJobName(printSettings: PMPrintSettings, _ name: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.4, *)
func PMPrintSettingsGetValue(printSettings: PMPrintSettings, _ key: CFString, _ value: UnsafeMutablePointer<Unmanaged<AnyObject>?>) -> OSStatus
@available(OSX 10.2, *)
func PMSetCollate(printSettings: PMPrintSettings, _ collate: Bool) -> OSStatus
func PMSetCopies(printSettings: PMPrintSettings, _ copies: UInt32, _ lock: Bool) -> OSStatus
@available(OSX 10.4, *)
func PMSetDuplex(printSettings: PMPrintSettings, _ duplexSetting: PMDuplexMode) -> OSStatus
func PMSetFirstPage(printSettings: PMPrintSettings, _ first: UInt32, _ lock: Bool) -> OSStatus
func PMSetLastPage(printSettings: PMPrintSettings, _ last: UInt32, _ lock: Bool) -> OSStatus
func PMSetPageRange(printSettings: PMPrintSettings, _ minPage: UInt32, _ maxPage: UInt32) -> OSStatus
@available(OSX 10.4, *)
func PMPrintSettingsSetJobName(printSettings: PMPrintSettings, _ name: CFString) -> OSStatus
@available(OSX 10.4, *)
func PMPrintSettingsSetValue(printSettings: PMPrintSettings, _ key: CFString, _ value: AnyObject?, _ locked: Bool) -> OSStatus
@available(OSX 10.5, *)
func PMPrintSettingsCopyAsDictionary(printSettings: PMPrintSettings, _ settingsDictionary: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(OSX 10.5, *)
func PMPrintSettingsCopyKeys(printSettings: PMPrintSettings, _ settingsKeys: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus

/*!
 *
 * PMCreateGenericPrinter
 *  Summary:
 *	Creates a generic PMPrinter
 *
 *  Parameters:
 *		printer:
 *		On return *printer contains the generic priner
 *
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in ApplicationServices.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *  
 *  Compatibility:
 *  	Not appropriate for CUPS filters, drivers, and backends.
 *  
 */
@available(OSX 10.5, *)
func PMCreateGenericPrinter(printer: UnsafeMutablePointer<PMPrinter>) -> OSStatus
@available(OSX 10.2, *)
func PMServerCreatePrinterList(server: PMServer, _ printerList: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.5, *)
func PMServerLaunchPrinterBrowser(server: PMServer, _ options: CFDictionary?) -> OSStatus
@available(OSX 10.4, *)
func PMPrinterCreateFromPrinterID(printerID: CFString) -> PMPrinter
@available(OSX 10.4, *)
func PMPrinterCopyDescriptionURL(printer: PMPrinter, _ descriptionType: CFString, _ fileURL: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.4, *)
func PMPrinterCopyDeviceURI(printer: PMPrinter, _ deviceURI: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterCopyHostName(printer: PMPrinter, _ hostNameP: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterCopyPresets(printer: PMPrinter, _ presetList: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterGetCommInfo(printer: PMPrinter, _ supportsControlCharRangeP: UnsafeMutablePointer<DarwinBoolean>, _ supportsEightBitP: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.2, *)
func PMPrinterGetID(printer: PMPrinter) -> Unmanaged<CFString>?
@available(OSX 10.2, *)
func PMPrinterGetLocation(printer: PMPrinter) -> Unmanaged<CFString>?
func PMPrinterGetDriverCreator(printer: PMPrinter, _ creator: UnsafeMutablePointer<OSType>) -> OSStatus
func PMPrinterGetDriverReleaseInfo(printer: PMPrinter, _ release: UnsafeMutablePointer<VersRec>) -> OSStatus
func PMPrinterGetPrinterResolutionCount(printer: PMPrinter, _ countP: UnsafeMutablePointer<UInt32>) -> OSStatus
func PMPrinterGetIndexedPrinterResolution(printer: PMPrinter, _ index: UInt32, _ resolutionP: UnsafeMutablePointer<PMResolution>) -> OSStatus
@available(OSX 10.5, *)
func PMPrinterGetOutputResolution(printer: PMPrinter, _ printSettings: PMPrintSettings, _ resolutionP: UnsafeMutablePointer<PMResolution>) -> OSStatus
@available(OSX 10.5, *)
func PMPrinterSetOutputResolution(printer: PMPrinter, _ printSettings: PMPrintSettings, _ resolutionP: UnsafePointer<PMResolution>) -> OSStatus
func PMPrinterGetLanguageInfo(printer: PMPrinter, _ info: UnsafeMutablePointer<PMLanguageInfo>) -> OSStatus
@available(OSX 10.2, *)
func PMPrinterGetMakeAndModelName(printer: PMPrinter, _ makeAndModel: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterGetMimeTypes(printer: PMPrinter, _ settings: PMPrintSettings, _ mimeTypes: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.2, *)
func PMPrinterGetName(printer: PMPrinter) -> Unmanaged<CFString>?
@available(OSX 10.3, *)
func PMPrinterGetPaperList(printer: PMPrinter, _ paperList: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.2, *)
func PMPrinterGetState(printer: PMPrinter, _ state: UnsafeMutablePointer<PMPrinterState>) -> OSStatus
@available(OSX 10.2, *)
func PMPrinterIsDefault(printer: PMPrinter) -> Bool
@available(OSX 10.2, *)
func PMPrinterIsFavorite(printer: PMPrinter) -> Bool
@available(OSX 10.2, *)
func PMPrinterIsPostScriptCapable(printer: PMPrinter) -> Bool

/*!
 * @function	PMPrinterIsPostScriptPrinter
 * @abstract	Set *isPSPrinter true if the printer is a PostScript printer.
 *
 * @discussion	A PostScript printer is one whose driver takes PostScript directly.
 *
 *  Availability:
 *    Mac OS X:         in version 10.5 and later in ApplicationServices.framework
 *    CarbonLib:        not available
 *    Non-Carbon CFM:   not available
 *  
 *  Compatibility:
 *  	Not appropriate for CUPS filters, drivers, and backends.
 *  
 */
@available(OSX 10.5, *)
func PMPrinterIsPostScriptPrinter(printer: PMPrinter, _ isPSPrinter: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterIsRemote(printer: PMPrinter, _ isRemoteP: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func PMPrinterSetDefault(printer: PMPrinter) -> OSStatus
@available(OSX 10.3, *)
func PMPresetCopyName(preset: PMPreset, _ name: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func PMPresetCreatePrintSettings(preset: PMPreset, _ session: PMPrintSession, _ printSettings: UnsafeMutablePointer<PMPrintSettings>) -> OSStatus
@available(OSX 10.3, *)
func PMPresetGetAttributes(preset: PMPreset, _ attributes: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(OSX 10.3, *)
func PMGetPageFormatPaper(format: PMPageFormat, _ paper: UnsafeMutablePointer<PMPaper>) -> OSStatus
@available(OSX 10.5, *)
func PMPaperCreateCustom(printer: PMPrinter, _ id: CFString?, _ name: CFString?, _ width: Double, _ height: Double, _ margins: UnsafePointer<PMPaperMargins>, _ paperP: UnsafeMutablePointer<PMPaper>) -> OSStatus
@available(OSX 10.3, *)
func PMPaperGetWidth(paper: PMPaper, _ paperWidth: UnsafeMutablePointer<Double>) -> OSStatus
@available(OSX 10.3, *)
func PMPaperGetHeight(paper: PMPaper, _ paperHeight: UnsafeMutablePointer<Double>) -> OSStatus
@available(OSX 10.3, *)
func PMPaperGetMargins(paper: PMPaper, _ paperMargins: UnsafeMutablePointer<PMPaperMargins>) -> OSStatus
@available(OSX 10.3, *)
func PMPaperGetID(paper: PMPaper, _ paperID: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.5, *)
func PMPaperGetPPDPaperName(paper: PMPaper, _ paperName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.5, *)
func PMPaperCreateLocalizedName(paper: PMPaper, _ printer: PMPrinter, _ paperName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.5, *)
func PMPaperGetPrinterID(paper: PMPaper, _ printerID: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.5, *)
func PMPaperIsCustom(paper: PMPaper) -> Bool
@available(OSX 10.3, *)
func PMWorkflowCopyItems(workflowItems: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.3, *)
func PMWorkflowSubmitPDFWithOptions(workflowItem: CFURL, _ title: CFString?, _ options: UnsafePointer<Int8>, _ pdfFile: CFURL) -> OSStatus
@available(OSX 10.3, *)
func PMWorkflowSubmitPDFWithSettings(workflowItem: CFURL, _ settings: PMPrintSettings, _ pdfFile: CFURL) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterPrintWithProvider(printer: PMPrinter, _ settings: PMPrintSettings, _ format: PMPageFormat, _ mimeType: CFString, _ provider: CGDataProvider) -> OSStatus
@available(OSX 10.3, *)
func PMPrinterPrintWithFile(printer: PMPrinter, _ settings: PMPrintSettings, _ format: PMPageFormat, _ mimeType: CFString?, _ fileURL: CFURL) -> OSStatus
@available(OSX 10.5, *)
func PMPrinterWritePostScriptToURL(printer: PMPrinter, _ settings: PMPrintSettings, _ format: PMPageFormat, _ mimeType: CFString?, _ sourceFileURL: CFURL, _ destinationFileURL: CFURL) -> OSStatus
@available(OSX 10.3, *)
func PMPrintSettingsToOptions(settings: PMPrintSettings, _ options: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(OSX 10.5, *)
func PMPrintSettingsToOptionsWithPrinterAndPageFormat(settings: PMPrintSettings, _ printer: PMPrinter, _ pageFormat: PMPageFormat, _ options: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(OSX 10.6, *)
func PMPrinterSendCommand(printer: PMPrinter, _ commandString: CFString, _ jobTitle: CFString?, _ options: CFDictionary?) -> OSStatus
@available(OSX 10.6, *)
func PMPrinterCopyState(printer: PMPrinter, _ stateDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(OSX 10.3, *)
func PMCopyAvailablePPDs(domain: PMPPDDomain, _ ppds: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.3, *)
func PMCopyLocalizedPPD(ppd: CFURL, _ localizedPPD: UnsafeMutablePointer<Unmanaged<CFURL>?>) -> OSStatus
@available(OSX 10.3, *)
func PMCopyPPDData(ppd: CFURL, _ data: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(OSX 10.1, *)
func PMCGImageCreateWithEPSDataProvider(epsDataProvider: CGDataProvider?, _ epsPreview: CGImage) -> Unmanaged<CGImage>?
typealias PMObject = UnsafePointer<Void>
typealias PMPrintSettings = COpaquePointer
typealias PMPageFormat = COpaquePointer
typealias PMPrintSession = COpaquePointer
typealias PMPrinter = COpaquePointer
typealias PMServer = COpaquePointer
typealias PMPreset = COpaquePointer
typealias PMPaper = COpaquePointer
var kPMCancel: Int { get }
typealias PMDestinationType = UInt16
var kPMDestinationInvalid: Int { get }
var kPMDestinationPrinter: Int { get }
var kPMDestinationFile: Int { get }
var kPMDestinationFax: Int { get }
var kPMDestinationPreview: Int { get }
var kPMDestinationProcessPDF: Int { get }
typealias PMOrientation = UInt16
var kPMPortrait: Int { get }
var kPMLandscape: Int { get }
var kPMReversePortrait: Int { get }
var kPMReverseLandscape: Int { get }
typealias PMPrinterState = UInt16
var kPMPrinterIdle: Int { get }
var kPMPrinterProcessing: Int { get }
var kPMPrinterStopped: Int { get }
typealias PMColorSpaceModel = UInt32
var kPMUnknownColorSpaceModel: Int { get }
var kPMGrayColorSpaceModel: Int { get }
var kPMRGBColorSpaceModel: Int { get }
var kPMCMYKColorSpaceModel: Int { get }
var kPMDevNColorSpaceModel: Int { get }
var kPMColorSpaceModelCount: Int32 { get }
typealias PMQualityMode = UInt32
var kPMQualityLowest: Int { get }
var kPMQualityInkSaver: Int { get }
var kPMQualityDraft: Int { get }
var kPMQualityNormal: Int { get }
var kPMQualityPhoto: Int { get }
var kPMQualityBest: Int { get }
var kPMQualityHighest: Int { get }
typealias PMPaperType = UInt32
var kPMPaperTypeUnknown: Int { get }
var kPMPaperTypePlain: Int { get }
var kPMPaperTypeCoated: Int { get }
var kPMPaperTypePremium: Int { get }
var kPMPaperTypeGlossy: Int { get }
var kPMPaperTypeTransparency: Int { get }
var kPMPaperTypeTShirt: Int { get }
typealias PMScalingAlignment = UInt16
var kPMScalingPinTopLeft: Int { get }
var kPMScalingPinTopRight: Int { get }
var kPMScalingPinBottomLeft: Int { get }
var kPMScalingPinBottomRight: Int { get }
var kPMScalingCenterOnPaper: Int { get }
var kPMScalingCenterOnImgArea: Int { get }
typealias PMDuplexMode = UInt32
var kPMDuplexNone: Int { get }
var kPMDuplexNoTumble: Int { get }
var kPMDuplexTumble: Int { get }
var kPMSimplexTumble: Int { get }
typealias PMLayoutDirection = UInt16
var kPMLayoutLeftRightTopBottom: Int { get }
var kPMLayoutLeftRightBottomTop: Int { get }
var kPMLayoutRightLeftTopBottom: Int { get }
var kPMLayoutRightLeftBottomTop: Int { get }
var kPMLayoutTopBottomLeftRight: Int { get }
var kPMLayoutTopBottomRightLeft: Int { get }
var kPMLayoutBottomTopLeftRight: Int { get }
var kPMLayoutBottomTopRightLeft: Int { get }
typealias PMBorderType = UInt16
var kPMBorderSingleHairline: Int { get }
var kPMBorderDoubleHairline: Int { get }
var kPMBorderSingleThickline: Int { get }
var kPMBorderDoubleThickline: Int { get }
typealias PMPrintDialogOptionFlags = OptionBits
var kPMHideInlineItems: Int { get }
var kPMShowDefaultInlineItems: Int { get }
var kPMShowInlineCopies: Int { get }
var kPMShowInlinePageRange: Int { get }
var kPMShowInlinePageRangeWithSelection: Int { get }
var kPMShowInlinePaperSize: Int { get }
var kPMShowInlineOrientation: Int { get }
var kPMShowInlineScale: Int { get }
var kPMShowPageAttributesPDE: Int { get }
typealias PMPPDDomain = UInt16
var kAllPPDDomains: Int { get }
var kSystemPPDDomain: Int { get }
var kLocalPPDDomain: Int { get }
var kNetworkPPDDomain: Int { get }
var kUserPPDDomain: Int { get }
var kCUPSPPDDomain: Int { get }
var kPMPPDDescriptionType: String { get }
var kPMDocumentFormatDefault: String { get }
var kPMDocumentFormatPDF: String { get }
var kPMDocumentFormatPostScript: String { get }
var kPMGraphicsContextDefault: String { get }
var kPMGraphicsContextCoreGraphics: String { get }
var kPDFWorkflowItemURLKey: String { get }
var kPDFWorkflowDisplayNameKey: String { get }
var kPDFWorkflowItemsKey: String { get }
var kPMPrintSelectionTitleKey: String { get }
var kPMNoError: Int { get }
var kPMGeneralError: Int { get }
var kPMOutOfScope: Int { get }
var kPMInvalidParameter: Int { get }
var kPMNoDefaultPrinter: Int { get }
var kPMNotImplemented: Int { get }
var kPMNoSuchEntry: Int { get }
var kPMInvalidPrintSettings: Int { get }
var kPMInvalidPageFormat: Int { get }
var kPMValueOutOfRange: Int { get }
var kPMLockIgnored: Int { get }
var kPMInvalidPrintSession: Int { get }
var kPMInvalidPrinter: Int { get }
var kPMObjectInUse: Int { get }
var kPMInvalidPreset: Int { get }
var kPMPrintAllPages: Int { get }
var kPMUnlocked: Int { get }
struct PMRect {
  var top: Double
  var left: Double
  var bottom: Double
  var right: Double
  init()
  init(top: Double, left: Double, bottom: Double, right: Double)
}
struct PMResolution {
  var hRes: Double
  var vRes: Double
  init()
  init(hRes: Double, vRes: Double)
}
struct PMLanguageInfo {
  var level: Str32
  var version: Str32
  var release: Str32
  init()
  init(level: Str32, version: Str32, release: Str32)
}
typealias PMPaperMargins = PMRect
struct PMDataFormat : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kPMDataFormatXMLDefault: PMDataFormat { get }
var kPMDataFormatXMLMinimal: PMDataFormat { get }
var kPMDataFormatXMLCompressed: PMDataFormat { get }
var kPMPresetGraphicsTypeKey: String { get }
var kPMPresetGraphicsTypePhoto: String { get }
var kPMPresetGraphicsTypeAll: String { get }
var kPMPresetGraphicsTypeGeneral: String { get }
var kPMPresetGraphicsTypeNone: String { get }
var kPMAllocationFailure: Int { get }
var kPMInternalError: Int { get }
var kPMInvalidIndex: Int { get }
var kPMStringConversionFailure: Int { get }
var kPMXMLParseError: Int { get }
var kPMInvalidJobTemplate: Int { get }
var kPMInvalidPrinterInfo: Int { get }
var kPMInvalidConnection: Int { get }
var kPMInvalidKey: Int { get }
var kPMInvalidValue: Int { get }
var kPMInvalidAllocator: Int { get }
var kPMInvalidTicket: Int { get }
var kPMInvalidItem: Int { get }
var kPMInvalidType: Int { get }
var kPMInvalidReply: Int { get }
var kPMInvalidFileType: Int { get }
var kPMInvalidObject: Int { get }
var kPMInvalidPaper: Int { get }
var kPMInvalidCalibrationTarget: Int { get }
var kPMNoDefaultItem: Int { get }
var kPMNoDefaultSettings: Int { get }
var kPMInvalidPDEContext: Int { get }
var kPMDontSwitchPDEError: Int { get }
var kPMUnableToFindProcess: Int { get }
var kPMFeatureNotInstalled: Int { get }
var kPMInvalidPBMRef: Int { get }
var kPMNoSelectedPrinters: Int { get }
var kPMInvalidLookupSpec: Int { get }
var kPMSyncRequestFailed: Int { get }
var kPMEditRequestFailed: Int { get }
var kPMPrBrowserNoUI: Int { get }
var kPMTicketTypeNotFound: Int { get }
var kPMUpdateTicketFailed: Int { get }
var kPMValidateTicketFailed: Int { get }
var kPMSubTicketNotFound: Int { get }
var kPMInvalidSubTicket: Int { get }
var kPMDeleteSubTicketFailed: Int { get }
var kPMItemIsLocked: Int { get }
var kPMTicketIsLocked: Int { get }
var kPMTemplateIsLocked: Int { get }
var kPMKeyNotFound: Int { get }
var kPMKeyNotUnique: Int { get }
var kPMUnknownDataType: Int { get }
var kPMCreateMessageFailed: Int { get }
var kPMServerCommunicationFailed: Int { get }
var kPMKeyOrValueNotFound: Int { get }
var kPMMessagingError: Int { get }
var kPMServerNotFound: Int { get }
var kPMServerAlreadyRunning: Int { get }
var kPMServerSuspended: Int { get }
var kPMServerAttributeRestricted: Int { get }
var kPMFileOrDirOperationFailed: Int { get }
var kPMUserOrGroupNotFound: Int { get }
var kPMPermissionError: Int { get }
var kPMUnknownMessage: Int { get }
var kPMQueueNotFound: Int { get }
var kPMQueueAlreadyExists: Int { get }
var kPMQueueJobFailed: Int { get }
var kPMJobNotFound: Int { get }
var kPMJobBusy: Int { get }
var kPMJobCanceled: Int { get }
var kPMDocumentNotFound: Int { get }
var kPMPMSymbolNotFound: Int { get }
var kPMIOMSymbolNotFound: Int { get }
var kPMCVMSymbolNotFound: Int { get }
var kPMInvalidPMContext: Int { get }
var kPMInvalidIOMContext: Int { get }
var kPMInvalidCVMContext: Int { get }
var kPMInvalidJobID: Int { get }
var kPMNoPrinterJobID: Int { get }
var kPMJobStreamOpenFailed: Int { get }
var kPMJobStreamReadFailed: Int { get }
var kPMJobStreamEndError: Int { get }
var kPMJobManagerAborted: Int { get }
var kPMJobGetTicketBadFormatError: Int { get }
var kPMJobGetTicketReadError: Int { get }
var kPMPluginNotFound: Int { get }
var kPMPluginRegisterationFailed: Int { get }
var kPMFontNotFound: Int { get }
var kPMFontNameTooLong: Int { get }
var kPMGeneralCGError: Int { get }
var kPMInvalidState: Int { get }
var kPMUnexpectedImagingError: Int { get }
var kPMInvalidPrinterAddress: Int { get }
var kPMOpenFailed: Int { get }
var kPMReadFailed: Int { get }
var kPMWriteFailed: Int { get }
var kPMStatusFailed: Int { get }
var kPMCloseFailed: Int { get }
var kPMUnsupportedConnection: Int { get }
var kPMIOAttrNotAvailable: Int { get }
var kPMReadGotZeroData: Int { get }
var kPMLastErrorCodeToMakeMaintenanceOfThisListEasier: Int { get }
var kPMCopiesAEProp: String { get }
var kPMCollateAEProp: String { get }
var kPMFirstPageAEProp: String { get }
var kPMLastPageAEProp: String { get }
var kPMLayoutAcrossAEProp: String { get }
var kPMLayoutDownAEProp: String { get }
var kPMErrorHandlingAEProp: String { get }
var kPMPrintTimeAEProp: String { get }
var kPMFeatureAEProp: String { get }
var kPMFaxNumberAEProp: String { get }
var kPMTargetPrinterAEProp: String { get }
var kPMPDFWorkFlowAEProp: String { get }
var kPMPresetAEProp: String { get }
var kPMSaveAsPDFAEProp: String { get }
var kPMSaveAsPSAEProp: String { get }
var kPMCopiesStr: String { get }
var kPMCopyCollateStr: String { get }
var kPMOutputOrderStr: String { get }
var kPMPageSetStr: String { get }
var kPMMirrorStr: String { get }
var kPMPrintSelectionOnlyStr: String { get }
var kPMBorderStr: String { get }
var kPMBorderTypeStr: String { get }
var kPMLayoutNUpStr: String { get }
var kPMLayoutRowsStr: String { get }
var kPMLayoutColumnsStr: String { get }
var kPMLayoutDirectionStr: String { get }
var kPMLayoutTileOrientationStr: String { get }
var kPMJobStateStr: String { get }
var kPMJobHoldUntilTimeStr: String { get }
var kPMJobPriorityStr: String { get }
var kPMDuplexingStr: String { get }
var kPMColorSyncProfileIDStr: String { get }
var kPMPrimaryPaperFeedStr: String { get }
var kPMSecondaryPaperFeedStr: String { get }
var kPMPSErrorHandlerStr: String { get }
var kPMPSTraySwitchStr: String { get }
var kPMTotalBeginPagesStr: String { get }
var kPMTotalSidesImagedStr: String { get }
var kPMFitToPageStr: String { get }
var kPMUseOptionalPINStr: String { get }
var kPMUseOptionalAccountIDStr: String { get }
var kPMFaxNumberStr: String { get }
var kPMFaxToStr: String { get }
var kPMFaxPrefixStr: String { get }
var kPMFaxSubjectStr: String { get }
var kPMFaxCoverSheetStr: String { get }
var kPMFaxCoverSheetMessageStr: String { get }
var kPMFaxToneDialingStr: String { get }
var kPMFaxUseSoundStr: String { get }
var kPMFaxWaitForDialToneStr: String { get }
var kPMFaxToLabelStr: String { get }
var kPMFaxFromLabelStr: String { get }
var kPMFaxDateLabelStr: String { get }
var kPMFaxSubjectLabelStr: String { get }
var kPMFaxSheetsLabelStr: String { get }
var kPMCoverPageStr: String { get }
var kPMCoverPageNone: Int { get }
var kPMCoverPageBefore: Int { get }
var kPMCoverPageAfter: Int { get }
var kPMCoverPageSourceStr: String { get }
var kPMDestinationPrinterIDStr: String { get }
var kPMInlineWorkflowStr: String { get }
var kPMPageToPaperMappingTypeStr: String { get }
var kPMPageToPaperMediaNameStr: String { get }
var kPMPageToPaperMappingAllowScalingUpStr: String { get }
var kPMCustomProfilePathStr: String { get }
struct PMPageToPaperMappingType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kPMPageToPaperMappingNone: PMPageToPaperMappingType { get }
var kPMPageToPaperMappingScaleToFit: PMPageToPaperMappingType { get }
var kPMVendorColorMatchingStr: String { get }
var kPMApplicationColorMatchingStr: String { get }
var kPMColorMatchingModeStr: String { get }
var kPMDestinationTypeStr: String { get }
var kPMOutputFilenameStr: String { get }
typealias ATSUDirectDataSelector = UInt32
var kATSUDirectDataAdvanceDeltaFixedArray: Int { get }
var kATSUDirectDataBaselineDeltaFixedArray: Int { get }
var kATSUDirectDataDeviceDeltaSInt16Array: Int { get }
var kATSUDirectDataStyleIndexUInt16Array: Int { get }
var kATSUDirectDataStyleSettingATSUStyleSettingRefArray: Int { get }
var kATSUDirectDataLayoutRecordATSLayoutRecordVersion1: Int { get }
var kATSUDirectDataLayoutRecordATSLayoutRecordCurrent: Int { get }
typealias ATSUStyleSettingRef = COpaquePointer
typealias ATSUFlattenedDataStreamFormat = UInt32
var kATSUDataStreamUnicodeStyledText: Int { get }
typealias ATSUFlattenStyleRunOptions = UInt32
var kATSUFlattenOptionNoOptionsMask: Int { get }
typealias ATSUUnFlattenStyleRunOptions = UInt32
var kATSUUnFlattenOptionNoOptionsMask: Int { get }
struct ATSUStyleRunInfo {
  var runLength: UInt32
  var styleObjectIndex: UInt32
  init()
  init(runLength: UInt32, styleObjectIndex: UInt32)
}
var kATSFlatDataUstlVersion0: Int { get }
var kATSFlatDataUstlVersion1: Int { get }
var kATSFlatDataUstlVersion2: Int { get }
var kATSFlatDataUstlCurrentVersion: Int { get }
struct ATSFlatDataMainHeaderBlock {
  var version: UInt32
  var sizeOfDataBlock: UInt32
  var offsetToTextLayouts: UInt32
  var offsetToStyleRuns: UInt32
  var offsetToStyleList: UInt32
  init()
  init(version: UInt32, sizeOfDataBlock: UInt32, offsetToTextLayouts: UInt32, offsetToStyleRuns: UInt32, offsetToStyleList: UInt32)
}
struct ATSFlatDataTextLayoutDataHeader {
  var sizeOfLayoutData: UInt32
  var textLayoutLength: UInt32
  var offsetToLayoutControls: UInt32
  var offsetToLineInfo: UInt32
  init()
  init(sizeOfLayoutData: UInt32, textLayoutLength: UInt32, offsetToLayoutControls: UInt32, offsetToLineInfo: UInt32)
}
struct ATSFlatDataTextLayoutHeader {
  var numFlattenedTextLayouts: UInt32
  var flattenedTextLayouts: (ATSFlatDataTextLayoutDataHeader)
  init()
  init(numFlattenedTextLayouts: UInt32, flattenedTextLayouts: (ATSFlatDataTextLayoutDataHeader))
}
struct ATSFlatDataLayoutControlsDataHeader {
  var numberOfLayoutControls: UInt32
  var controlArray: (ATSUAttributeInfo)
  init()
  init(numberOfLayoutControls: UInt32, controlArray: (ATSUAttributeInfo))
}
struct ATSFlatDataLineInfoData {
  var lineLength: UInt32
  var numberOfLineControls: UInt32
  init()
  init(lineLength: UInt32, numberOfLineControls: UInt32)
}
struct ATSFlatDataLineInfoHeader {
  var numberOfLines: UInt32
  var lineInfoArray: (ATSFlatDataLineInfoData)
  init()
  init(numberOfLines: UInt32, lineInfoArray: (ATSFlatDataLineInfoData))
}
struct ATSFlatDataStyleRunDataHeader {
  var numberOfStyleRuns: UInt32
  var styleRunArray: (ATSUStyleRunInfo)
  init()
  init(numberOfStyleRuns: UInt32, styleRunArray: (ATSUStyleRunInfo))
}
struct ATSFlatDataStyleListStyleDataHeader {
  var sizeOfStyleInfo: UInt32
  var numberOfSetAttributes: UInt32
  var numberOfSetFeatures: UInt32
  var numberOfSetVariations: UInt32
  init()
  init(sizeOfStyleInfo: UInt32, numberOfSetAttributes: UInt32, numberOfSetFeatures: UInt32, numberOfSetVariations: UInt32)
}
struct ATSFlatDataStyleListHeader {
  var numberOfStyles: UInt32
  var styleDataArray: (ATSFlatDataStyleListStyleDataHeader)
  init()
  init(numberOfStyles: UInt32, styleDataArray: (ATSFlatDataStyleListStyleDataHeader))
}
struct ATSFlatDataStyleListFeatureData {
  var theFeatureType: ATSUFontFeatureType
  var theFeatureSelector: ATSUFontFeatureSelector
  init()
  init(theFeatureType: ATSUFontFeatureType, theFeatureSelector: ATSUFontFeatureSelector)
}
struct ATSFlatDataStyleListVariationData {
  var theVariationAxis: ATSUFontVariationAxis
  var theVariationValue: ATSUFontVariationValue
  init()
  init(theVariationAxis: ATSUFontVariationAxis, theVariationValue: ATSUFontVariationValue)
}
typealias ATSFlatDataFontSpeciferType = UInt32
var kATSFlattenedFontSpecifierRawNameData: Int { get }
struct ATSFlatDataFontNameDataHeader {
  var nameSpecifierType: ATSFlatDataFontSpeciferType
  var nameSpecifierSize: UInt32
  init()
  init(nameSpecifierType: ATSFlatDataFontSpeciferType, nameSpecifierSize: UInt32)
}
struct ATSFlatDataFontSpecRawNameData {
  var fontNameType: FontNameCode
  var fontNamePlatform: FontPlatformCode
  var fontNameScript: FontScriptCode
  var fontNameLanguage: FontLanguageCode
  var fontNameLength: UInt32
  init()
  init(fontNameType: FontNameCode, fontNamePlatform: FontPlatformCode, fontNameScript: FontScriptCode, fontNameLanguage: FontLanguageCode, fontNameLength: UInt32)
}
struct ATSFlatDataFontSpecRawNameDataHeader {
  var numberOfFlattenedNames: UInt32
  var nameDataArray: (ATSFlatDataFontSpecRawNameData)
  init()
  init(numberOfFlattenedNames: UInt32, nameDataArray: (ATSFlatDataFontSpecRawNameData))
}
typealias ATSQuadraticNewPathProcPtr = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSQuadraticNewPathUPP = ATSQuadraticNewPathProcPtr
typealias ATSQuadraticLineProcPtr = @convention(c) (UnsafePointer<Float32Point>, UnsafePointer<Float32Point>, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSQuadraticLineUPP = ATSQuadraticLineProcPtr
typealias ATSQuadraticCurveProcPtr = @convention(c) (UnsafePointer<Float32Point>, UnsafePointer<Float32Point>, UnsafePointer<Float32Point>, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSQuadraticCurveUPP = ATSQuadraticCurveProcPtr
typealias ATSQuadraticClosePathProcPtr = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSQuadraticClosePathUPP = ATSQuadraticClosePathProcPtr
typealias ATSCubicMoveToProcPtr = @convention(c) (UnsafePointer<Float32Point>, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSCubicMoveToUPP = ATSCubicMoveToProcPtr
typealias ATSCubicLineToProcPtr = @convention(c) (UnsafePointer<Float32Point>, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSCubicLineToUPP = ATSCubicLineToProcPtr
typealias ATSCubicCurveToProcPtr = @convention(c) (UnsafePointer<Float32Point>, UnsafePointer<Float32Point>, UnsafePointer<Float32Point>, UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSCubicCurveToUPP = ATSCubicCurveToProcPtr
typealias ATSCubicClosePathProcPtr = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias ATSCubicClosePathUPP = ATSCubicClosePathProcPtr
typealias ATSUTextLayout = COpaquePointer
typealias ATSUStyle = COpaquePointer
typealias ATSUFontFallbacks = COpaquePointer
typealias ATSUTextMeasurement = Fixed
typealias ATSUFontID = FMFont
typealias ATSUFontFeatureType = UInt16
typealias ATSUFontFeatureSelector = UInt16
typealias ATSUFontVariationAxis = FourCharCode
typealias ATSUFontVariationValue = Fixed
typealias ATSUAttributeTag = UInt32
var kATSULineWidthTag: Int { get }
var kATSULineRotationTag: Int { get }
var kATSULineDirectionTag: Int { get }
var kATSULineJustificationFactorTag: Int { get }
var kATSULineFlushFactorTag: Int { get }
var kATSULineBaselineValuesTag: Int { get }
var kATSULineLayoutOptionsTag: Int { get }
var kATSULineAscentTag: Int { get }
var kATSULineDescentTag: Int { get }
var kATSULineLangRegionTag: Int { get }
var kATSULineTextLocatorTag: Int { get }
var kATSULineTruncationTag: Int { get }
var kATSULineFontFallbacksTag: Int { get }
var kATSULineDecimalTabCharacterTag: Int { get }
var kATSULayoutOperationOverrideTag: Int { get }
var kATSULineHighlightCGColorTag: Int { get }
var kATSUMaxLineTag: Int { get }
var kATSULineLanguageTag: Int { get }
var kATSUCGContextTag: Int { get }
var kATSUQDBoldfaceTag: Int { get }
var kATSUQDItalicTag: Int { get }
var kATSUQDUnderlineTag: Int { get }
var kATSUQDCondensedTag: Int { get }
var kATSUQDExtendedTag: Int { get }
var kATSUFontTag: Int { get }
var kATSUSizeTag: Int { get }
var kATSUColorTag: Int { get }
var kATSULangRegionTag: Int { get }
var kATSUVerticalCharacterTag: Int { get }
var kATSUImposeWidthTag: Int { get }
var kATSUBeforeWithStreamShiftTag: Int { get }
var kATSUAfterWithStreamShiftTag: Int { get }
var kATSUCrossStreamShiftTag: Int { get }
var kATSUTrackingTag: Int { get }
var kATSUHangingInhibitFactorTag: Int { get }
var kATSUKerningInhibitFactorTag: Int { get }
var kATSUDecompositionFactorTag: Int { get }
var kATSUBaselineClassTag: Int { get }
var kATSUPriorityJustOverrideTag: Int { get }
var kATSUNoLigatureSplitTag: Int { get }
var kATSUNoCaretAngleTag: Int { get }
var kATSUSuppressCrossKerningTag: Int { get }
var kATSUNoOpticalAlignmentTag: Int { get }
var kATSUForceHangingTag: Int { get }
var kATSUNoSpecialJustificationTag: Int { get }
var kATSUStyleTextLocatorTag: Int { get }
var kATSUStyleRenderingOptionsTag: Int { get }
var kATSUAscentTag: Int { get }
var kATSUDescentTag: Int { get }
var kATSULeadingTag: Int { get }
var kATSUGlyphSelectorTag: Int { get }
var kATSURGBAlphaColorTag: Int { get }
var kATSUFontMatrixTag: Int { get }
var kATSUStyleUnderlineCountOptionTag: Int { get }
var kATSUStyleUnderlineColorOptionTag: Int { get }
var kATSUStyleStrikeThroughTag: Int { get }
var kATSUStyleStrikeThroughCountOptionTag: Int { get }
var kATSUStyleStrikeThroughColorOptionTag: Int { get }
var kATSUStyleDropShadowTag: Int { get }
var kATSUStyleDropShadowBlurOptionTag: Int { get }
var kATSUStyleDropShadowOffsetOptionTag: Int { get }
var kATSUStyleDropShadowColorOptionTag: Int { get }
var kATSUMaxStyleTag: Int { get }
var kATSULanguageTag: Int { get }
var kATSUMaxATSUITagValue: Int { get }
typealias ATSUAttributeValuePtr = UnsafeMutablePointer<Void>
typealias ConstATSUAttributeValuePtr = UnsafePointer<Void>
struct ATSUAttributeInfo {
  var fTag: ATSUAttributeTag
  var fValueSize: Int
  init()
  init(fTag: ATSUAttributeTag, fValueSize: Int)
}
struct ATSUCaret {
  var fX: Fixed
  var fY: Fixed
  var fDeltaX: Fixed
  var fDeltaY: Fixed
  init()
  init(fX: Fixed, fY: Fixed, fDeltaX: Fixed, fDeltaY: Fixed)
}
typealias ATSUCursorMovementType = UInt16
var kATSUByCharacter: Int { get }
var kATSUByTypographicCluster: Int { get }
var kATSUByWord: Int { get }
var kATSUByCharacterCluster: Int { get }
var kATSUByCluster: Int { get }
typealias ATSULineTruncation = UInt32
var kATSUTruncateNone: Int { get }
var kATSUTruncateStart: Int { get }
var kATSUTruncateEnd: Int { get }
var kATSUTruncateMiddle: Int { get }
var kATSUTruncateSpecificationMask: Int { get }
var kATSUTruncFeatNoSquishing: Int { get }
typealias ATSUStyleLineCountType = UInt16
var kATSUStyleSingleLineCount: Int { get }
var kATSUStyleDoubleLineCount: Int { get }
typealias ATSUVerticalCharacterType = UInt16
var kATSUStronglyHorizontal: Int { get }
var kATSUStronglyVertical: Int { get }
typealias ATSUStyleComparison = UInt16
var kATSUStyleUnequal: Int { get }
var kATSUStyleContains: Int { get }
var kATSUStyleEquals: Int { get }
var kATSUStyleContainedBy: Int { get }
typealias ATSUFontFallbackMethod = UInt16
var kATSUDefaultFontFallbacks: Int { get }
var kATSULastResortOnlyFallback: Int { get }
var kATSUSequentialFallbacksPreferred: Int { get }
var kATSUSequentialFallbacksExclusive: Int { get }
typealias ATSUTabType = UInt16
var kATSULeftTab: Int { get }
var kATSUCenterTab: Int { get }
var kATSURightTab: Int { get }
var kATSUDecimalTab: Int { get }
var kATSUNumberTabTypes: Int { get }
struct ATSUTab {
  var tabPosition: ATSUTextMeasurement
  var tabType: ATSUTabType
  init()
  init(tabPosition: ATSUTextMeasurement, tabType: ATSUTabType)
}
struct ATSURGBAlphaColor {
  var red: Float
  var green: Float
  var blue: Float
  var alpha: Float
  init()
  init(red: Float, green: Float, blue: Float, alpha: Float)
}
typealias GlyphCollection = UInt16
var kGlyphCollectionGID: Int { get }
var kGlyphCollectionAdobeCNS1: Int { get }
var kGlyphCollectionAdobeGB1: Int { get }
var kGlyphCollectionAdobeJapan1: Int { get }
var kGlyphCollectionAdobeJapan2: Int { get }
var kGlyphCollectionAdobeKorea1: Int { get }
var kGlyphCollectionUnspecified: Int { get }
struct ATSUGlyphSelector {
  var collection: GlyphCollection
  var glyphID: GlyphID
  init()
  init(collection: GlyphCollection, glyphID: GlyphID)
}
struct ATSUGlyphInfo {
  var glyphID: GlyphID
  var reserved: UInt16
  var layoutFlags: UInt32
  var charIndex: UniCharArrayOffset
  var style: ATSUStyle
  var deltaY: Float32
  var idealX: Float32
  var screenX: Int16
  var caretX: Int16
  init()
  init(glyphID: GlyphID, reserved: UInt16, layoutFlags: UInt32, charIndex: UniCharArrayOffset, style: ATSUStyle, deltaY: Float32, idealX: Float32, screenX: Int16, caretX: Int16)
}
struct ATSUGlyphInfoArray {
  var layout: ATSUTextLayout
  var numGlyphs: Int
  var glyphs: (ATSUGlyphInfo)
  init()
  init(layout: ATSUTextLayout, numGlyphs: Int, glyphs: (ATSUGlyphInfo))
}

/*********************************************************************************/
typealias ATSUHighlightMethod = UInt32
var kInvertHighlighting: Int { get }
var kRedrawHighlighting: Int { get }
typealias ATSUBackgroundDataType = UInt32
var kATSUBackgroundColor: Int { get }
var kATSUBackgroundCallback: Int { get }
typealias ATSUBackgroundColor = ATSURGBAlphaColor
typealias RedrawBackgroundProcPtr = @convention(c) (ATSUTextLayout, UniCharArrayOffset, Int, UnsafeMutablePointer<ATSTrapezoid>, Int) -> DarwinBoolean
typealias RedrawBackgroundUPP = RedrawBackgroundProcPtr
struct ATSUBackgroundData {
  var backgroundColor: ATSUBackgroundColor
  var backgroundUPP: RedrawBackgroundUPP!
  init(backgroundColor: ATSUBackgroundColor)
  init(backgroundUPP: RedrawBackgroundUPP!)
  init()
}
struct ATSUUnhighlightData {
  var dataType: ATSUBackgroundDataType
  var unhighlightData: ATSUBackgroundData
  init()
  init(dataType: ATSUBackgroundDataType, unhighlightData: ATSUBackgroundData)
}
var kATSULeftToRightBaseDirection: Int { get }
var kATSURightToLeftBaseDirection: Int { get }
var kATSUInvalidFontID: Int { get }
var kATSUUseLineControlWidth: Int { get }
var kATSUNoSelector: Int { get }
var kATSUFromTextBeginning: UInt32 { get }
var kATSUToTextEnd: UInt32 { get }
var kATSUFromPreviousLayout: UInt32 { get }
var kATSUFromFollowingLayout: UInt32 { get }
var kATSUUseGrafPortPenLoc: UInt32 { get }
var kATSUClearAll: UInt32 { get }
var cmICCProfileVersion4: Int { get }
var cmICCProfileVersion2: Int { get }
var cmICCProfileVersion21: Int { get }
var cmCS2ProfileVersion: Int { get }
var cmCS1ProfileVersion: Int { get }
var cmProfileMajorVersionMask: Int { get }
var cmCurrentProfileMajorVersion: Int { get }
var cmMagicNumber: Int { get }
var cmICCReservedFlagsMask: Int { get }
var cmEmbeddedMask: Int { get }
var cmEmbeddedUseMask: Int { get }
var cmBlackPointCompensationMask: Int { get }
var cmCMSReservedFlagsMask: Int { get }
var cmQualityMask: Int { get }
var cmInterpolationMask: Int { get }
var cmGamutCheckingMask: Int { get }
var cmEmbeddedProfile: Int { get }
var cmEmbeddedUse: Int { get }
var cmNormalMode: Int { get }
var cmDraftMode: Int { get }
var cmBestMode: Int { get }
var cmBlackPointCompensation: Int { get }
var cmReflectiveTransparentMask: Int { get }
var cmGlossyMatteMask: Int { get }
var cmReflective: Int { get }
var cmGlossy: Int { get }
var cmPerceptual: Int { get }
var cmRelativeColorimetric: Int { get }
var cmSaturation: Int { get }
var cmAbsoluteColorimetric: Int { get }
var cmAsciiData: Int { get }
var cmBinaryData: Int { get }
var cmPrtrDefaultScreens: Int { get }
var cmLinesPer: Int { get }
var cmNumHeaderElements: Int { get }
var cmAToB0Tag: Int { get }
var cmAToB1Tag: Int { get }
var cmAToB2Tag: Int { get }
var cmBlueColorantTag: Int { get }
var cmBlueTRCTag: Int { get }
var cmBToA0Tag: Int { get }
var cmBToA1Tag: Int { get }
var cmBToA2Tag: Int { get }
var cmCalibrationDateTimeTag: Int { get }
var cmChromaticAdaptationTag: Int { get }
var cmCharTargetTag: Int { get }
var cmCopyrightTag: Int { get }
var cmDeviceMfgDescTag: Int { get }
var cmDeviceModelDescTag: Int { get }
var cmGamutTag: Int { get }
var cmGrayTRCTag: Int { get }
var cmGreenColorantTag: Int { get }
var cmGreenTRCTag: Int { get }
var cmLuminanceTag: Int { get }
var cmMeasurementTag: Int { get }
var cmMediaBlackPointTag: Int { get }
var cmMediaWhitePointTag: Int { get }
var cmNamedColorTag: Int { get }
var cmNamedColor2Tag: Int { get }
var cmPreview0Tag: Int { get }
var cmPreview1Tag: Int { get }
var cmPreview2Tag: Int { get }
var cmProfileDescriptionTag: Int { get }
var cmProfileSequenceDescTag: Int { get }
var cmPS2CRD0Tag: Int { get }
var cmPS2CRD1Tag: Int { get }
var cmPS2CRD2Tag: Int { get }
var cmPS2CRD3Tag: Int { get }
var cmPS2CSATag: Int { get }
var cmPS2RenderingIntentTag: Int { get }
var cmRedColorantTag: Int { get }
var cmRedTRCTag: Int { get }
var cmScreeningDescTag: Int { get }
var cmScreeningTag: Int { get }
var cmTechnologyTag: Int { get }
var cmUcrBgTag: Int { get }
var cmViewingConditionsDescTag: Int { get }
var cmViewingConditionsTag: Int { get }
var cmPS2CRDVMSizeTag: Int { get }
var cmVideoCardGammaTag: Int { get }
var cmMakeAndModelTag: Int { get }
var cmProfileDescriptionMLTag: Int { get }
var cmNativeDisplayInfoTag: Int { get }
var cmSigCrdInfoType: Int { get }
var cmSigCurveType: Int { get }
var cmSigDataType: Int { get }
var cmSigDateTimeType: Int { get }
var cmSigLut16Type: Int { get }
var cmSigLut8Type: Int { get }
var cmSigMeasurementType: Int { get }
var cmSigMultiFunctA2BType: Int { get }
var cmSigMultiFunctB2AType: Int { get }
var cmSigNamedColorType: Int { get }
var cmSigNamedColor2Type: Int { get }
var cmSigParametricCurveType: Int { get }
var cmSigProfileDescriptionType: Int { get }
var cmSigProfileSequenceDescType: Int { get }
var cmSigScreeningType: Int { get }
var cmSigS15Fixed16Type: Int { get }
var cmSigSignatureType: Int { get }
var cmSigTextType: Int { get }
var cmSigU16Fixed16Type: Int { get }
var cmSigU1Fixed15Type: Int { get }
var cmSigUInt8Type: Int { get }
var cmSigUInt16Type: Int { get }
var cmSigUInt32Type: Int { get }
var cmSigUInt64Type: Int { get }
var cmSigUcrBgType: Int { get }
var cmSigUnicodeTextType: Int { get }
var cmSigViewingConditionsType: Int { get }
var cmSigXYZType: Int { get }
var cmSigPS2CRDVMSizeType: Int { get }
var cmSigVideoCardGammaType: Int { get }
var cmSigMakeAndModelType: Int { get }
var cmSigNativeDisplayInfoType: Int { get }
var cmSigMultiLocalizedUniCodeType: Int { get }
var cmTechnologyDigitalCamera: Int { get }
var cmTechnologyFilmScanner: Int { get }
var cmTechnologyReflectiveScanner: Int { get }
var cmTechnologyInkJetPrinter: Int { get }
var cmTechnologyThermalWaxPrinter: Int { get }
var cmTechnologyElectrophotographicPrinter: Int { get }
var cmTechnologyElectrostaticPrinter: Int { get }
var cmTechnologyDyeSublimationPrinter: Int { get }
var cmTechnologyPhotographicPaperPrinter: Int { get }
var cmTechnologyFilmWriter: Int { get }
var cmTechnologyVideoMonitor: Int { get }
var cmTechnologyVideoCamera: Int { get }
var cmTechnologyProjectionTelevision: Int { get }
var cmTechnologyCRTDisplay: Int { get }
var cmTechnologyPMDisplay: Int { get }
var cmTechnologyAMDisplay: Int { get }
var cmTechnologyPhotoCD: Int { get }
var cmTechnologyPhotoImageSetter: Int { get }
var cmTechnologyGravure: Int { get }
var cmTechnologyOffsetLithography: Int { get }
var cmTechnologySilkscreen: Int { get }
var cmTechnologyFlexography: Int { get }
var cmFlare0: Int { get }
var cmFlare100: Int { get }
var cmGeometryUnknown: Int { get }
var cmGeometry045or450: Int { get }
var cmGeometry0dord0: Int { get }
var cmStdobsUnknown: Int { get }
var cmStdobs1931TwoDegrees: Int { get }
var cmStdobs1964TenDegrees: Int { get }
var cmIlluminantUnknown: Int { get }
var cmIlluminantD50: Int { get }
var cmIlluminantD65: Int { get }
var cmIlluminantD93: Int { get }
var cmIlluminantF2: Int { get }
var cmIlluminantD55: Int { get }
var cmIlluminantA: Int { get }
var cmIlluminantEquiPower: Int { get }
var cmIlluminantF8: Int { get }
var cmSpotFunctionUnknown: Int { get }
var cmSpotFunctionDefault: Int { get }
var cmSpotFunctionRound: Int { get }
var cmSpotFunctionDiamond: Int { get }
var cmSpotFunctionEllipse: Int { get }
var cmSpotFunctionLine: Int { get }
var cmSpotFunctionSquare: Int { get }
var cmSpotFunctionCross: Int { get }
var cmXYZData: Int { get }
var cmLabData: Int { get }
var cmLuvData: Int { get }
var cmYCbCrData: Int { get }
var cmYxyData: Int { get }
var cmRGBData: Int { get }
var cmSRGBData: Int { get }
var cmGrayData: Int { get }
var cmHSVData: Int { get }
var cmHLSData: Int { get }
var cmCMYKData: Int { get }
var cmCMYData: Int { get }
var cmMCH5Data: Int { get }
var cmMCH6Data: Int { get }
var cmMCH7Data: Int { get }
var cmMCH8Data: Int { get }
var cm3CLRData: Int { get }
var cm4CLRData: Int { get }
var cm5CLRData: Int { get }
var cm6CLRData: Int { get }
var cm7CLRData: Int { get }
var cm8CLRData: Int { get }
var cm9CLRData: Int { get }
var cm10CLRData: Int { get }
var cm11CLRData: Int { get }
var cm12CLRData: Int { get }
var cm13CLRData: Int { get }
var cm14CLRData: Int { get }
var cm15CLRData: Int { get }
var cmNamedData: Int { get }
var cmInputClass: Int { get }
var cmDisplayClass: Int { get }
var cmOutputClass: Int { get }
var cmLinkClass: Int { get }
var cmAbstractClass: Int { get }
var cmColorSpaceClass: Int { get }
var cmNamedColorClass: Int { get }
var cmMacintosh: Int { get }
var cmMicrosoft: Int { get }
var cmSolaris: Int { get }
var cmSiliconGraphics: Int { get }
var cmTaligent: Int { get }
var cmParametricType0: Int { get }
var cmParametricType1: Int { get }
var cmParametricType2: Int { get }
var cmParametricType3: Int { get }
var cmParametricType4: Int { get }
var cmCS1ChromTag: Int { get }
var cmCS1TRCTag: Int { get }
var cmCS1NameTag: Int { get }
var cmCS1CustTag: Int { get }
typealias CMXYZComponent = UInt16
struct CMXYZColor {
  var X: CMXYZComponent
  var Y: CMXYZComponent
  var Z: CMXYZComponent
  init()
  init(X: CMXYZComponent, Y: CMXYZComponent, Z: CMXYZComponent)
}
struct CM2Profile {
  var header: CM2Header
  var tagTable: CMTagElemTable
  var elemData: (Int8)
  init()
  init(header: CM2Header, tagTable: CMTagElemTable, elemData: (Int8))
}
typealias CM2ProfilePtr = UnsafeMutablePointer<CM2Profile>
struct CMMultiFunctLutType {
  var typeDescriptor: OSType
  var reserved: UInt32
  var inputChannels: UInt8
  var outputChannels: UInt8
  var reserved2: UInt16
  var offsetBcurves: UInt32
  var offsetMatrix: UInt32
  var offsetMcurves: UInt32
  var offsetCLUT: UInt32
  var offsetAcurves: UInt32
  var data: (UInt8)
  init()
  init(typeDescriptor: OSType, reserved: UInt32, inputChannels: UInt8, outputChannels: UInt8, reserved2: UInt16, offsetBcurves: UInt32, offsetMatrix: UInt32, offsetMcurves: UInt32, offsetCLUT: UInt32, offsetAcurves: UInt32, data: (UInt8))
}
typealias CMMultiFunctLutA2BType = CMMultiFunctLutType
var cmVideoCardGammaTableType: Int { get }
var cmVideoCardGammaFormulaType: Int { get }
var cmUseDefaultChromaticAdaptation: Int { get }
var cmLinearChromaticAdaptation: Int { get }
var cmVonKriesChromaticAdaptation: Int { get }
var cmBradfordChromaticAdaptation: Int { get }
typealias CMFlattenProcPtr = @convention(c) (Int32, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSErr
typealias CMFlattenUPP = CMFlattenProcPtr
var CMBITMAPCALLBACKPROCPTR_DEFINED: Int32 { get }
var kDefaultCMMSignature: Int { get }
var cmPS7bit: Int { get }
var cmPS8bit: Int { get }
var cmOpenReadSpool: Int { get }
var cmOpenWriteSpool: Int { get }
var cmReadSpool: Int { get }
var cmWriteSpool: Int { get }
var cmCloseSpool: Int { get }
var cmOpenReadAccess: Int { get }
var cmOpenWriteAccess: Int { get }
var cmReadAccess: Int { get }
var cmWriteAccess: Int { get }
var cmCloseAccess: Int { get }
var cmCreateNewAccess: Int { get }
var cmAbortWriteAccess: Int { get }
var cmBeginAccess: Int { get }
var cmEndAccess: Int { get }
var cmInputUse: Int { get }
var cmOutputUse: Int { get }
var cmDisplayUse: Int { get }
var cmProofUse: Int { get }
var kNoTransform: Int { get }
var kUseAtoB: Int { get }
var kUseBtoA: Int { get }
var kUseBtoB: Int { get }
var kDeviceToPCS: Int { get }
var kPCSToDevice: Int { get }
var kPCSToPCS: Int { get }
var kUseProfileIntent: Int { get }
var cmColorSpaceSpaceMask: Int { get }
var cmColorSpacePremulAlphaMask: Int { get }
var cmColorSpaceAlphaMask: Int { get }
var cmColorSpaceSpaceAndAlphaMask: Int { get }
var cmColorSpacePackingMask: Int { get }
var cmColorSpaceEncodingMask: Int { get }
var cmColorSpaceReservedMask: Int { get }
var cmNoColorPacking: Int { get }
var cmWord5ColorPacking: Int { get }
var cmWord565ColorPacking: Int { get }
var cmLong8ColorPacking: Int { get }
var cmLong10ColorPacking: Int { get }
var cmAlphaFirstPacking: Int { get }
var cmOneBitDirectPacking: Int { get }
var cmAlphaLastPacking: Int { get }
var cm8_8ColorPacking: Int { get }
var cm16_8ColorPacking: Int { get }
var cm24_8ColorPacking: Int { get }
var cm32_8ColorPacking: Int { get }
var cm40_8ColorPacking: Int { get }
var cm48_8ColorPacking: Int { get }
var cm56_8ColorPacking: Int { get }
var cm64_8ColorPacking: Int { get }
var cm32_16ColorPacking: Int { get }
var cm48_16ColorPacking: Int { get }
var cm64_16ColorPacking: Int { get }
var cm32_32ColorPacking: Int { get }
var cmLittleEndianPacking: Int { get }
var cmReverseChannelPacking: Int { get }
var cmSRGB16ChannelEncoding: Int { get }
var cmNoSpace: Int { get }
var cmRGBSpace: Int { get }
var cmCMYKSpace: Int { get }
var cmHSVSpace: Int { get }
var cmHLSSpace: Int { get }
var cmYXYSpace: Int { get }
var cmXYZSpace: Int { get }
var cmLUVSpace: Int { get }
var cmLABSpace: Int { get }
var cmReservedSpace1: Int { get }
var cmGraySpace: Int { get }
var cmReservedSpace2: Int { get }
var cmGamutResultSpace: Int { get }
var cmNamedIndexedSpace: Int { get }
var cmMCFiveSpace: Int { get }
var cmMCSixSpace: Int { get }
var cmMCSevenSpace: Int { get }
var cmMCEightSpace: Int { get }
var cmAlphaPmulSpace: Int { get }
var cmAlphaSpace: Int { get }
var cmRGBASpace: Int { get }
var cmGrayASpace: Int { get }
var cmRGBAPmulSpace: Int { get }
var cmGrayAPmulSpace: Int { get }
var cmGray8Space: Int { get }
var cmGray16Space: Int { get }
var cmGray16LSpace: Int { get }
var cmGrayA16Space: Int { get }
var cmGrayA32Space: Int { get }
var cmGrayA32LSpace: Int { get }
var cmGrayA16PmulSpace: Int { get }
var cmGrayA32PmulSpace: Int { get }
var cmGrayA32LPmulSpace: Int { get }
var cmRGB16Space: Int { get }
var cmRGB16LSpace: Int { get }
var cmRGB565Space: Int { get }
var cmRGB565LSpace: Int { get }
var cmRGB24Space: Int { get }
var cmRGB32Space: Int { get }
var cmRGB48Space: Int { get }
var cmRGB48LSpace: Int { get }
var cmARGB32Space: Int { get }
var cmARGB64Space: Int { get }
var cmARGB64LSpace: Int { get }
var cmRGBA32Space: Int { get }
var cmRGBA64Space: Int { get }
var cmRGBA64LSpace: Int { get }
var cmARGB32PmulSpace: Int { get }
var cmARGB64PmulSpace: Int { get }
var cmARGB64LPmulSpace: Int { get }
var cmRGBA32PmulSpace: Int { get }
var cmRGBA64PmulSpace: Int { get }
var cmRGBA64LPmulSpace: Int { get }
var cmCMYK32Space: Int { get }
var cmCMYK64Space: Int { get }
var cmCMYK64LSpace: Int { get }
var cmHSV32Space: Int { get }
var cmHLS32Space: Int { get }
var cmYXY32Space: Int { get }
var cmXYZ24Space: Int { get }
var cmXYZ32Space: Int { get }
var cmXYZ48Space: Int { get }
var cmXYZ48LSpace: Int { get }
var cmLUV32Space: Int { get }
var cmLAB24Space: Int { get }
var cmLAB32Space: Int { get }
var cmLAB48Space: Int { get }
var cmLAB48LSpace: Int { get }
var cmGamutResult1Space: Int { get }
var cmNamedIndexed32Space: Int { get }
var cmNamedIndexed32LSpace: Int { get }
var cmMCFive8Space: Int { get }
var cmMCSix8Space: Int { get }
var cmMCSeven8Space: Int { get }
var cmMCEight8Space: Int { get }
var CS_MAX_PATH: Int { get }
var cmNoProfileBase: Int { get }
var cmPathBasedProfile: Int { get }
var cmBufferBasedProfile: Int { get }
var cmOriginalProfileLocationSize: Int { get }
var cmCurrentProfileLocationSize: Int { get }
var cmProfileIterateDataVersion1: Int { get }
var cmProfileIterateDataVersion2: Int { get }
var cmProfileIterateDataVersion3: Int { get }
var cmProfileIterateDataVersion4: Int { get }
var kCMPrefsChangedNotification: String { get }
struct CMFloatBitmapFlags : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCMFloatBitmapFlagsNone: CMFloatBitmapFlags { get }
var kCMFloatBitmapFlagsAlpha: CMFloatBitmapFlags { get }
var kCMFloatBitmapFlagsAlphaPremul: CMFloatBitmapFlags { get }
var kCMFloatBitmapFlagsRangeClipped: CMFloatBitmapFlags { get }
var cmDeviceInfoVersion1: Int { get }
var cmDeviceProfileInfoVersion1: Int { get }
var cmDeviceProfileInfoVersion2: Int { get }
var cmCurrentDeviceInfoVersion: Int { get }
var cmCurrentProfileInfoVersion: Int { get }
var cmDefaultDeviceID: Int { get }
var cmDefaultProfileID: Int { get }
var cmDeviceStateDefault: Int { get }
var cmDeviceStateOffline: Int { get }
var cmDeviceStateBusy: Int { get }
var cmDeviceStateForceNotify: Int { get }
var cmDeviceStateDeviceRsvdBits: Int { get }
var cmDeviceStateAppleRsvdBits: Int { get }
var cmIterateFactoryDeviceProfiles: Int { get }
var cmIterateCustomDeviceProfiles: Int { get }
var cmIterateCurrentDeviceProfiles: Int { get }
var cmIterateAllDeviceProfiles: Int { get }
var cmIterateDeviceProfilesMask: Int { get }
var cmDeviceDBNotFoundErr: Int { get }
var cmDeviceAlreadyRegistered: Int { get }
var cmDeviceNotRegistered: Int { get }
var cmDeviceProfilesNotFound: Int { get }
var cmInternalCFErr: Int { get }
var cmPrefsSynchError: Int { get }
var kCMDeviceRegisteredNotification: String { get }
var kCMDeviceUnregisteredNotification: String { get }
var kCMDeviceOnlineNotification: String { get }
var kCMDeviceOfflineNotification: String { get }
var kCMDeviceStateNotification: String { get }
var kCMDefaultDeviceNotification: String { get }
var kCMDeviceProfilesNotification: String { get }
var kCMDefaultDeviceProfileNotification: String { get }
var kCMDisplayDeviceProfilesNotification: String { get }
var cmScannerDeviceClass: Int { get }
var cmCameraDeviceClass: Int { get }
var cmDisplayDeviceClass: Int { get }
var cmPrinterDeviceClass: Int { get }
var cmProofDeviceClass: Int { get }
typealias CMDeviceClass = OSType
struct CMDeviceScope {
  var deviceUser: Unmanaged<CFString>!
  var deviceHost: Unmanaged<CFString>!
  init()
  init(deviceUser: Unmanaged<CFString>!, deviceHost: Unmanaged<CFString>!)
}
struct CMDeviceInfo {
  var dataVersion: UInt32
  var deviceClass: CMDeviceClass
  var deviceID: CMDeviceID
  var deviceScope: CMDeviceScope
  var deviceState: CMDeviceState
  var defaultProfileID: CMDeviceProfileID
  var deviceName: UnsafeMutablePointer<Unmanaged<CFDictionary>?>
  var profileCount: UInt32
  var reserved: UInt32
  init()
  init(dataVersion: UInt32, deviceClass: CMDeviceClass, deviceID: CMDeviceID, deviceScope: CMDeviceScope, deviceState: CMDeviceState, defaultProfileID: CMDeviceProfileID, deviceName: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, profileCount: UInt32, reserved: UInt32)
}
struct CMDeviceProfileArray {
  var profileCount: UInt32
  var profiles: (CMDeviceProfileInfo)
  init()
  init(profileCount: UInt32, profiles: (CMDeviceProfileInfo))
}
struct FontRec {
  var fontType: Int16
  var firstChar: Int16
  var lastChar: Int16
  var widMax: Int16
  var kernMax: Int16
  var nDescent: Int16
  var fRectWidth: Int16
  var fRectHeight: Int16
  var owTLoc: UInt16
  var ascent: Int16
  var descent: Int16
  var leading: Int16
  var rowWords: Int16
  init()
  init(fontType: Int16, firstChar: Int16, lastChar: Int16, widMax: Int16, kernMax: Int16, nDescent: Int16, fRectWidth: Int16, fRectHeight: Int16, owTLoc: UInt16, ascent: Int16, descent: Int16, leading: Int16, rowWords: Int16)
}
typealias FontRecPtr = UnsafeMutablePointer<FontRec>
typealias FontRecHdl = UnsafeMutablePointer<FontRecPtr>
struct FMInput {
  var family: Int16
  var size: Int16
  var face: Style
  var needBits: DarwinBoolean
  var device: Int16
  var numer: Point
  var denom: Point
  init()
  init(family: Int16, size: Int16, face: Style, needBits: DarwinBoolean, device: Int16, numer: Point, denom: Point)
}
struct FamRec {
  var ffFlags: Int16
  var ffFamID: Int16
  var ffFirstChar: Int16
  var ffLastChar: Int16
  var ffAscent: Int16
  var ffDescent: Int16
  var ffLeading: Int16
  var ffWidMax: Int16
  var ffWTabOff: Int32
  var ffKernOff: Int32
  var ffStylOff: Int32
  var ffProperty: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  var ffIntl: (Int16, Int16)
  var ffVersion: Int16
  init()
  init(ffFlags: Int16, ffFamID: Int16, ffFirstChar: Int16, ffLastChar: Int16, ffAscent: Int16, ffDescent: Int16, ffLeading: Int16, ffWidMax: Int16, ffWTabOff: Int32, ffKernOff: Int32, ffStylOff: Int32, ffProperty: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), ffIntl: (Int16, Int16), ffVersion: Int16)
}
struct AsscEntry {
  var fontSize: Int16
  var fontStyle: Int16
  var fontID: Int16
  init()
  init(fontSize: Int16, fontStyle: Int16, fontID: Int16)
}
struct FontAssoc {
  var numAssoc: Int16
  init()
  init(numAssoc: Int16)
}
struct StyleTable {
  var fontClass: Int16
  var offset: Int32
  var reserved: Int32
  var indexes: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(fontClass: Int16, offset: Int32, reserved: Int32, indexes: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
struct NameTable {
  var stringCount: Int16
  var baseFontName: Str255
  init()
  init(stringCount: Int16, baseFontName: Str255)
}
struct KernPair {
  var kernFirst: Int8
  var kernSecond: Int8
  var kernWidth: Int16
  init()
  init(kernFirst: Int8, kernSecond: Int8, kernWidth: Int16)
}
struct KernEntry {
  var kernStyle: Int16
  var kernLength: Int16
  init()
  init(kernStyle: Int16, kernLength: Int16)
}
struct KernTable {
  var numKerns: Int16
  init()
  init(numKerns: Int16)
}
var QD_HEADERS_ARE_PRIVATE: Int32 { get }
typealias GrafPtr = COpaquePointer
typealias CGrafPtr = GrafPtr
typealias GWorldPtr = CGrafPtr
typealias QDErr = Int16
typealias GWorldFlags = UInt
var srcCopy: Int { get }
struct BitMap {
  var baseAddr: Ptr
  var rowBytes: Int16
  var bounds: Rect
  init()
  init(baseAddr: Ptr, rowBytes: Int16, bounds: Rect)
}
typealias BitMapPtr = UnsafeMutablePointer<BitMap>
typealias BitMapHandle = UnsafeMutablePointer<BitMapPtr>
struct RGBColor {
  var red: UInt16
  var green: UInt16
  var blue: UInt16
  init()
  init(red: UInt16, green: UInt16, blue: UInt16)
}
struct ColorSpec {
  var value: Int16
  var rgb: RGBColor
  init()
  init(value: Int16, rgb: RGBColor)
}
typealias ColorSpecPtr = UnsafeMutablePointer<ColorSpec>
typealias CSpecArray = (ColorSpec)
struct ColorTable {
  var ctSeed: Int32
  var ctFlags: Int16
  var ctSize: Int16
  var ctTable: CSpecArray
  init()
  init(ctSeed: Int32, ctFlags: Int16, ctSize: Int16, ctTable: CSpecArray)
}
typealias CTabPtr = UnsafeMutablePointer<ColorTable>
typealias CTabHandle = UnsafeMutablePointer<CTabPtr>
struct PixMap {
  var baseAddr: Ptr
  var rowBytes: Int16
  var bounds: Rect
  var pmVersion: Int16
  var packType: Int16
  var packSize: Int32
  var hRes: Fixed
  var vRes: Fixed
  var pixelType: Int16
  var pixelSize: Int16
  var cmpCount: Int16
  var cmpSize: Int16
  var pixelFormat: OSType
  var pmTable: CTabHandle
  var pmExt: UnsafeMutablePointer<Void>
  init()
  init(baseAddr: Ptr, rowBytes: Int16, bounds: Rect, pmVersion: Int16, packType: Int16, packSize: Int32, hRes: Fixed, vRes: Fixed, pixelType: Int16, pixelSize: Int16, cmpCount: Int16, cmpSize: Int16, pixelFormat: OSType, pmTable: CTabHandle, pmExt: UnsafeMutablePointer<Void>)
}
typealias PixMapPtr = UnsafeMutablePointer<PixMap>
typealias PixMapHandle = UnsafeMutablePointer<PixMapPtr>
var k1MonochromePixelFormat: Int { get }
var k2IndexedPixelFormat: Int { get }
var k4IndexedPixelFormat: Int { get }
var k8IndexedPixelFormat: Int { get }
var k16BE555PixelFormat: Int { get }
var k24RGBPixelFormat: Int { get }
var k32ARGBPixelFormat: Int { get }
var k1IndexedGrayPixelFormat: Int { get }
var k2IndexedGrayPixelFormat: Int { get }
var k4IndexedGrayPixelFormat: Int { get }
var k8IndexedGrayPixelFormat: Int { get }
var k16LE555PixelFormat: Int { get }
var k16LE5551PixelFormat: Int { get }
var k16BE565PixelFormat: Int { get }
var k16LE565PixelFormat: Int { get }
var k24BGRPixelFormat: Int { get }
var k32BGRAPixelFormat: Int { get }
var k32ABGRPixelFormat: Int { get }
var k32RGBAPixelFormat: Int { get }
var kYUVSPixelFormat: Int { get }
var kYUVUPixelFormat: Int { get }
var kYVU9PixelFormat: Int { get }
var kYUV411PixelFormat: Int { get }
var kYVYU422PixelFormat: Int { get }
var kUYVY422PixelFormat: Int { get }
var kYUV211PixelFormat: Int { get }
var k2vuyPixelFormat: Int { get }
struct Pattern {
  var pat: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(pat: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias PatPtr = UnsafeMutablePointer<Pattern>
typealias PatHandle = UnsafeMutablePointer<PatPtr>
struct PixPat {
  var patType: Int16
  var patMap: PixMapHandle
  var patData: Handle
  var patXData: Handle
  var patXValid: Int16
  var patXMap: Handle
  var pat1Data: Pattern
  init()
  init(patType: Int16, patMap: PixMapHandle, patData: Handle, patXData: Handle, patXValid: Int16, patXMap: Handle, pat1Data: Pattern)
}
typealias PixPatPtr = UnsafeMutablePointer<PixPat>
typealias PixPatHandle = UnsafeMutablePointer<PixPatPtr>
typealias RgnHandle = COpaquePointer
typealias GDPtr = UnsafeMutablePointer<GDevice>
typealias GDHandle = UnsafeMutablePointer<GDPtr>
struct GDevice {
  var gdRefNum: Int16
  var gdID: Int16
  var gdType: Int16
  var gdITable: Handle
  var gdResPref: Int16
  var gdSearchProc: Handle
  var gdCompProc: Handle
  var gdFlags: Int16
  var gdPMap: PixMapHandle
  var gdRefCon: Int32
  var gdNextGD: GDHandle
  var gdRect: Rect
  var gdMode: Int32
  var gdCCBytes: Int16
  var gdCCDepth: Int16
  var gdCCXData: Handle
  var gdCCXMask: Handle
  var gdExt: Handle
  init()
  init(gdRefNum: Int16, gdID: Int16, gdType: Int16, gdITable: Handle, gdResPref: Int16, gdSearchProc: Handle, gdCompProc: Handle, gdFlags: Int16, gdPMap: PixMapHandle, gdRefCon: Int32, gdNextGD: GDHandle, gdRect: Rect, gdMode: Int32, gdCCBytes: Int16, gdCCDepth: Int16, gdCCXData: Handle, gdCCXMask: Handle, gdExt: Handle)
}
struct Picture {
  var picSize: Int16
  var picFrame: Rect
  init()
  init(picSize: Int16, picFrame: Rect)
}
typealias PicPtr = UnsafeMutablePointer<Picture>
typealias PicHandle = UnsafeMutablePointer<PicPtr>
struct OpenCPicParams {
  var srcRect: Rect
  var hRes: Fixed
  var vRes: Fixed
  var version: Int16
  var reserved1: Int16
  var reserved2: Int32
  init()
  init(srcRect: Rect, hRes: Fixed, vRes: Fixed, version: Int16, reserved1: Int16, reserved2: Int32)
}
struct FontInfo {
  var ascent: Int16
  var descent: Int16
  var widMax: Int16
  var leading: Int16
  init()
  init(ascent: Int16, descent: Int16, widMax: Int16, leading: Int16)
}
typealias QDRegionParseDirection = Int32
typealias RegionToRectsProcPtr = @convention(c) (UInt16, RgnHandle, UnsafePointer<Rect>, UnsafeMutablePointer<Void>) -> OSStatus
typealias RegionToRectsUPP = RegionToRectsProcPtr
typealias TruncCode = Int16
typealias DragConstraint = UInt16
var kNoConstraint: Int { get }
var kVerticalConstraint: Int { get }
var kHorizontalConstraint: Int { get }
typealias DragGrayRgnProcPtr = @convention(c) () -> Void
typealias ColorSearchProcPtr = @convention(c) (UnsafeMutablePointer<RGBColor>, UnsafeMutablePointer<Int>) -> DarwinBoolean
typealias ColorComplementProcPtr = @convention(c) (UnsafeMutablePointer<RGBColor>) -> DarwinBoolean
typealias DragGrayRgnUPP = DragGrayRgnProcPtr
typealias ColorSearchUPP = ColorSearchProcPtr
typealias ColorComplementUPP = ColorComplementProcPtr
typealias WindowPtr = COpaquePointer
typealias DialogPtr = COpaquePointer
typealias WindowRef = WindowPtr
struct VDGammaRecord {
  var csGTable: Ptr
  init()
  init(csGTable: Ptr)
}
typealias VDGamRecPtr = UnsafeMutablePointer<VDGammaRecord>
struct MacPolygon {
  var polySize: Int16
  var polyBBox: Rect
  var polyPoints: (Point)
  init()
  init(polySize: Int16, polyBBox: Rect, polyPoints: (Point))
}
typealias Polygon = MacPolygon
typealias PolyPtr = UnsafeMutablePointer<MacPolygon>
typealias PolyHandle = UnsafeMutablePointer<PolyPtr>
typealias GrafVerb = Int8
typealias PrinterStatusOpcode = Int32
typealias QDTextProcPtr = @convention(c) (Int16, UnsafePointer<Void>, Point, Point) -> Void
typealias QDLineProcPtr = @convention(c) (Point) -> Void
typealias QDRectProcPtr = @convention(c) (GrafVerb, UnsafePointer<Rect>) -> Void
typealias QDRRectProcPtr = @convention(c) (GrafVerb, UnsafePointer<Rect>, Int16, Int16) -> Void
typealias QDOvalProcPtr = @convention(c) (GrafVerb, UnsafePointer<Rect>) -> Void
typealias QDArcProcPtr = @convention(c) (GrafVerb, UnsafePointer<Rect>, Int16, Int16) -> Void
typealias QDPolyProcPtr = @convention(c) (GrafVerb, PolyHandle) -> Void
typealias QDRgnProcPtr = @convention(c) (GrafVerb, RgnHandle) -> Void
typealias QDBitsProcPtr = @convention(c) (UnsafePointer<BitMap>, UnsafePointer<Rect>, UnsafePointer<Rect>, Int16, RgnHandle) -> Void
typealias QDCommentProcPtr = @convention(c) (Int16, Int16, Handle) -> Void
typealias QDTxMeasProcPtr = @convention(c) (Int16, UnsafePointer<Void>, UnsafeMutablePointer<Point>, UnsafeMutablePointer<Point>, UnsafeMutablePointer<FontInfo>) -> Int16
typealias QDGetPicProcPtr = @convention(c) (UnsafeMutablePointer<Void>, Int16) -> Void
typealias QDPutPicProcPtr = @convention(c) (UnsafePointer<Void>, Int16) -> Void
typealias QDOpcodeProcPtr = @convention(c) (UnsafePointer<Rect>, UnsafePointer<Rect>, UInt16, Int16) -> Void
typealias QDStdGlyphsProcPtr = @convention(c) (UnsafeMutablePointer<Void>, Int) -> OSStatus
typealias QDJShieldCursorProcPtr = @convention(c) (Int16, Int16, Int16, Int16) -> Void
typealias QDPrinterStatusProcPtr = @convention(c) (PrinterStatusOpcode, CGrafPtr, UnsafeMutablePointer<Void>) -> OSStatus
typealias QDTextUPP = QDTextProcPtr
typealias QDLineUPP = QDLineProcPtr
typealias QDRectUPP = QDRectProcPtr
typealias QDRRectUPP = QDRRectProcPtr
typealias QDOvalUPP = QDOvalProcPtr
typealias QDArcUPP = QDArcProcPtr
typealias QDPolyUPP = QDPolyProcPtr
typealias QDRgnUPP = QDRgnProcPtr
typealias QDBitsUPP = QDBitsProcPtr
typealias QDCommentUPP = QDCommentProcPtr
typealias QDTxMeasUPP = QDTxMeasProcPtr
typealias QDGetPicUPP = QDGetPicProcPtr
typealias QDPutPicUPP = QDPutPicProcPtr
typealias QDOpcodeUPP = QDOpcodeProcPtr
typealias QDStdGlyphsUPP = QDStdGlyphsProcPtr
typealias QDJShieldCursorUPP = QDJShieldCursorProcPtr
typealias QDPrinterStatusUPP = QDPrinterStatusProcPtr
struct CQDProcs {
  var textProc: QDTextUPP!
  var lineProc: QDLineUPP!
  var rectProc: QDRectUPP!
  var rRectProc: QDRRectUPP!
  var ovalProc: QDOvalUPP!
  var arcProc: QDArcUPP!
  var polyProc: QDPolyUPP!
  var rgnProc: QDRgnUPP!
  var bitsProc: QDBitsUPP!
  var commentProc: QDCommentUPP!
  var txMeasProc: QDTxMeasUPP!
  var getPicProc: QDGetPicUPP!
  var putPicProc: QDPutPicUPP!
  var opcodeProc: QDOpcodeUPP!
  var newProc1: UniversalProcPtr!
  var glyphsProc: QDStdGlyphsUPP!
  var printerStatusProc: QDPrinterStatusUPP!
  var newProc4: UniversalProcPtr!
  var newProc5: UniversalProcPtr!
  var newProc6: UniversalProcPtr!
  init()
  init(textProc: QDTextUPP!, lineProc: QDLineUPP!, rectProc: QDRectUPP!, rRectProc: QDRRectUPP!, ovalProc: QDOvalUPP!, arcProc: QDArcUPP!, polyProc: QDPolyUPP!, rgnProc: QDRgnUPP!, bitsProc: QDBitsUPP!, commentProc: QDCommentUPP!, txMeasProc: QDTxMeasUPP!, getPicProc: QDGetPicUPP!, putPicProc: QDPutPicUPP!, opcodeProc: QDOpcodeUPP!, newProc1: UniversalProcPtr!, glyphsProc: QDStdGlyphsUPP!, printerStatusProc: QDPrinterStatusUPP!, newProc4: UniversalProcPtr!, newProc5: UniversalProcPtr!, newProc6: UniversalProcPtr!)
}
typealias CQDProcsPtr = UnsafeMutablePointer<CQDProcs>
struct GrafPort {
  var whatever: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  init()
  init(whatever: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
}
typealias CGrafPort = GrafPort
var kTextToSpeechSynthType: OSType { get }
var kTextToSpeechVoiceType: OSType { get }
var kTextToSpeechVoiceFileType: OSType { get }
var kTextToSpeechVoiceBundleType: OSType { get }
var kNoEndingProsody: Int32 { get }
var kNoSpeechInterrupt: Int32 { get }
var kPreflightThenPause: Int32 { get }
var kImmediate: Int32 { get }
var kEndOfWord: Int32 { get }
var kEndOfSentence: Int32 { get }
var soStatus: OSType { get }
var soErrors: OSType { get }
var soInputMode: OSType { get }
var soCharacterMode: OSType { get }
var soNumberMode: OSType { get }
var soRate: OSType { get }
var soPitchBase: OSType { get }
var soPitchMod: OSType { get }
var soVolume: OSType { get }
var soSynthType: OSType { get }
var soRecentSync: OSType { get }
var soPhonemeSymbols: OSType { get }
var soCurrentVoice: OSType { get }
var soCommandDelimiter: OSType { get }
var soReset: OSType { get }
var soCurrentA5: OSType { get }
var soRefCon: OSType { get }
var soTextDoneCallBack: OSType { get }
var soSpeechDoneCallBack: OSType { get }
var soSyncCallBack: OSType { get }
var soErrorCallBack: OSType { get }
var soPhonemeCallBack: OSType { get }
var soWordCallBack: OSType { get }
var soSynthExtension: OSType { get }
var soSoundOutput: OSType { get }
var soOutputToFileWithCFURL: OSType { get }
var soOutputToExtAudioFile: OSType { get }
var soOutputToAudioDevice: OSType { get }
var soPhonemeOptions: OSType { get }
var modeText: OSType { get }
var modePhonemes: OSType { get }
var modeTune: OSType { get }
var modeNormal: OSType { get }
var modeLiteral: OSType { get }
var soVoiceDescription: OSType { get }
var soVoiceFile: OSType { get }
var kSpeechGenerateTune: Int32 { get }
var kSpeechRelativePitch: Int32 { get }
var kSpeechRelativeDuration: Int32 { get }
var kSpeechShowSyllables: Int32 { get }
var kAudioUnitSubType_SpeechSynthesis: UInt32 { get }
var kAudioUnitProperty_Voice: UInt32 { get }
var kAudioUnitProperty_SpeechChannel: UInt32 { get }
struct SpeechChannelRecord {
  var data: (Int)
  init()
  init(data: (Int))
}
typealias SpeechChannel = UnsafeMutablePointer<SpeechChannelRecord>
struct VoiceSpec {
  var creator: OSType
  var id: OSType
  init()
  init(creator: OSType, id: OSType)
}
typealias VoiceSpecPtr = UnsafeMutablePointer<VoiceSpec>
var kNeuter: Int16 { get }
var kMale: Int16 { get }
var kFemale: Int16 { get }
struct VoiceDescription {
  var length: Int32
  var voice: VoiceSpec
  var version: Int32
  var name: Str63
  var comment: Str255
  var gender: Int16
  var age: Int16
  var script: Int16
  var language: Int16
  var region: Int16
  var reserved: (Int32, Int32, Int32, Int32)
  init()
  init(length: Int32, voice: VoiceSpec, version: Int32, name: Str63, comment: Str255, gender: Int16, age: Int16, script: Int16, language: Int16, region: Int16, reserved: (Int32, Int32, Int32, Int32))
}
struct VoiceFileInfo {
  var fileSpec: FSSpec
  var resID: Int16
  init()
  init(fileSpec: FSSpec, resID: Int16)
}
struct SpeechStatusInfo {
  var outputBusy: DarwinBoolean
  var outputPaused: DarwinBoolean
  var inputBytesLeft: Int
  var phonemeCode: Int16
  init()
  init(outputBusy: DarwinBoolean, outputPaused: DarwinBoolean, inputBytesLeft: Int, phonemeCode: Int16)
}
struct SpeechErrorInfo {
  var count: Int16
  var oldest: OSErr
  var oldPos: Int
  var newest: OSErr
  var newPos: Int
  init()
  init(count: Int16, oldest: OSErr, oldPos: Int, newest: OSErr, newPos: Int)
}
struct SpeechVersionInfo {
  var synthType: OSType
  var synthSubType: OSType
  var synthManufacturer: OSType
  var synthFlags: Int32
  var synthVersion: NumVersion
  init()
  init(synthType: OSType, synthSubType: OSType, synthManufacturer: OSType, synthFlags: Int32, synthVersion: NumVersion)
}
struct PhonemeInfo {
  var opcode: Int16
  var phStr: Str15
  var exampleStr: Str31
  var hiliteStart: Int16
  var hiliteEnd: Int16
  init()
  init(opcode: Int16, phStr: Str15, exampleStr: Str31, hiliteStart: Int16, hiliteEnd: Int16)
}
struct PhonemeDescriptor {
  var phonemeCount: Int16
  var thePhonemes: (PhonemeInfo)
  init()
  init(phonemeCount: Int16, thePhonemes: (PhonemeInfo))
}
struct SpeechXtndData {
  var synthCreator: OSType
  var synthData: (UInt8, UInt8)
  init()
  init(synthCreator: OSType, synthData: (UInt8, UInt8))
}
struct DelimiterInfo {
  var startDelimiter: (UInt8, UInt8)
  var endDelimiter: (UInt8, UInt8)
  init()
  init(startDelimiter: (UInt8, UInt8), endDelimiter: (UInt8, UInt8))
}
@available(OSX 10.5, *)
let kSpeechStatusProperty: CFString
@available(OSX 10.5, *)
let kSpeechErrorsProperty: CFString
@available(OSX 10.5, *)
let kSpeechInputModeProperty: CFString
@available(OSX 10.5, *)
let kSpeechCharacterModeProperty: CFString
@available(OSX 10.5, *)
let kSpeechNumberModeProperty: CFString
@available(OSX 10.5, *)
let kSpeechRateProperty: CFString
@available(OSX 10.5, *)
let kSpeechPitchBaseProperty: CFString
@available(OSX 10.5, *)
let kSpeechPitchModProperty: CFString
@available(OSX 10.5, *)
let kSpeechVolumeProperty: CFString
@available(OSX 10.5, *)
let kSpeechSynthesizerInfoProperty: CFString
@available(OSX 10.5, *)
let kSpeechRecentSyncProperty: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeSymbolsProperty: CFString
@available(OSX 10.5, *)
let kSpeechCurrentVoiceProperty: CFString
@available(OSX 10.5, *)
let kSpeechCommandDelimiterProperty: CFString
@available(OSX 10.5, *)
let kSpeechResetProperty: CFString
@available(OSX 10.5, *)
let kSpeechOutputToFileURLProperty: CFString
@available(OSX 10.6, *)
let kSpeechOutputToExtAudioFileProperty: CFString
@available(OSX 10.6, *)
let kSpeechOutputToAudioDeviceProperty: CFString
@available(OSX 10.9, *)
let kSpeechOutputToFileDescriptorProperty: CFString
@available(OSX 10.9, *)
let kSpeechAudioOutputFormatProperty: CFString
@available(OSX 10.9, *)
let kSpeechOutputChannelMapProperty: CFString
@available(OSX 10.5, *)
let kSpeechRefConProperty: CFString
@available(OSX 10.5, *)
let kSpeechTextDoneCallBack: CFString
@available(OSX 10.5, *)
let kSpeechSpeechDoneCallBack: CFString
@available(OSX 10.5, *)
let kSpeechSyncCallBack: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeCallBack: CFString
@available(OSX 10.5, *)
let kSpeechErrorCFCallBack: CFString
@available(OSX 10.5, *)
let kSpeechWordCFCallBack: CFString
@available(OSX 10.6, *)
let kSpeechPhonemeOptionsProperty: CFString
@available(OSX 10.6, *)
let kSpeechAudioUnitProperty: CFString
@available(OSX 10.6, *)
let kSpeechAudioGraphProperty: CFString
@available(OSX 10.9, *)
let kSpeechSynthExtensionProperty: CFString
@available(OSX 10.5, *)
let kSpeechModeText: CFString
@available(OSX 10.5, *)
let kSpeechModePhoneme: CFString
@available(OSX 10.6, *)
let kSpeechModeTune: CFString
@available(OSX 10.5, *)
let kSpeechModeNormal: CFString
@available(OSX 10.5, *)
let kSpeechModeLiteral: CFString
@available(OSX 10.5, *)
let kSpeechNoEndingProsody: CFString
@available(OSX 10.5, *)
let kSpeechNoSpeechInterrupt: CFString
@available(OSX 10.5, *)
let kSpeechPreflightThenPause: CFString
@available(OSX 10.5, *)
let kSpeechStatusOutputBusy: CFString
@available(OSX 10.5, *)
let kSpeechStatusOutputPaused: CFString
@available(OSX 10.5, *)
let kSpeechStatusNumberOfCharactersLeft: CFString
@available(OSX 10.5, *)
let kSpeechStatusPhonemeCode: CFString
@available(OSX 10.5, *)
let kSpeechErrorCount: CFString
@available(OSX 10.5, *)
let kSpeechErrorOldest: CFString
@available(OSX 10.5, *)
let kSpeechErrorOldestCharacterOffset: CFString
@available(OSX 10.5, *)
let kSpeechErrorNewest: CFString
@available(OSX 10.5, *)
let kSpeechErrorNewestCharacterOffset: CFString
@available(OSX 10.5, *)
let kSpeechSynthesizerInfoIdentifier: CFString
@available(OSX 10.5, *)
let kSpeechSynthesizerInfoManufacturer: CFString
@available(OSX 10.5, *)
let kSpeechSynthesizerInfoVersion: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeInfoOpcode: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeInfoSymbol: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeInfoExample: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeInfoHiliteStart: CFString
@available(OSX 10.5, *)
let kSpeechPhonemeInfoHiliteEnd: CFString
@available(OSX 10.5, *)
let kSpeechVoiceCreator: CFString
@available(OSX 10.5, *)
let kSpeechVoiceID: CFString
@available(OSX 10.5, *)
let kSpeechCommandPrefix: CFString
@available(OSX 10.5, *)
let kSpeechCommandSuffix: CFString
@available(OSX 10.5, *)
let kSpeechDictionaryLocaleIdentifier: CFString
@available(OSX 10.5, *)
let kSpeechDictionaryModificationDate: CFString
@available(OSX 10.5, *)
let kSpeechDictionaryPronunciations: CFString
@available(OSX 10.5, *)
let kSpeechDictionaryAbbreviations: CFString
@available(OSX 10.5, *)
let kSpeechDictionaryEntrySpelling: CFString
@available(OSX 10.5, *)
let kSpeechDictionaryEntryPhonemes: CFString
@available(OSX 10.5, *)
let kSpeechErrorCallbackSpokenString: CFString
@available(OSX 10.5, *)
let kSpeechErrorCallbackCharacterOffset: CFString
typealias SpeechTextDoneProcPtr = @convention(c) (SpeechChannel, SRefCon, UnsafeMutablePointer<UnsafePointer<Void>>, UnsafeMutablePointer<UInt>, UnsafeMutablePointer<Int32>) -> Void
typealias SpeechDoneProcPtr = @convention(c) (SpeechChannel, SRefCon) -> Void
typealias SpeechSyncProcPtr = @convention(c) (SpeechChannel, SRefCon, OSType) -> Void
typealias SpeechErrorProcPtr = @convention(c) (SpeechChannel, SRefCon, OSErr, Int) -> Void
typealias SpeechPhonemeProcPtr = @convention(c) (SpeechChannel, SRefCon, Int16) -> Void
typealias SpeechWordProcPtr = @convention(c) (SpeechChannel, SRefCon, UInt, UInt16) -> Void
typealias SpeechTextDoneUPP = SpeechTextDoneProcPtr
typealias SpeechDoneUPP = SpeechDoneProcPtr
typealias SpeechSyncUPP = SpeechSyncProcPtr
typealias SpeechErrorUPP = SpeechErrorProcPtr
typealias SpeechPhonemeUPP = SpeechPhonemeProcPtr
typealias SpeechWordUPP = SpeechWordProcPtr
typealias SpeechErrorCFProcPtr = @convention(c) (SpeechChannel, SRefCon, CFError) -> Void
typealias SpeechWordCFProcPtr = @convention(c) (SpeechChannel, SRefCon, CFString, CFRange) -> Void
func SpeechManagerVersion() -> NumVersion
func MakeVoiceSpec(creator: OSType, _ id: OSType, _ voice: UnsafeMutablePointer<VoiceSpec>) -> OSErr
func CountVoices(numVoices: UnsafeMutablePointer<Int16>) -> OSErr
func GetIndVoice(index: Int16, _ voice: UnsafeMutablePointer<VoiceSpec>) -> OSErr
func GetVoiceDescription(voice: UnsafePointer<VoiceSpec>, _ info: UnsafeMutablePointer<VoiceDescription>, _ infoLength: Int) -> OSErr
func GetVoiceInfo(voice: UnsafePointer<VoiceSpec>, _ selector: OSType, _ voiceInfo: UnsafeMutablePointer<Void>) -> OSErr
func NewSpeechChannel(voice: UnsafeMutablePointer<VoiceSpec>, _ chan: UnsafeMutablePointer<SpeechChannel>) -> OSErr
func DisposeSpeechChannel(chan: SpeechChannel) -> OSErr
func StopSpeech(chan: SpeechChannel) -> OSErr
func StopSpeechAt(chan: SpeechChannel, _ whereToStop: Int32) -> OSErr
func PauseSpeechAt(chan: SpeechChannel, _ whereToPause: Int32) -> OSErr
func ContinueSpeech(chan: SpeechChannel) -> OSErr
func SpeechBusy() -> Int16
func SpeechBusySystemWide() -> Int16
func SetSpeechRate(chan: SpeechChannel, _ rate: Fixed) -> OSErr
func GetSpeechRate(chan: SpeechChannel, _ rate: UnsafeMutablePointer<Fixed>) -> OSErr
func SetSpeechPitch(chan: SpeechChannel, _ pitch: Fixed) -> OSErr
func GetSpeechPitch(chan: SpeechChannel, _ pitch: UnsafeMutablePointer<Fixed>) -> OSErr
@available(OSX 10.5, *)
func SpeakCFString(chan: SpeechChannel, _ aString: CFString, _ options: CFDictionary?) -> OSErr
@available(OSX 10.5, *)
func UseSpeechDictionary(chan: SpeechChannel, _ speechDictionary: CFDictionary) -> OSErr
@available(OSX 10.5, *)
func CopyPhonemesFromText(chan: SpeechChannel, _ text: CFString, _ phonemes: UnsafeMutablePointer<CFString?>) -> OSErr
@available(OSX 10.5, *)
func CopySpeechProperty(chan: SpeechChannel, _ property: CFString, _ object: UnsafeMutablePointer<AnyObject?>) -> OSErr
@available(OSX 10.5, *)
func SetSpeechProperty(chan: SpeechChannel, _ property: CFString, _ object: AnyObject?) -> OSErr
@available(OSX 10.6, *)
func SpeechSynthesisRegisterModuleURL(url: CFURL) -> OSErr
@available(OSX 10.6, *)
func SpeechSynthesisUnregisterModuleURL(url: CFURL) -> OSErr
