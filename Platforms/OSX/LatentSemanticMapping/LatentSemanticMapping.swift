
var kLSMMapOutOfState: Int { get }
var kLSMMapNoSuchCategory: Int { get }
var kLSMMapWriteError: Int { get }
var kLSMMapBadPath: Int { get }
var kLSMMapBadCluster: Int { get }
var kLSMMapOverflow: Int { get }
class LSMMap {
}
@available(*, deprecated, renamed="LSMMap")
typealias LSMMapRef = LSMMap
func LSMMapGetTypeID() -> CFTypeID
class LSMText {
}
@available(*, deprecated, renamed="LSMText")
typealias LSMTextRef = LSMText
func LSMTextGetTypeID() -> CFTypeID
@available(*, deprecated, renamed="LSMResult")
typealias LSMResultRef = LSMResult
class LSMResult {
}
func LSMResultGetTypeID() -> CFTypeID
typealias LSMCategory = UInt32
func LSMMapCreate(alloc: CFAllocator!, _ flags: CFOptionFlags) -> Unmanaged<LSMMap>!
var kLSMMapPairs: Int { get }
var kLSMMapTriplets: Int { get }
var kLSMMapHashText: Int { get }
func LSMMapSetProperties(mapref: LSMMap!, _ properties: CFDictionary!)
func LSMMapGetProperties(mapref: LSMMap!) -> Unmanaged<CFDictionary>!
var kLSMAlgorithmKey: String { get }
var kLSMAlgorithmDense: String { get }
var kLSMAlgorithmSparse: String { get }
var kLSMPrecisionKey: String { get }
var kLSMPrecisionFloat: String { get }
var kLSMPrecisionDouble: String { get }
var kLSMDimensionKey: String { get }
var kLSMIterationsKey: String { get }
var kLSMSweepAgeKey: String { get }
var kLSMSweepCutoffKey: String { get }
func LSMMapStartTraining(mapref: LSMMap!) -> OSStatus
func LSMMapAddCategory(mapref: LSMMap!) -> LSMCategory
func LSMMapGetCategoryCount(mapref: LSMMap!) -> CFIndex
func LSMMapSetStopWords(mapref: LSMMap!, _ textref: LSMText!) -> OSStatus
func LSMMapAddText(mapref: LSMMap!, _ textref: LSMText!, _ category: LSMCategory) -> OSStatus
func LSMMapAddTextWithWeight(mapref: LSMMap!, _ textref: LSMText!, _ category: LSMCategory, _ weight: Float) -> OSStatus
func LSMMapCompile(mapref: LSMMap!) -> OSStatus
func LSMMapCreateClusters(alloc: CFAllocator!, _ mapref: LSMMap!, _ subset: CFArray!, _ numClusters: CFIndex, _ flags: CFOptionFlags) -> Unmanaged<CFArray>!
var kLSMClusterCategories: Int { get }
var kLSMClusterWords: Int { get }
var kLSMClusterTokens: Int { get }
var kLSMClusterKMeans: Int { get }
var kLSMClusterAgglomerative: Int { get }
func LSMMapApplyClusters(mapref: LSMMap!, _ clusters: CFArray!) -> OSStatus
func LSMResultCreate(alloc: CFAllocator!, _ mapref: LSMMap!, _ textref: LSMText!, _ numResults: CFIndex, _ flags: CFOptionFlags) -> Unmanaged<LSMResult>!
var kLSMResultBestWords: Int { get }
func LSMResultGetCount(result: LSMResult!) -> CFIndex
func LSMResultGetCategory(result: LSMResult!, _ n: CFIndex) -> LSMCategory
func LSMResultGetScore(result: LSMResult!, _ n: CFIndex) -> Float
func LSMResultCopyWord(result: LSMResult!, _ n: CFIndex) -> Unmanaged<CFString>!
func LSMResultCopyToken(mapref: LSMResult!, _ n: CFIndex) -> Unmanaged<CFData>!
func LSMResultCopyWordCluster(result: LSMResult!, _ n: CFIndex) -> Unmanaged<CFArray>!
func LSMResultCopyTokenCluster(mapref: LSMResult!, _ n: CFIndex) -> Unmanaged<CFArray>!
func LSMMapWriteToURL(mapref: LSMMap!, _ file: CFURL!, _ flags: CFOptionFlags) -> OSStatus
func LSMMapCreateFromURL(alloc: CFAllocator!, _ file: CFURL!, _ flags: CFOptionFlags) -> Unmanaged<LSMMap>!
var kLSMMapDiscardCounts: Int { get }
var kLSMMapLoadMutable: Int { get }
func LSMMapWriteToStream(mapref: LSMMap!, _ textref: LSMText!, _ stream: CFWriteStream!, _ options: CFOptionFlags) -> OSStatus
func LSMTextCreate(alloc: CFAllocator!, _ mapref: LSMMap!) -> Unmanaged<LSMText>!
func LSMTextAddWord(textref: LSMText!, _ word: CFString!) -> OSStatus
func LSMTextAddWords(textref: LSMText!, _ words: CFString!, _ locale: CFLocale!, _ flags: CFOptionFlags) -> OSStatus
var kLSMTextPreserveCase: Int { get }
var kLSMTextPreserveAcronyms: Int { get }
var kLSMTextApplySpamHeuristics: Int { get }
func LSMTextAddToken(textref: LSMText!, _ token: CFData!) -> OSStatus
