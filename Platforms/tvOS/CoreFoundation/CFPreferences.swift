
let kCFPreferencesAnyApplication: CFString!
let kCFPreferencesCurrentApplication: CFString!
let kCFPreferencesAnyHost: CFString!
let kCFPreferencesCurrentHost: CFString!
let kCFPreferencesAnyUser: CFString!
let kCFPreferencesCurrentUser: CFString!
func CFPreferencesCopyAppValue(_ key: CFString!, _ applicationID: CFString!) -> CFPropertyList!
func CFPreferencesGetAppBooleanValue(_ key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> Bool
func CFPreferencesGetAppIntegerValue(_ key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> CFIndex
func CFPreferencesSetAppValue(_ key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!)
func CFPreferencesAddSuitePreferencesToApp(_ applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesRemoveSuitePreferencesFromApp(_ applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesAppSynchronize(_ applicationID: CFString!) -> Bool
func CFPreferencesCopyValue(_ key: CFString!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFPropertyList!
func CFPreferencesCopyMultiple(_ keysToFetch: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFDictionary!
func CFPreferencesSetValue(_ key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSetMultiple(_ keysToSet: CFDictionary!, _ keysToRemove: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSynchronize(_ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> Bool
func CFPreferencesCopyKeyList(_ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFArray!
func CFPreferencesAppValueIsForced(_ key: CFString!, _ applicationID: CFString!) -> Bool
