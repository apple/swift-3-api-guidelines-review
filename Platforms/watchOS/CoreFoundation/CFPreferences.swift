
let kCFPreferencesAnyApplication: CFString!
let kCFPreferencesCurrentApplication: CFString!
let kCFPreferencesAnyHost: CFString!
let kCFPreferencesCurrentHost: CFString!
let kCFPreferencesAnyUser: CFString!
let kCFPreferencesCurrentUser: CFString!
func CFPreferencesCopyAppValue(key: CFString!, _ applicationID: CFString!) -> CFPropertyList!
func CFPreferencesGetAppBooleanValue(key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> Bool
func CFPreferencesGetAppIntegerValue(key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> CFIndex
func CFPreferencesSetAppValue(key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!)
func CFPreferencesAddSuitePreferencesToApp(applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesRemoveSuitePreferencesFromApp(applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesAppSynchronize(applicationID: CFString!) -> Bool
func CFPreferencesCopyValue(key: CFString!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFPropertyList!
func CFPreferencesCopyMultiple(keysToFetch: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFDictionary!
func CFPreferencesSetValue(key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSetMultiple(keysToSet: CFDictionary!, _ keysToRemove: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSynchronize(applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> Bool
@available(watchOS, introduced=2.0, deprecated=2.0)
func CFPreferencesCopyApplicationList(userName: CFString!, _ hostName: CFString!) -> CFArray!
func CFPreferencesCopyKeyList(applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFArray!
func CFPreferencesAppValueIsForced(key: CFString!, _ applicationID: CFString!) -> Bool
