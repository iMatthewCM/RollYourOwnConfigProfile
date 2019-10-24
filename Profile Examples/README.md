#Profile Examples

Here is the before and after for both profiles used during my presentation.

FileVaultOriginal.mobileconfig is how the macOS Security & Privacy profile originally looked after being downloaded from the server, with its signing removed
FileVaultModified.mobileconfig is the result of removing all non-FileVault key/value pairs from the original profile

VoiceControlOriginal.mobileconfig is how the Mobile Device Single App Mode profile originally looked after being downloaded from the server, with its signing removed
VoiceControlModified.mobileconfig is the result of injecting additional key/value pairs into the profile to enable the Voice Control functionality in the Single App Mode payload for Mobile Devices prior to Jamf Pro 10.16
