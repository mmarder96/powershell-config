#region enums
enum PowerToysConfigureEnsure {
    Absent
    Present
}

enum AwakeMode {
    PASSIVE = 1
    INDEFINITE
    TIMED
    EXPIRABLE
}

enum ColorPickerActivationAction {
    OpenEditor = 1
    OpenColorPickerAndThenEditor
    OpenOnlyColorPicker
}

enum HostsAdditionalLinesPosition {
    Top = 1
    Bottom
}

enum HostsEncoding {
    Utf8 = 1
    Utf8Bom
}

enum PowerAccentActivationKey {
    LeftRightArrow = 1
    Space
    Both
}

enum Theme {
    System = 1
    Light
    Dark
    HighContrastOne
    HighContrastTwo
    HighContrastBlack
    HighContrastWhite
}

enum StartupPosition {
    Cursor = 1
    PrimaryMonitor
    Focus
}

enum SortByProperty {
    LastLaunched = 1
    Created
    Name
}
#endregion enums

#region DscResources
class AdvancedPaste {
    [DscProperty()] [Nullable[bool]]
    $IsAdvancedAIEnabled = $null

    [DscProperty()] [Nullable[bool]]
    $ShowCustomPreview = $null

    [DscProperty()] [Nullable[bool]]
    $CloseAfterLosingFocus = $null

    [DscProperty()] [string]
    $AdvancedPasteUIShortcut = $null

    [DscProperty()] [string]
    $PasteAsPlainTextShortcut = $null

    [DscProperty()] [string]
    $PasteAsMarkdownShortcut = $null

    [DscProperty()] [string]
    $PasteAsJsonShortcut = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.IsAdvancedAIEnabled -ne $null) {
            $Changes.Value += "set AdvancedPaste.IsAdvancedAIEnabled `"$($this.IsAdvancedAIEnabled)`""
        }

        if ($this.ShowCustomPreview -ne $null) {
            $Changes.Value += "set AdvancedPaste.ShowCustomPreview `"$($this.ShowCustomPreview)`""
        }

        if ($this.CloseAfterLosingFocus -ne $null) {
            $Changes.Value += "set AdvancedPaste.CloseAfterLosingFocus `"$($this.CloseAfterLosingFocus)`""
        }

        if ($this.AdvancedPasteUIShortcut -notlike '') {
            $Changes.Value += "set AdvancedPaste.AdvancedPasteUIShortcut `"$($this.AdvancedPasteUIShortcut)`""
        }

        if ($this.PasteAsPlainTextShortcut -notlike '') {
            $Changes.Value += "set AdvancedPaste.PasteAsPlainTextShortcut `"$($this.PasteAsPlainTextShortcut)`""
        }

        if ($this.PasteAsMarkdownShortcut -notlike '') {
            $Changes.Value += "set AdvancedPaste.PasteAsMarkdownShortcut `"$($this.PasteAsMarkdownShortcut)`""
        }

        if ($this.PasteAsJsonShortcut -notlike '') {
            $Changes.Value += "set AdvancedPaste.PasteAsJsonShortcut `"$($this.PasteAsJsonShortcut)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.AdvancedPaste `"$($this.Enabled)`""
        }


    }
}
class AlwaysOnTop {
    [DscProperty()] [string]
    $Hotkey = $null

    [DscProperty()] [string]
    $FrameEnabled = $null

    [DscProperty()] [Nullable[int]]
    $FrameThickness = $null

    [DscProperty()] [string]
    $FrameColor = $null

    [DscProperty()] [Nullable[int]]
    $FrameOpacity = $null

    [DscProperty()] [string]
    $FrameAccentColor = $null

    [DscProperty()] [string]
    $SoundEnabled = $null

    [DscProperty()] [string]
    $DoNotActivateOnGameMode = $null

    [DscProperty()] [string]
    $ExcludedApps = $null

    [DscProperty()] [string]
    $RoundCornersEnabled = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.Hotkey -notlike '') {
            $Changes.Value += "set AlwaysOnTop.Hotkey `"$($this.Hotkey)`""
        }

        if ($this.FrameEnabled -notlike '') {
            $Changes.Value += "set AlwaysOnTop.FrameEnabled `"$($this.FrameEnabled)`""
        }

        if ($this.FrameThickness -ne $null) {
            $Changes.Value += "set AlwaysOnTop.FrameThickness `"$($this.FrameThickness)`""
        }

        if ($this.FrameColor -notlike '') {
            $Changes.Value += "set AlwaysOnTop.FrameColor `"$($this.FrameColor)`""
        }

        if ($this.FrameOpacity -ne $null) {
            $Changes.Value += "set AlwaysOnTop.FrameOpacity `"$($this.FrameOpacity)`""
        }

        if ($this.FrameAccentColor -notlike '') {
            $Changes.Value += "set AlwaysOnTop.FrameAccentColor `"$($this.FrameAccentColor)`""
        }

        if ($this.SoundEnabled -notlike '') {
            $Changes.Value += "set AlwaysOnTop.SoundEnabled `"$($this.SoundEnabled)`""
        }

        if ($this.DoNotActivateOnGameMode -notlike '') {
            $Changes.Value += "set AlwaysOnTop.DoNotActivateOnGameMode `"$($this.DoNotActivateOnGameMode)`""
        }

        if ($this.ExcludedApps -notlike '') {
            $Changes.Value += "set AlwaysOnTop.ExcludedApps `"$($this.ExcludedApps)`""
        }

        if ($this.RoundCornersEnabled -notlike '') {
            $Changes.Value += "set AlwaysOnTop.RoundCornersEnabled `"$($this.RoundCornersEnabled)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.AlwaysOnTop `"$($this.Enabled)`""
        }


    }
}
class Awake {
    [DscProperty()] [Nullable[bool]]
    $KeepDisplayOn = $null

    [DscProperty()] [AwakeMode]
    $Mode 

    [DscProperty()] [Nullable[int]]
    $IntervalHours = $null

    [DscProperty()] [Nullable[int]]
    $IntervalMinutes = $null

    [DscProperty()] [string]
    $ExpirationDateTime = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.KeepDisplayOn -ne $null) {
            $Changes.Value += "set Awake.KeepDisplayOn `"$($this.KeepDisplayOn)`""
        }

        if ($this.Mode -ne 0) {
            $Changes.Value += "set Awake.Mode `"$($this.Mode)`""
        }

        if ($this.IntervalHours -ne $null) {
            $Changes.Value += "set Awake.IntervalHours `"$($this.IntervalHours)`""
        }

        if ($this.IntervalMinutes -ne $null) {
            $Changes.Value += "set Awake.IntervalMinutes `"$($this.IntervalMinutes)`""
        }

        if ($this.ExpirationDateTime -notlike '') {
            $Changes.Value += "set Awake.ExpirationDateTime `"$($this.ExpirationDateTime)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.Awake `"$($this.Enabled)`""
        }


    }
}
class ColorPicker {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $CopiedColorRepresentation = $null

    [DscProperty()] [ColorPickerActivationAction]
    $ActivationAction 

    [DscProperty()] [Nullable[bool]]
    $ShowColorName = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set ColorPicker.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.CopiedColorRepresentation -notlike '') {
            $Changes.Value += "set ColorPicker.CopiedColorRepresentation `"$($this.CopiedColorRepresentation)`""
        }

        if ($this.ActivationAction -ne 0) {
            $Changes.Value += "set ColorPicker.ActivationAction `"$($this.ActivationAction)`""
        }

        if ($this.ShowColorName -ne $null) {
            $Changes.Value += "set ColorPicker.ShowColorName `"$($this.ShowColorName)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.ColorPicker `"$($this.Enabled)`""
        }


    }
}
class CropAndLock {
    [DscProperty()] [string]
    $ReparentHotkey = $null

    [DscProperty()] [string]
    $ThumbnailHotkey = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ReparentHotkey -notlike '') {
            $Changes.Value += "set CropAndLock.ReparentHotkey `"$($this.ReparentHotkey)`""
        }

        if ($this.ThumbnailHotkey -notlike '') {
            $Changes.Value += "set CropAndLock.ThumbnailHotkey `"$($this.ThumbnailHotkey)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.CropAndLock `"$($this.Enabled)`""
        }


    }
}
class EnvironmentVariables {
    [DscProperty()] [Nullable[bool]]
    $LaunchAdministrator = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.LaunchAdministrator -ne $null) {
            $Changes.Value += "set EnvironmentVariables.LaunchAdministrator `"$($this.LaunchAdministrator)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.EnvironmentVariables `"$($this.Enabled)`""
        }


    }
}
class FancyZones {
    [DscProperty()] [string]
    $FancyzonesShiftDrag = $null

    [DscProperty()] [string]
    $FancyzonesMouseSwitch = $null

    [DscProperty()] [string]
    $FancyzonesMouseMiddleClickSpanningMultipleZones = $null

    [DscProperty()] [string]
    $FancyzonesOverrideSnapHotkeys = $null

    [DscProperty()] [string]
    $FancyzonesMoveWindowsAcrossMonitors = $null

    [DscProperty()] [string]
    $FancyzonesMoveWindowsBasedOnPosition = $null

    [DscProperty()] [Nullable[int]]
    $FancyzonesOverlappingZonesAlgorithm = $null

    [DscProperty()] [string]
    $FancyzonesDisplayOrWorkAreaChangeMoveWindows = $null

    [DscProperty()] [string]
    $FancyzonesZoneSetChangeMoveWindows = $null

    [DscProperty()] [string]
    $FancyzonesAppLastZoneMoveWindows = $null

    [DscProperty()] [string]
    $FancyzonesOpenWindowOnActiveMonitor = $null

    [DscProperty()] [string]
    $FancyzonesRestoreSize = $null

    [DscProperty()] [string]
    $FancyzonesQuickLayoutSwitch = $null

    [DscProperty()] [string]
    $FancyzonesFlashZonesOnQuickSwitch = $null

    [DscProperty()] [string]
    $UseCursorposEditorStartupscreen = $null

    [DscProperty()] [string]
    $FancyzonesShowOnAllMonitors = $null

    [DscProperty()] [string]
    $FancyzonesSpanZonesAcrossMonitors = $null

    [DscProperty()] [string]
    $FancyzonesMakeDraggedWindowTransparent = $null

    [DscProperty()] [string]
    $FancyzonesAllowChildWindowSnap = $null

    [DscProperty()] [string]
    $FancyzonesDisableRoundCornersOnSnap = $null

    [DscProperty()] [string]
    $FancyzonesZoneHighlightColor = $null

    [DscProperty()] [Nullable[int]]
    $FancyzonesHighlightOpacity = $null

    [DscProperty()] [string]
    $FancyzonesEditorHotkey = $null

    [DscProperty()] [string]
    $FancyzonesWindowSwitching = $null

    [DscProperty()] [string]
    $FancyzonesNextTabHotkey = $null

    [DscProperty()] [string]
    $FancyzonesPrevTabHotkey = $null

    [DscProperty()] [string]
    $FancyzonesExcludedApps = $null

    [DscProperty()] [string]
    $FancyzonesBorderColor = $null

    [DscProperty()] [string]
    $FancyzonesInActiveColor = $null

    [DscProperty()] [string]
    $FancyzonesNumberColor = $null

    [DscProperty()] [string]
    $FancyzonesSystemTheme = $null

    [DscProperty()] [string]
    $FancyzonesShowZoneNumber = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.FancyzonesShiftDrag -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesShiftDrag `"$($this.FancyzonesShiftDrag)`""
        }

        if ($this.FancyzonesMouseSwitch -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesMouseSwitch `"$($this.FancyzonesMouseSwitch)`""
        }

        if ($this.FancyzonesMouseMiddleClickSpanningMultipleZones -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesMouseMiddleClickSpanningMultipleZones `"$($this.FancyzonesMouseMiddleClickSpanningMultipleZones)`""
        }

        if ($this.FancyzonesOverrideSnapHotkeys -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesOverrideSnapHotkeys `"$($this.FancyzonesOverrideSnapHotkeys)`""
        }

        if ($this.FancyzonesMoveWindowsAcrossMonitors -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesMoveWindowsAcrossMonitors `"$($this.FancyzonesMoveWindowsAcrossMonitors)`""
        }

        if ($this.FancyzonesMoveWindowsBasedOnPosition -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesMoveWindowsBasedOnPosition `"$($this.FancyzonesMoveWindowsBasedOnPosition)`""
        }

        if ($this.FancyzonesOverlappingZonesAlgorithm -ne $null) {
            $Changes.Value += "set FancyZones.FancyzonesOverlappingZonesAlgorithm `"$($this.FancyzonesOverlappingZonesAlgorithm)`""
        }

        if ($this.FancyzonesDisplayOrWorkAreaChangeMoveWindows -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesDisplayOrWorkAreaChangeMoveWindows `"$($this.FancyzonesDisplayOrWorkAreaChangeMoveWindows)`""
        }

        if ($this.FancyzonesZoneSetChangeMoveWindows -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesZoneSetChangeMoveWindows `"$($this.FancyzonesZoneSetChangeMoveWindows)`""
        }

        if ($this.FancyzonesAppLastZoneMoveWindows -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesAppLastZoneMoveWindows `"$($this.FancyzonesAppLastZoneMoveWindows)`""
        }

        if ($this.FancyzonesOpenWindowOnActiveMonitor -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesOpenWindowOnActiveMonitor `"$($this.FancyzonesOpenWindowOnActiveMonitor)`""
        }

        if ($this.FancyzonesRestoreSize -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesRestoreSize `"$($this.FancyzonesRestoreSize)`""
        }

        if ($this.FancyzonesQuickLayoutSwitch -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesQuickLayoutSwitch `"$($this.FancyzonesQuickLayoutSwitch)`""
        }

        if ($this.FancyzonesFlashZonesOnQuickSwitch -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesFlashZonesOnQuickSwitch `"$($this.FancyzonesFlashZonesOnQuickSwitch)`""
        }

        if ($this.UseCursorposEditorStartupscreen -notlike '') {
            $Changes.Value += "set FancyZones.UseCursorposEditorStartupscreen `"$($this.UseCursorposEditorStartupscreen)`""
        }

        if ($this.FancyzonesShowOnAllMonitors -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesShowOnAllMonitors `"$($this.FancyzonesShowOnAllMonitors)`""
        }

        if ($this.FancyzonesSpanZonesAcrossMonitors -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesSpanZonesAcrossMonitors `"$($this.FancyzonesSpanZonesAcrossMonitors)`""
        }

        if ($this.FancyzonesMakeDraggedWindowTransparent -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesMakeDraggedWindowTransparent `"$($this.FancyzonesMakeDraggedWindowTransparent)`""
        }

        if ($this.FancyzonesAllowChildWindowSnap -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesAllowChildWindowSnap `"$($this.FancyzonesAllowChildWindowSnap)`""
        }

        if ($this.FancyzonesDisableRoundCornersOnSnap -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesDisableRoundCornersOnSnap `"$($this.FancyzonesDisableRoundCornersOnSnap)`""
        }

        if ($this.FancyzonesZoneHighlightColor -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesZoneHighlightColor `"$($this.FancyzonesZoneHighlightColor)`""
        }

        if ($this.FancyzonesHighlightOpacity -ne $null) {
            $Changes.Value += "set FancyZones.FancyzonesHighlightOpacity `"$($this.FancyzonesHighlightOpacity)`""
        }

        if ($this.FancyzonesEditorHotkey -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesEditorHotkey `"$($this.FancyzonesEditorHotkey)`""
        }

        if ($this.FancyzonesWindowSwitching -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesWindowSwitching `"$($this.FancyzonesWindowSwitching)`""
        }

        if ($this.FancyzonesNextTabHotkey -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesNextTabHotkey `"$($this.FancyzonesNextTabHotkey)`""
        }

        if ($this.FancyzonesPrevTabHotkey -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesPrevTabHotkey `"$($this.FancyzonesPrevTabHotkey)`""
        }

        if ($this.FancyzonesExcludedApps -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesExcludedApps `"$($this.FancyzonesExcludedApps)`""
        }

        if ($this.FancyzonesBorderColor -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesBorderColor `"$($this.FancyzonesBorderColor)`""
        }

        if ($this.FancyzonesInActiveColor -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesInActiveColor `"$($this.FancyzonesInActiveColor)`""
        }

        if ($this.FancyzonesNumberColor -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesNumberColor `"$($this.FancyzonesNumberColor)`""
        }

        if ($this.FancyzonesSystemTheme -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesSystemTheme `"$($this.FancyzonesSystemTheme)`""
        }

        if ($this.FancyzonesShowZoneNumber -notlike '') {
            $Changes.Value += "set FancyZones.FancyzonesShowZoneNumber `"$($this.FancyzonesShowZoneNumber)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.FancyZones `"$($this.Enabled)`""
        }


    }
}
class FileLocksmith {
    [DscProperty()] [string]
    $ExtendedContextMenuOnly = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ExtendedContextMenuOnly -notlike '') {
            $Changes.Value += "set FileLocksmith.ExtendedContextMenuOnly `"$($this.ExtendedContextMenuOnly)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.FileLocksmith `"$($this.Enabled)`""
        }


    }
}
class FindMyMouse {
    [DscProperty()] [Nullable[int]]
    $ActivationMethod = $null

    [DscProperty()] [string]
    $IncludeWinKey = $null

    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $DoNotActivateOnGameMode = $null

    [DscProperty()] [string]
    $BackgroundColor = $null

    [DscProperty()] [string]
    $SpotlightColor = $null

    [DscProperty()] [Nullable[int]]
    $OverlayOpacity = $null

    [DscProperty()] [Nullable[int]]
    $SpotlightRadius = $null

    [DscProperty()] [Nullable[int]]
    $AnimationDurationMs = $null

    [DscProperty()] [Nullable[int]]
    $SpotlightInitialZoom = $null

    [DscProperty()] [string]
    $ExcludedApps = $null

    [DscProperty()] [Nullable[int]]
    $ShakingMinimumDistance = $null

    [DscProperty()] [Nullable[int]]
    $ShakingIntervalMs = $null

    [DscProperty()] [Nullable[int]]
    $ShakingFactor = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationMethod -ne $null) {
            $Changes.Value += "set FindMyMouse.ActivationMethod `"$($this.ActivationMethod)`""
        }

        if ($this.IncludeWinKey -notlike '') {
            $Changes.Value += "set FindMyMouse.IncludeWinKey `"$($this.IncludeWinKey)`""
        }

        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set FindMyMouse.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.DoNotActivateOnGameMode -notlike '') {
            $Changes.Value += "set FindMyMouse.DoNotActivateOnGameMode `"$($this.DoNotActivateOnGameMode)`""
        }

        if ($this.BackgroundColor -notlike '') {
            $Changes.Value += "set FindMyMouse.BackgroundColor `"$($this.BackgroundColor)`""
        }

        if ($this.SpotlightColor -notlike '') {
            $Changes.Value += "set FindMyMouse.SpotlightColor `"$($this.SpotlightColor)`""
        }

        if ($this.OverlayOpacity -ne $null) {
            $Changes.Value += "set FindMyMouse.OverlayOpacity `"$($this.OverlayOpacity)`""
        }

        if ($this.SpotlightRadius -ne $null) {
            $Changes.Value += "set FindMyMouse.SpotlightRadius `"$($this.SpotlightRadius)`""
        }

        if ($this.AnimationDurationMs -ne $null) {
            $Changes.Value += "set FindMyMouse.AnimationDurationMs `"$($this.AnimationDurationMs)`""
        }

        if ($this.SpotlightInitialZoom -ne $null) {
            $Changes.Value += "set FindMyMouse.SpotlightInitialZoom `"$($this.SpotlightInitialZoom)`""
        }

        if ($this.ExcludedApps -notlike '') {
            $Changes.Value += "set FindMyMouse.ExcludedApps `"$($this.ExcludedApps)`""
        }

        if ($this.ShakingMinimumDistance -ne $null) {
            $Changes.Value += "set FindMyMouse.ShakingMinimumDistance `"$($this.ShakingMinimumDistance)`""
        }

        if ($this.ShakingIntervalMs -ne $null) {
            $Changes.Value += "set FindMyMouse.ShakingIntervalMs `"$($this.ShakingIntervalMs)`""
        }

        if ($this.ShakingFactor -ne $null) {
            $Changes.Value += "set FindMyMouse.ShakingFactor `"$($this.ShakingFactor)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.FindMyMouse `"$($this.Enabled)`""
        }


    }
}
class Hosts {
    [DscProperty()] [Nullable[bool]]
    $ShowStartupWarning = $null

    [DscProperty()] [Nullable[bool]]
    $LaunchAdministrator = $null

    [DscProperty()] [Nullable[bool]]
    $LoopbackDuplicates = $null

    [DscProperty()] [HostsAdditionalLinesPosition]
    $AdditionalLinesPosition 

    [DscProperty()] [HostsEncoding]
    $Encoding 

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ShowStartupWarning -ne $null) {
            $Changes.Value += "set Hosts.ShowStartupWarning `"$($this.ShowStartupWarning)`""
        }

        if ($this.LaunchAdministrator -ne $null) {
            $Changes.Value += "set Hosts.LaunchAdministrator `"$($this.LaunchAdministrator)`""
        }

        if ($this.LoopbackDuplicates -ne $null) {
            $Changes.Value += "set Hosts.LoopbackDuplicates `"$($this.LoopbackDuplicates)`""
        }

        if ($this.AdditionalLinesPosition -ne 0) {
            $Changes.Value += "set Hosts.AdditionalLinesPosition `"$($this.AdditionalLinesPosition)`""
        }

        if ($this.Encoding -ne 0) {
            $Changes.Value += "set Hosts.Encoding `"$($this.Encoding)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.Hosts `"$($this.Enabled)`""
        }


    }
}
class ImageResizer {
    [DscProperty()] [Nullable[int]]
    $ImageresizerSelectedSizeIndex = $null

    [DscProperty()] [string]
    $ImageresizerShrinkOnly = $null

    [DscProperty()] [string]
    $ImageresizerReplace = $null

    [DscProperty()] [string]
    $ImageresizerIgnoreOrientation = $null

    [DscProperty()] [Nullable[int]]
    $ImageresizerJpegQualityLevel = $null

    [DscProperty()] [Nullable[int]]
    $ImageresizerPngInterlaceOption = $null

    [DscProperty()] [Nullable[int]]
    $ImageresizerTiffCompressOption = $null

    [DscProperty()] [string]
    $ImageresizerFileName = $null

    [DscProperty()] [string]
    $ImageresizerKeepDateModified = $null

    [DscProperty()] [string]
    $ImageresizerFallbackEncoder = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null

    [DscProperty()] [Hashtable[]]
    $ImageresizerSizes = @()

    ApplyChanges([ref]$Changes) {
        if ($this.ImageresizerSelectedSizeIndex -ne $null) {
            $Changes.Value += "set ImageResizer.ImageresizerSelectedSizeIndex `"$($this.ImageresizerSelectedSizeIndex)`""
        }

        if ($this.ImageresizerShrinkOnly -notlike '') {
            $Changes.Value += "set ImageResizer.ImageresizerShrinkOnly `"$($this.ImageresizerShrinkOnly)`""
        }

        if ($this.ImageresizerReplace -notlike '') {
            $Changes.Value += "set ImageResizer.ImageresizerReplace `"$($this.ImageresizerReplace)`""
        }

        if ($this.ImageresizerIgnoreOrientation -notlike '') {
            $Changes.Value += "set ImageResizer.ImageresizerIgnoreOrientation `"$($this.ImageresizerIgnoreOrientation)`""
        }

        if ($this.ImageresizerJpegQualityLevel -ne $null) {
            $Changes.Value += "set ImageResizer.ImageresizerJpegQualityLevel `"$($this.ImageresizerJpegQualityLevel)`""
        }

        if ($this.ImageresizerPngInterlaceOption -ne $null) {
            $Changes.Value += "set ImageResizer.ImageresizerPngInterlaceOption `"$($this.ImageresizerPngInterlaceOption)`""
        }

        if ($this.ImageresizerTiffCompressOption -ne $null) {
            $Changes.Value += "set ImageResizer.ImageresizerTiffCompressOption `"$($this.ImageresizerTiffCompressOption)`""
        }

        if ($this.ImageresizerFileName -notlike '') {
            $Changes.Value += "set ImageResizer.ImageresizerFileName `"$($this.ImageresizerFileName)`""
        }

        if ($this.ImageresizerKeepDateModified -notlike '') {
            $Changes.Value += "set ImageResizer.ImageresizerKeepDateModified `"$($this.ImageresizerKeepDateModified)`""
        }

        if ($this.ImageresizerFallbackEncoder -notlike '') {
            $Changes.Value += "set ImageResizer.ImageresizerFallbackEncoder `"$($this.ImageresizerFallbackEncoder)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.ImageResizer `"$($this.Enabled)`""
        }

        if ($this.ImageresizerSizes.Count -gt 0) {
            $AdditionalPropertiesTmpPath = [System.IO.Path]::GetTempFileName()
            $this.ImageresizerSizes | ConvertTo-Json | Set-Content -Path $AdditionalPropertiesTmpPath
            $Changes.Value += "setAdditional ImageResizer `"$AdditionalPropertiesTmpPath`""
        }
    }
}
class KeyboardManager {
    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.KeyboardManager `"$($this.Enabled)`""
        }


    }
}
class MeasureTool {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [Nullable[bool]]
    $ContinuousCapture = $null

    [DscProperty()] [Nullable[bool]]
    $DrawFeetOnCross = $null

    [DscProperty()] [Nullable[bool]]
    $PerColorChannelEdgeDetection = $null

    [DscProperty()] [Nullable[int]]
    $UnitsOfMeasure = $null

    [DscProperty()] [Nullable[int]]
    $PixelTolerance = $null

    [DscProperty()] [string]
    $MeasureCrossColor = $null

    [DscProperty()] [Nullable[int]]
    $DefaultMeasureStyle = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set MeasureTool.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.ContinuousCapture -ne $null) {
            $Changes.Value += "set MeasureTool.ContinuousCapture `"$($this.ContinuousCapture)`""
        }

        if ($this.DrawFeetOnCross -ne $null) {
            $Changes.Value += "set MeasureTool.DrawFeetOnCross `"$($this.DrawFeetOnCross)`""
        }

        if ($this.PerColorChannelEdgeDetection -ne $null) {
            $Changes.Value += "set MeasureTool.PerColorChannelEdgeDetection `"$($this.PerColorChannelEdgeDetection)`""
        }

        if ($this.UnitsOfMeasure -ne $null) {
            $Changes.Value += "set MeasureTool.UnitsOfMeasure `"$($this.UnitsOfMeasure)`""
        }

        if ($this.PixelTolerance -ne $null) {
            $Changes.Value += "set MeasureTool.PixelTolerance `"$($this.PixelTolerance)`""
        }

        if ($this.MeasureCrossColor -notlike '') {
            $Changes.Value += "set MeasureTool.MeasureCrossColor `"$($this.MeasureCrossColor)`""
        }

        if ($this.DefaultMeasureStyle -ne $null) {
            $Changes.Value += "set MeasureTool.DefaultMeasureStyle `"$($this.DefaultMeasureStyle)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.MeasureTool `"$($this.Enabled)`""
        }


    }
}
class MouseHighlighter {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $LeftButtonClickColor = $null

    [DscProperty()] [string]
    $RightButtonClickColor = $null

    [DscProperty()] [string]
    $AlwaysColor = $null

    [DscProperty()] [Nullable[int]]
    $HighlightRadius = $null

    [DscProperty()] [Nullable[int]]
    $HighlightFadeDelayMs = $null

    [DscProperty()] [Nullable[int]]
    $HighlightFadeDurationMs = $null

    [DscProperty()] [string]
    $AutoActivate = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set MouseHighlighter.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.LeftButtonClickColor -notlike '') {
            $Changes.Value += "set MouseHighlighter.LeftButtonClickColor `"$($this.LeftButtonClickColor)`""
        }

        if ($this.RightButtonClickColor -notlike '') {
            $Changes.Value += "set MouseHighlighter.RightButtonClickColor `"$($this.RightButtonClickColor)`""
        }

        if ($this.AlwaysColor -notlike '') {
            $Changes.Value += "set MouseHighlighter.AlwaysColor `"$($this.AlwaysColor)`""
        }

        if ($this.HighlightRadius -ne $null) {
            $Changes.Value += "set MouseHighlighter.HighlightRadius `"$($this.HighlightRadius)`""
        }

        if ($this.HighlightFadeDelayMs -ne $null) {
            $Changes.Value += "set MouseHighlighter.HighlightFadeDelayMs `"$($this.HighlightFadeDelayMs)`""
        }

        if ($this.HighlightFadeDurationMs -ne $null) {
            $Changes.Value += "set MouseHighlighter.HighlightFadeDurationMs `"$($this.HighlightFadeDurationMs)`""
        }

        if ($this.AutoActivate -notlike '') {
            $Changes.Value += "set MouseHighlighter.AutoActivate `"$($this.AutoActivate)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.MouseHighlighter `"$($this.Enabled)`""
        }


    }
}
class MouseJump {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $ThumbnailSize = $null

    [DscProperty()] [string]
    $PreviewType = $null

    [DscProperty()] [string]
    $BackgroundColor1 = $null

    [DscProperty()] [string]
    $BackgroundColor2 = $null

    [DscProperty()] [Nullable[int]]
    $BorderThickness = $null

    [DscProperty()] [string]
    $BorderColor = $null

    [DscProperty()] [Nullable[int]]
    $Border3dDepth = $null

    [DscProperty()] [Nullable[int]]
    $BorderPadding = $null

    [DscProperty()] [Nullable[int]]
    $BezelThickness = $null

    [DscProperty()] [string]
    $BezelColor = $null

    [DscProperty()] [Nullable[int]]
    $Bezel3dDepth = $null

    [DscProperty()] [Nullable[int]]
    $ScreenMargin = $null

    [DscProperty()] [string]
    $ScreenColor1 = $null

    [DscProperty()] [string]
    $ScreenColor2 = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set MouseJump.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.ThumbnailSize -notlike '') {
            $Changes.Value += "set MouseJump.ThumbnailSize `"$($this.ThumbnailSize)`""
        }

        if ($this.PreviewType -notlike '') {
            $Changes.Value += "set MouseJump.PreviewType `"$($this.PreviewType)`""
        }

        if ($this.BackgroundColor1 -notlike '') {
            $Changes.Value += "set MouseJump.BackgroundColor1 `"$($this.BackgroundColor1)`""
        }

        if ($this.BackgroundColor2 -notlike '') {
            $Changes.Value += "set MouseJump.BackgroundColor2 `"$($this.BackgroundColor2)`""
        }

        if ($this.BorderThickness -ne $null) {
            $Changes.Value += "set MouseJump.BorderThickness `"$($this.BorderThickness)`""
        }

        if ($this.BorderColor -notlike '') {
            $Changes.Value += "set MouseJump.BorderColor `"$($this.BorderColor)`""
        }

        if ($this.Border3dDepth -ne $null) {
            $Changes.Value += "set MouseJump.Border3dDepth `"$($this.Border3dDepth)`""
        }

        if ($this.BorderPadding -ne $null) {
            $Changes.Value += "set MouseJump.BorderPadding `"$($this.BorderPadding)`""
        }

        if ($this.BezelThickness -ne $null) {
            $Changes.Value += "set MouseJump.BezelThickness `"$($this.BezelThickness)`""
        }

        if ($this.BezelColor -notlike '') {
            $Changes.Value += "set MouseJump.BezelColor `"$($this.BezelColor)`""
        }

        if ($this.Bezel3dDepth -ne $null) {
            $Changes.Value += "set MouseJump.Bezel3dDepth `"$($this.Bezel3dDepth)`""
        }

        if ($this.ScreenMargin -ne $null) {
            $Changes.Value += "set MouseJump.ScreenMargin `"$($this.ScreenMargin)`""
        }

        if ($this.ScreenColor1 -notlike '') {
            $Changes.Value += "set MouseJump.ScreenColor1 `"$($this.ScreenColor1)`""
        }

        if ($this.ScreenColor2 -notlike '') {
            $Changes.Value += "set MouseJump.ScreenColor2 `"$($this.ScreenColor2)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.MouseJump `"$($this.Enabled)`""
        }


    }
}
class MousePointerCrosshairs {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $CrosshairsColor = $null

    [DscProperty()] [Nullable[int]]
    $CrosshairsOpacity = $null

    [DscProperty()] [Nullable[int]]
    $CrosshairsRadius = $null

    [DscProperty()] [Nullable[int]]
    $CrosshairsThickness = $null

    [DscProperty()] [string]
    $CrosshairsBorderColor = $null

    [DscProperty()] [Nullable[int]]
    $CrosshairsBorderSize = $null

    [DscProperty()] [string]
    $CrosshairsAutoHide = $null

    [DscProperty()] [string]
    $CrosshairsIsFixedLengthEnabled = $null

    [DscProperty()] [Nullable[int]]
    $CrosshairsFixedLength = $null

    [DscProperty()] [string]
    $AutoActivate = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set MousePointerCrosshairs.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.CrosshairsColor -notlike '') {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsColor `"$($this.CrosshairsColor)`""
        }

        if ($this.CrosshairsOpacity -ne $null) {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsOpacity `"$($this.CrosshairsOpacity)`""
        }

        if ($this.CrosshairsRadius -ne $null) {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsRadius `"$($this.CrosshairsRadius)`""
        }

        if ($this.CrosshairsThickness -ne $null) {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsThickness `"$($this.CrosshairsThickness)`""
        }

        if ($this.CrosshairsBorderColor -notlike '') {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsBorderColor `"$($this.CrosshairsBorderColor)`""
        }

        if ($this.CrosshairsBorderSize -ne $null) {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsBorderSize `"$($this.CrosshairsBorderSize)`""
        }

        if ($this.CrosshairsAutoHide -notlike '') {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsAutoHide `"$($this.CrosshairsAutoHide)`""
        }

        if ($this.CrosshairsIsFixedLengthEnabled -notlike '') {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsIsFixedLengthEnabled `"$($this.CrosshairsIsFixedLengthEnabled)`""
        }

        if ($this.CrosshairsFixedLength -ne $null) {
            $Changes.Value += "set MousePointerCrosshairs.CrosshairsFixedLength `"$($this.CrosshairsFixedLength)`""
        }

        if ($this.AutoActivate -notlike '') {
            $Changes.Value += "set MousePointerCrosshairs.AutoActivate `"$($this.AutoActivate)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.MousePointerCrosshairs `"$($this.Enabled)`""
        }


    }
}
class MouseWithoutBorders {
    [DscProperty()] [Nullable[bool]]
    $ShowOriginalUI = $null

    [DscProperty()] [Nullable[bool]]
    $WrapMouse = $null

    [DscProperty()] [Nullable[bool]]
    $ShareClipboard = $null

    [DscProperty()] [Nullable[bool]]
    $TransferFile = $null

    [DscProperty()] [Nullable[bool]]
    $HideMouseAtScreenEdge = $null

    [DscProperty()] [Nullable[bool]]
    $DrawMouseCursor = $null

    [DscProperty()] [Nullable[bool]]
    $ValidateRemoteMachineIP = $null

    [DscProperty()] [Nullable[bool]]
    $SameSubnetOnly = $null

    [DscProperty()] [Nullable[bool]]
    $BlockScreenSaverOnOtherMachines = $null

    [DscProperty()] [Nullable[bool]]
    $MoveMouseRelatively = $null

    [DscProperty()] [Nullable[bool]]
    $BlockMouseAtScreenCorners = $null

    [DscProperty()] [Nullable[bool]]
    $ShowClipboardAndNetworkStatusMessages = $null

    [DscProperty()] [Nullable[int]]
    $EasyMouse = $null

    [DscProperty()] [Nullable[int]]
    $HotKeySwitchMachine = $null

    [DscProperty()] [string]
    $ToggleEasyMouseShortcut = $null

    [DscProperty()] [string]
    $LockMachineShortcut = $null

    [DscProperty()] [string]
    $ReconnectShortcut = $null

    [DscProperty()] [string]
    $Switch2AllPCShortcut = $null

    [DscProperty()] [Nullable[bool]]
    $DrawMouseEx = $null

    [DscProperty()] [string]
    $Name2IP = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ShowOriginalUI -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.ShowOriginalUI `"$($this.ShowOriginalUI)`""
        }

        if ($this.WrapMouse -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.WrapMouse `"$($this.WrapMouse)`""
        }

        if ($this.ShareClipboard -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.ShareClipboard `"$($this.ShareClipboard)`""
        }

        if ($this.TransferFile -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.TransferFile `"$($this.TransferFile)`""
        }

        if ($this.HideMouseAtScreenEdge -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.HideMouseAtScreenEdge `"$($this.HideMouseAtScreenEdge)`""
        }

        if ($this.DrawMouseCursor -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.DrawMouseCursor `"$($this.DrawMouseCursor)`""
        }

        if ($this.ValidateRemoteMachineIP -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.ValidateRemoteMachineIP `"$($this.ValidateRemoteMachineIP)`""
        }

        if ($this.SameSubnetOnly -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.SameSubnetOnly `"$($this.SameSubnetOnly)`""
        }

        if ($this.BlockScreenSaverOnOtherMachines -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.BlockScreenSaverOnOtherMachines `"$($this.BlockScreenSaverOnOtherMachines)`""
        }

        if ($this.MoveMouseRelatively -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.MoveMouseRelatively `"$($this.MoveMouseRelatively)`""
        }

        if ($this.BlockMouseAtScreenCorners -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.BlockMouseAtScreenCorners `"$($this.BlockMouseAtScreenCorners)`""
        }

        if ($this.ShowClipboardAndNetworkStatusMessages -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.ShowClipboardAndNetworkStatusMessages `"$($this.ShowClipboardAndNetworkStatusMessages)`""
        }

        if ($this.EasyMouse -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.EasyMouse `"$($this.EasyMouse)`""
        }

        if ($this.HotKeySwitchMachine -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.HotKeySwitchMachine `"$($this.HotKeySwitchMachine)`""
        }

        if ($this.ToggleEasyMouseShortcut -notlike '') {
            $Changes.Value += "set MouseWithoutBorders.ToggleEasyMouseShortcut `"$($this.ToggleEasyMouseShortcut)`""
        }

        if ($this.LockMachineShortcut -notlike '') {
            $Changes.Value += "set MouseWithoutBorders.LockMachineShortcut `"$($this.LockMachineShortcut)`""
        }

        if ($this.ReconnectShortcut -notlike '') {
            $Changes.Value += "set MouseWithoutBorders.ReconnectShortcut `"$($this.ReconnectShortcut)`""
        }

        if ($this.Switch2AllPCShortcut -notlike '') {
            $Changes.Value += "set MouseWithoutBorders.Switch2AllPCShortcut `"$($this.Switch2AllPCShortcut)`""
        }

        if ($this.DrawMouseEx -ne $null) {
            $Changes.Value += "set MouseWithoutBorders.DrawMouseEx `"$($this.DrawMouseEx)`""
        }

        if ($this.Name2IP -notlike '') {
            $Changes.Value += "set MouseWithoutBorders.Name2IP `"$($this.Name2IP)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.MouseWithoutBorders `"$($this.Enabled)`""
        }


    }
}
class NewPlus {
    [DscProperty()] [string]
    $HideFileExtension = $null

    [DscProperty()] [string]
    $HideStartingDigits = $null

    [DscProperty()] [string]
    $TemplateLocation = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.HideFileExtension -notlike '') {
            $Changes.Value += "set NewPlus.HideFileExtension `"$($this.HideFileExtension)`""
        }

        if ($this.HideStartingDigits -notlike '') {
            $Changes.Value += "set NewPlus.HideStartingDigits `"$($this.HideStartingDigits)`""
        }

        if ($this.TemplateLocation -notlike '') {
            $Changes.Value += "set NewPlus.TemplateLocation `"$($this.TemplateLocation)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.NewPlus `"$($this.Enabled)`""
        }


    }
}
class Peek {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $AlwaysRunNotElevated = $null

    [DscProperty()] [string]
    $CloseAfterLosingFocus = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set Peek.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.AlwaysRunNotElevated -notlike '') {
            $Changes.Value += "set Peek.AlwaysRunNotElevated `"$($this.AlwaysRunNotElevated)`""
        }

        if ($this.CloseAfterLosingFocus -notlike '') {
            $Changes.Value += "set Peek.CloseAfterLosingFocus `"$($this.CloseAfterLosingFocus)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.Peek `"$($this.Enabled)`""
        }


    }
}
class PowerAccent {
    [DscProperty()] [PowerAccentActivationKey]
    $ActivationKey 

    [DscProperty()] [Nullable[bool]]
    $DoNotActivateOnGameMode = $null

    [DscProperty()] [string]
    $ToolbarPosition = $null

    [DscProperty()] [Nullable[int]]
    $InputTime = $null

    [DscProperty()] [string]
    $SelectedLang = $null

    [DscProperty()] [string]
    $ExcludedApps = $null

    [DscProperty()] [Nullable[bool]]
    $ShowUnicodeDescription = $null

    [DscProperty()] [Nullable[bool]]
    $SortByUsageFrequency = $null

    [DscProperty()] [Nullable[bool]]
    $StartSelectionFromTheLeft = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationKey -ne 0) {
            $Changes.Value += "set PowerAccent.ActivationKey `"$($this.ActivationKey)`""
        }

        if ($this.DoNotActivateOnGameMode -ne $null) {
            $Changes.Value += "set PowerAccent.DoNotActivateOnGameMode `"$($this.DoNotActivateOnGameMode)`""
        }

        if ($this.ToolbarPosition -notlike '') {
            $Changes.Value += "set PowerAccent.ToolbarPosition `"$($this.ToolbarPosition)`""
        }

        if ($this.InputTime -ne $null) {
            $Changes.Value += "set PowerAccent.InputTime `"$($this.InputTime)`""
        }

        if ($this.SelectedLang -notlike '') {
            $Changes.Value += "set PowerAccent.SelectedLang `"$($this.SelectedLang)`""
        }

        if ($this.ExcludedApps -notlike '') {
            $Changes.Value += "set PowerAccent.ExcludedApps `"$($this.ExcludedApps)`""
        }

        if ($this.ShowUnicodeDescription -ne $null) {
            $Changes.Value += "set PowerAccent.ShowUnicodeDescription `"$($this.ShowUnicodeDescription)`""
        }

        if ($this.SortByUsageFrequency -ne $null) {
            $Changes.Value += "set PowerAccent.SortByUsageFrequency `"$($this.SortByUsageFrequency)`""
        }

        if ($this.StartSelectionFromTheLeft -ne $null) {
            $Changes.Value += "set PowerAccent.StartSelectionFromTheLeft `"$($this.StartSelectionFromTheLeft)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.PowerAccent `"$($this.Enabled)`""
        }


    }
}
class PowerLauncher {
    [DscProperty()] [Nullable[int]]
    $MaximumNumberOfResults = $null

    [DscProperty()] [string]
    $OpenPowerLauncher = $null

    [DscProperty()] [Nullable[bool]]
    $IgnoreHotkeysInFullscreen = $null

    [DscProperty()] [Nullable[bool]]
    $ClearInputOnLaunch = $null

    [DscProperty()] [Nullable[bool]]
    $TabSelectsContextButtons = $null

    [DscProperty()] [Theme]
    $Theme 

    [DscProperty()] [Nullable[int]]
    $TitleFontSize = $null

    [DscProperty()] [StartupPosition]
    $Position 

    [DscProperty()] [Nullable[bool]]
    $UseCentralizedKeyboardHook = $null

    [DscProperty()] [Nullable[bool]]
    $SearchQueryResultsWithDelay = $null

    [DscProperty()] [Nullable[int]]
    $SearchInputDelay = $null

    [DscProperty()] [Nullable[int]]
    $SearchInputDelayFast = $null

    [DscProperty()] [Nullable[int]]
    $SearchClickedItemWeight = $null

    [DscProperty()] [Nullable[bool]]
    $SearchQueryTuningEnabled = $null

    [DscProperty()] [Nullable[bool]]
    $SearchWaitForSlowResults = $null

    [DscProperty()] [Nullable[bool]]
    $UsePinyin = $null

    [DscProperty()] [Nullable[bool]]
    $GenerateThumbnailsFromFiles = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null

    [DscProperty()] [Hashtable[]]
    $Plugins = @()

    ApplyChanges([ref]$Changes) {
        if ($this.MaximumNumberOfResults -ne $null) {
            $Changes.Value += "set PowerLauncher.MaximumNumberOfResults `"$($this.MaximumNumberOfResults)`""
        }

        if ($this.OpenPowerLauncher -notlike '') {
            $Changes.Value += "set PowerLauncher.OpenPowerLauncher `"$($this.OpenPowerLauncher)`""
        }

        if ($this.IgnoreHotkeysInFullscreen -ne $null) {
            $Changes.Value += "set PowerLauncher.IgnoreHotkeysInFullscreen `"$($this.IgnoreHotkeysInFullscreen)`""
        }

        if ($this.ClearInputOnLaunch -ne $null) {
            $Changes.Value += "set PowerLauncher.ClearInputOnLaunch `"$($this.ClearInputOnLaunch)`""
        }

        if ($this.TabSelectsContextButtons -ne $null) {
            $Changes.Value += "set PowerLauncher.TabSelectsContextButtons `"$($this.TabSelectsContextButtons)`""
        }

        if ($this.Theme -ne 0) {
            $Changes.Value += "set PowerLauncher.Theme `"$($this.Theme)`""
        }

        if ($this.TitleFontSize -ne $null) {
            $Changes.Value += "set PowerLauncher.TitleFontSize `"$($this.TitleFontSize)`""
        }

        if ($this.Position -ne 0) {
            $Changes.Value += "set PowerLauncher.Position `"$($this.Position)`""
        }

        if ($this.UseCentralizedKeyboardHook -ne $null) {
            $Changes.Value += "set PowerLauncher.UseCentralizedKeyboardHook `"$($this.UseCentralizedKeyboardHook)`""
        }

        if ($this.SearchQueryResultsWithDelay -ne $null) {
            $Changes.Value += "set PowerLauncher.SearchQueryResultsWithDelay `"$($this.SearchQueryResultsWithDelay)`""
        }

        if ($this.SearchInputDelay -ne $null) {
            $Changes.Value += "set PowerLauncher.SearchInputDelay `"$($this.SearchInputDelay)`""
        }

        if ($this.SearchInputDelayFast -ne $null) {
            $Changes.Value += "set PowerLauncher.SearchInputDelayFast `"$($this.SearchInputDelayFast)`""
        }

        if ($this.SearchClickedItemWeight -ne $null) {
            $Changes.Value += "set PowerLauncher.SearchClickedItemWeight `"$($this.SearchClickedItemWeight)`""
        }

        if ($this.SearchQueryTuningEnabled -ne $null) {
            $Changes.Value += "set PowerLauncher.SearchQueryTuningEnabled `"$($this.SearchQueryTuningEnabled)`""
        }

        if ($this.SearchWaitForSlowResults -ne $null) {
            $Changes.Value += "set PowerLauncher.SearchWaitForSlowResults `"$($this.SearchWaitForSlowResults)`""
        }

        if ($this.UsePinyin -ne $null) {
            $Changes.Value += "set PowerLauncher.UsePinyin `"$($this.UsePinyin)`""
        }

        if ($this.GenerateThumbnailsFromFiles -ne $null) {
            $Changes.Value += "set PowerLauncher.GenerateThumbnailsFromFiles `"$($this.GenerateThumbnailsFromFiles)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.PowerLauncher `"$($this.Enabled)`""
        }

        if ($this.Plugins.Count -gt 0) {
            $AdditionalPropertiesTmpPath = [System.IO.Path]::GetTempFileName()
            $this.Plugins | ConvertTo-Json | Set-Content -Path $AdditionalPropertiesTmpPath
            $Changes.Value += "setAdditional PowerLauncher `"$AdditionalPropertiesTmpPath`""
        }
    }
}
class PowerOcr {
    [DscProperty()] [string]
    $ActivationShortcut = $null

    [DscProperty()] [string]
    $PreferredLanguage = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.ActivationShortcut -notlike '') {
            $Changes.Value += "set PowerOcr.ActivationShortcut `"$($this.ActivationShortcut)`""
        }

        if ($this.PreferredLanguage -notlike '') {
            $Changes.Value += "set PowerOcr.PreferredLanguage `"$($this.PreferredLanguage)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.PowerOcr `"$($this.Enabled)`""
        }


    }
}
class PowerPreview {
    [DscProperty()] [Nullable[bool]]
    $EnableSvgPreview = $null

    [DscProperty()] [Nullable[int]]
    $SvgBackgroundColorMode = $null

    [DscProperty()] [string]
    $SvgBackgroundSolidColor = $null

    [DscProperty()] [Nullable[int]]
    $SvgBackgroundCheckeredShade = $null

    [DscProperty()] [Nullable[bool]]
    $EnableSvgThumbnail = $null

    [DscProperty()] [Nullable[bool]]
    $EnableMdPreview = $null

    [DscProperty()] [Nullable[bool]]
    $EnableMonacoPreview = $null

    [DscProperty()] [Nullable[bool]]
    $EnableMonacoPreviewWordWrap = $null

    [DscProperty()] [Nullable[bool]]
    $MonacoPreviewTryFormat = $null

    [DscProperty()] [Nullable[int]]
    $MonacoPreviewMaxFileSize = $null

    [DscProperty()] [Nullable[int]]
    $MonacoPreviewFontSize = $null

    [DscProperty()] [Nullable[bool]]
    $MonacoPreviewStickyScroll = $null

    [DscProperty()] [Nullable[bool]]
    $EnablePdfPreview = $null

    [DscProperty()] [Nullable[bool]]
    $EnablePdfThumbnail = $null

    [DscProperty()] [Nullable[bool]]
    $EnableGcodePreview = $null

    [DscProperty()] [Nullable[bool]]
    $EnableGcodeThumbnail = $null

    [DscProperty()] [Nullable[bool]]
    $EnableStlThumbnail = $null

    [DscProperty()] [string]
    $StlThumbnailColor = $null

    [DscProperty()] [Nullable[bool]]
    $EnableQoiPreview = $null

    [DscProperty()] [Nullable[bool]]
    $EnableQoiThumbnail = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.EnableSvgPreview -ne $null) {
            $Changes.Value += "set PowerPreview.EnableSvgPreview `"$($this.EnableSvgPreview)`""
        }

        if ($this.SvgBackgroundColorMode -ne $null) {
            $Changes.Value += "set PowerPreview.SvgBackgroundColorMode `"$($this.SvgBackgroundColorMode)`""
        }

        if ($this.SvgBackgroundSolidColor -notlike '') {
            $Changes.Value += "set PowerPreview.SvgBackgroundSolidColor `"$($this.SvgBackgroundSolidColor)`""
        }

        if ($this.SvgBackgroundCheckeredShade -ne $null) {
            $Changes.Value += "set PowerPreview.SvgBackgroundCheckeredShade `"$($this.SvgBackgroundCheckeredShade)`""
        }

        if ($this.EnableSvgThumbnail -ne $null) {
            $Changes.Value += "set PowerPreview.EnableSvgThumbnail `"$($this.EnableSvgThumbnail)`""
        }

        if ($this.EnableMdPreview -ne $null) {
            $Changes.Value += "set PowerPreview.EnableMdPreview `"$($this.EnableMdPreview)`""
        }

        if ($this.EnableMonacoPreview -ne $null) {
            $Changes.Value += "set PowerPreview.EnableMonacoPreview `"$($this.EnableMonacoPreview)`""
        }

        if ($this.EnableMonacoPreviewWordWrap -ne $null) {
            $Changes.Value += "set PowerPreview.EnableMonacoPreviewWordWrap `"$($this.EnableMonacoPreviewWordWrap)`""
        }

        if ($this.MonacoPreviewTryFormat -ne $null) {
            $Changes.Value += "set PowerPreview.MonacoPreviewTryFormat `"$($this.MonacoPreviewTryFormat)`""
        }

        if ($this.MonacoPreviewMaxFileSize -ne $null) {
            $Changes.Value += "set PowerPreview.MonacoPreviewMaxFileSize `"$($this.MonacoPreviewMaxFileSize)`""
        }

        if ($this.MonacoPreviewFontSize -ne $null) {
            $Changes.Value += "set PowerPreview.MonacoPreviewFontSize `"$($this.MonacoPreviewFontSize)`""
        }

        if ($this.MonacoPreviewStickyScroll -ne $null) {
            $Changes.Value += "set PowerPreview.MonacoPreviewStickyScroll `"$($this.MonacoPreviewStickyScroll)`""
        }

        if ($this.EnablePdfPreview -ne $null) {
            $Changes.Value += "set PowerPreview.EnablePdfPreview `"$($this.EnablePdfPreview)`""
        }

        if ($this.EnablePdfThumbnail -ne $null) {
            $Changes.Value += "set PowerPreview.EnablePdfThumbnail `"$($this.EnablePdfThumbnail)`""
        }

        if ($this.EnableGcodePreview -ne $null) {
            $Changes.Value += "set PowerPreview.EnableGcodePreview `"$($this.EnableGcodePreview)`""
        }

        if ($this.EnableGcodeThumbnail -ne $null) {
            $Changes.Value += "set PowerPreview.EnableGcodeThumbnail `"$($this.EnableGcodeThumbnail)`""
        }

        if ($this.EnableStlThumbnail -ne $null) {
            $Changes.Value += "set PowerPreview.EnableStlThumbnail `"$($this.EnableStlThumbnail)`""
        }

        if ($this.StlThumbnailColor -notlike '') {
            $Changes.Value += "set PowerPreview.StlThumbnailColor `"$($this.StlThumbnailColor)`""
        }

        if ($this.EnableQoiPreview -ne $null) {
            $Changes.Value += "set PowerPreview.EnableQoiPreview `"$($this.EnableQoiPreview)`""
        }

        if ($this.EnableQoiThumbnail -ne $null) {
            $Changes.Value += "set PowerPreview.EnableQoiThumbnail `"$($this.EnableQoiThumbnail)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.PowerPreview `"$($this.Enabled)`""
        }


    }
}
class PowerRename {
    [DscProperty()] [string]
    $MRUEnabled = $null

    [DscProperty()] [Nullable[int]]
    $MaxMRUSize = $null

    [DscProperty()] [string]
    $ExtendedContextMenuOnly = $null

    [DscProperty()] [string]
    $UseBoostLib = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.MRUEnabled -notlike '') {
            $Changes.Value += "set PowerRename.MRUEnabled `"$($this.MRUEnabled)`""
        }

        if ($this.MaxMRUSize -ne $null) {
            $Changes.Value += "set PowerRename.MaxMRUSize `"$($this.MaxMRUSize)`""
        }

        if ($this.ExtendedContextMenuOnly -notlike '') {
            $Changes.Value += "set PowerRename.ExtendedContextMenuOnly `"$($this.ExtendedContextMenuOnly)`""
        }

        if ($this.UseBoostLib -notlike '') {
            $Changes.Value += "set PowerRename.UseBoostLib `"$($this.UseBoostLib)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.PowerRename `"$($this.Enabled)`""
        }


    }
}
class RegistryPreview {
    [DscProperty()] [Nullable[bool]]
    $DefaultRegApp = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.DefaultRegApp -ne $null) {
            $Changes.Value += "set RegistryPreview.DefaultRegApp `"$($this.DefaultRegApp)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.RegistryPreview `"$($this.Enabled)`""
        }


    }
}
class ShortcutGuide {
    [DscProperty()] [string]
    $OpenShortcutGuide = $null

    [DscProperty()] [Nullable[int]]
    $OverlayOpacity = $null

    [DscProperty()] [string]
    $UseLegacyPressWinKeyBehavior = $null

    [DscProperty()] [Nullable[int]]
    $PressTimeForGlobalWindowsShortcuts = $null

    [DscProperty()] [Nullable[int]]
    $PressTimeForTaskbarIconShortcuts = $null

    [DscProperty()] [string]
    $Theme = $null

    [DscProperty()] [string]
    $DisabledApps = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.OpenShortcutGuide -notlike '') {
            $Changes.Value += "set ShortcutGuide.OpenShortcutGuide `"$($this.OpenShortcutGuide)`""
        }

        if ($this.OverlayOpacity -ne $null) {
            $Changes.Value += "set ShortcutGuide.OverlayOpacity `"$($this.OverlayOpacity)`""
        }

        if ($this.UseLegacyPressWinKeyBehavior -notlike '') {
            $Changes.Value += "set ShortcutGuide.UseLegacyPressWinKeyBehavior `"$($this.UseLegacyPressWinKeyBehavior)`""
        }

        if ($this.PressTimeForGlobalWindowsShortcuts -ne $null) {
            $Changes.Value += "set ShortcutGuide.PressTimeForGlobalWindowsShortcuts `"$($this.PressTimeForGlobalWindowsShortcuts)`""
        }

        if ($this.PressTimeForTaskbarIconShortcuts -ne $null) {
            $Changes.Value += "set ShortcutGuide.PressTimeForTaskbarIconShortcuts `"$($this.PressTimeForTaskbarIconShortcuts)`""
        }

        if ($this.Theme -notlike '') {
            $Changes.Value += "set ShortcutGuide.Theme `"$($this.Theme)`""
        }

        if ($this.DisabledApps -notlike '') {
            $Changes.Value += "set ShortcutGuide.DisabledApps `"$($this.DisabledApps)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.ShortcutGuide `"$($this.Enabled)`""
        }


    }
}
class VideoConference {
    [DscProperty()] [string]
    $MuteCameraAndMicrophoneHotkey = $null

    [DscProperty()] [string]
    $MuteMicrophoneHotkey = $null

    [DscProperty()] [string]
    $PushToTalkMicrophoneHotkey = $null

    [DscProperty()] [string]
    $PushToReverseEnabled = $null

    [DscProperty()] [string]
    $MuteCameraHotkey = $null

    [DscProperty()] [string]
    $SelectedCamera = $null

    [DscProperty()] [string]
    $SelectedMicrophone = $null

    [DscProperty()] [string]
    $ToolbarPosition = $null

    [DscProperty()] [string]
    $ToolbarMonitor = $null

    [DscProperty()] [string]
    $CameraOverlayImagePath = $null

    [DscProperty()] [string]
    $Theme = $null

    [DscProperty()] [string]
    $ToolbarHide = $null

    [DscProperty()] [string]
    $StartupAction = $null

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.MuteCameraAndMicrophoneHotkey -notlike '') {
            $Changes.Value += "set VideoConference.MuteCameraAndMicrophoneHotkey `"$($this.MuteCameraAndMicrophoneHotkey)`""
        }

        if ($this.MuteMicrophoneHotkey -notlike '') {
            $Changes.Value += "set VideoConference.MuteMicrophoneHotkey `"$($this.MuteMicrophoneHotkey)`""
        }

        if ($this.PushToTalkMicrophoneHotkey -notlike '') {
            $Changes.Value += "set VideoConference.PushToTalkMicrophoneHotkey `"$($this.PushToTalkMicrophoneHotkey)`""
        }

        if ($this.PushToReverseEnabled -notlike '') {
            $Changes.Value += "set VideoConference.PushToReverseEnabled `"$($this.PushToReverseEnabled)`""
        }

        if ($this.MuteCameraHotkey -notlike '') {
            $Changes.Value += "set VideoConference.MuteCameraHotkey `"$($this.MuteCameraHotkey)`""
        }

        if ($this.SelectedCamera -notlike '') {
            $Changes.Value += "set VideoConference.SelectedCamera `"$($this.SelectedCamera)`""
        }

        if ($this.SelectedMicrophone -notlike '') {
            $Changes.Value += "set VideoConference.SelectedMicrophone `"$($this.SelectedMicrophone)`""
        }

        if ($this.ToolbarPosition -notlike '') {
            $Changes.Value += "set VideoConference.ToolbarPosition `"$($this.ToolbarPosition)`""
        }

        if ($this.ToolbarMonitor -notlike '') {
            $Changes.Value += "set VideoConference.ToolbarMonitor `"$($this.ToolbarMonitor)`""
        }

        if ($this.CameraOverlayImagePath -notlike '') {
            $Changes.Value += "set VideoConference.CameraOverlayImagePath `"$($this.CameraOverlayImagePath)`""
        }

        if ($this.Theme -notlike '') {
            $Changes.Value += "set VideoConference.Theme `"$($this.Theme)`""
        }

        if ($this.ToolbarHide -notlike '') {
            $Changes.Value += "set VideoConference.ToolbarHide `"$($this.ToolbarHide)`""
        }

        if ($this.StartupAction -notlike '') {
            $Changes.Value += "set VideoConference.StartupAction `"$($this.StartupAction)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.VideoConference `"$($this.Enabled)`""
        }


    }
}
class Workspaces {
    [DscProperty()] [string]
    $Hotkey = $null

    [DscProperty()] [SortByProperty]
    $SortBy 

    [DscProperty(Key)] [Nullable[bool]]
    $Enabled = $null
    ApplyChanges([ref]$Changes) {
        if ($this.Hotkey -notlike '') {
            $Changes.Value += "set Workspaces.Hotkey `"$($this.Hotkey)`""
        }

        if ($this.SortBy -ne 0) {
            $Changes.Value += "set Workspaces.SortBy `"$($this.SortBy)`""
        }

        if ($this.Enabled -ne $null) {
            $Changes.Value += "set General.Enabled.Workspaces `"$($this.Enabled)`""
        }


    }
}
class GeneralSettings {
    [DscProperty()] [Nullable[bool]]
    $Startup = $null

    [DscProperty()] [Nullable[bool]]
    $EnableWarningsElevatedApps = $null

    [DscProperty()] [string]
    $Theme = $null

    [DscProperty()] [Nullable[bool]]
    $ShowNewUpdatesToastNotification = $null

    [DscProperty()] [Nullable[bool]]
    $AutoDownloadUpdates = $null

    [DscProperty()] [Nullable[bool]]
    $ShowWhatsNewAfterUpdates = $null

    [DscProperty()] [Nullable[bool]]
    $EnableExperimentation = $null

    ApplyChanges([ref]$Changes) {
        if ($this.Startup -ne $null) {
            $Changes.Value += "set GeneralSettings.Startup `"$($this.Startup)`""
        }

        if ($this.EnableWarningsElevatedApps -ne $null) {
            $Changes.Value += "set GeneralSettings.EnableWarningsElevatedApps `"$($this.EnableWarningsElevatedApps)`""
        }

        if ($this.Theme -notlike '') {
            $Changes.Value += "set GeneralSettings.Theme `"$($this.Theme)`""
        }

        if ($this.ShowNewUpdatesToastNotification -ne $null) {
            $Changes.Value += "set GeneralSettings.ShowNewUpdatesToastNotification `"$($this.ShowNewUpdatesToastNotification)`""
        }

        if ($this.AutoDownloadUpdates -ne $null) {
            $Changes.Value += "set GeneralSettings.AutoDownloadUpdates `"$($this.AutoDownloadUpdates)`""
        }

        if ($this.ShowWhatsNewAfterUpdates -ne $null) {
            $Changes.Value += "set GeneralSettings.ShowWhatsNewAfterUpdates `"$($this.ShowWhatsNewAfterUpdates)`""
        }

        if ($this.EnableExperimentation -ne $null) {
            $Changes.Value += "set GeneralSettings.EnableExperimentation `"$($this.EnableExperimentation)`""
        }




    }
}

[DscResource()]
class PowerToysConfigure {
    [DscProperty(Key)] [PowerToysConfigureEnsure]
    $Ensure = [PowerToysConfigureEnsure]::Present

    [bool] $Debug = $false

    [DscProperty()]
    [AdvancedPaste]$AdvancedPaste = [AdvancedPaste]::new()

    [DscProperty()]
    [AlwaysOnTop]$AlwaysOnTop = [AlwaysOnTop]::new()

    [DscProperty()]
    [Awake]$Awake = [Awake]::new()

    [DscProperty()]
    [ColorPicker]$ColorPicker = [ColorPicker]::new()

    [DscProperty()]
    [CropAndLock]$CropAndLock = [CropAndLock]::new()

    [DscProperty()]
    [EnvironmentVariables]$EnvironmentVariables = [EnvironmentVariables]::new()

    [DscProperty()]
    [FancyZones]$FancyZones = [FancyZones]::new()

    [DscProperty()]
    [FileLocksmith]$FileLocksmith = [FileLocksmith]::new()

    [DscProperty()]
    [FindMyMouse]$FindMyMouse = [FindMyMouse]::new()

    [DscProperty()]
    [Hosts]$Hosts = [Hosts]::new()

    [DscProperty()]
    [ImageResizer]$ImageResizer = [ImageResizer]::new()

    [DscProperty()]
    [KeyboardManager]$KeyboardManager = [KeyboardManager]::new()

    [DscProperty()]
    [MeasureTool]$MeasureTool = [MeasureTool]::new()

    [DscProperty()]
    [MouseHighlighter]$MouseHighlighter = [MouseHighlighter]::new()

    [DscProperty()]
    [MouseJump]$MouseJump = [MouseJump]::new()

    [DscProperty()]
    [MousePointerCrosshairs]$MousePointerCrosshairs = [MousePointerCrosshairs]::new()

    [DscProperty()]
    [MouseWithoutBorders]$MouseWithoutBorders = [MouseWithoutBorders]::new()

    [DscProperty()]
    [NewPlus]$NewPlus = [NewPlus]::new()

    [DscProperty()]
    [Peek]$Peek = [Peek]::new()

    [DscProperty()]
    [PowerAccent]$PowerAccent = [PowerAccent]::new()

    [DscProperty()]
    [PowerLauncher]$PowerLauncher = [PowerLauncher]::new()

    [DscProperty()]
    [PowerOcr]$PowerOcr = [PowerOcr]::new()

    [DscProperty()]
    [PowerPreview]$PowerPreview = [PowerPreview]::new()

    [DscProperty()]
    [PowerRename]$PowerRename = [PowerRename]::new()

    [DscProperty()]
    [RegistryPreview]$RegistryPreview = [RegistryPreview]::new()

    [DscProperty()]
    [ShortcutGuide]$ShortcutGuide = [ShortcutGuide]::new()

    [DscProperty()]
    [VideoConference]$VideoConference = [VideoConference]::new()

    [DscProperty()]
    [Workspaces]$Workspaces = [Workspaces]::new()

    [DscProperty()]
    [GeneralSettings]$GeneralSettings = [GeneralSettings]::new()


    [string] GetPowerToysSettingsPath() {
        $installation = Get-ChildItem HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | ForEach-Object { Get-ItemProperty $_.PsPath } | Where-Object { $_.DisplayName -eq "PowerToys (Preview)" -and $_.DisplayVersion -eq "0.87.0" }

        if (-not $installation)
        {
            $installation = Get-ChildItem HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | ForEach-Object { Get-ItemProperty $_.PsPath } | Where-Object { $_.DisplayName -eq "PowerToys (Preview)" -and $_.DisplayVersion -eq "0.87.0" }
        }

        if ($installation) {
            $SettingsExePath = Join-Path (Join-Path $installation.InstallLocation WinUI3Apps) PowerToys.Settings.exe
            $SettingsExePath = "`"$SettingsExePath`""
        } else {
            throw "PowerToys installation wasn't found."
        }

        return $SettingsExePath
    }

    [PowerToysConfigure] Get() {
        $CurrentState = [PowerToysConfigure]::new()
        $SettingsExePath = $this.GetPowerToysSettingsPath()
        $SettingsTmpFilePath = [System.IO.Path]::GetTempFileName()

        $SettingsToRequest = @{}
        foreach ($module in $CurrentState.PSObject.Properties) {
            $moduleName = $module.Name
            # Skip utility properties
            if ($moduleName -eq "Ensure" -or $moduleName -eq "Debug") {
                continue
            }

            $moduleProperties = $module.Value
            $propertiesArray = @() 
            foreach ($property in $moduleProperties.PSObject.Properties) {
                $propertyName = $property.Name
                # Skip Enabled properties - they should be requested from GeneralSettings
                if ($propertyName -eq "Enabled") {
                    continue
                }

                $propertiesArray += $propertyName
            }

            $SettingsToRequest[$moduleName] = $propertiesArray
        }

        $settingsJson = $SettingsToRequest | ConvertTo-Json
        $settingsJson | Set-Content -Path $SettingsTmpFilePath

        Start-Process -FilePath $SettingsExePath -Wait -Args "get `"$SettingsTmpFilePath`""
        $SettingsValues = Get-Content -Path $SettingsTmpFilePath -Raw

        if ($this.Debug -eq $true) {
            $TempFilePath = Join-Path -Path $env:TEMP -ChildPath "PowerToys.DSC.TestConfigure.txt"
            Set-Content -Path "$TempFilePath" -Value ("Requested:`r`n" + $settingsJson + "`r`n" + "Got:`r`n" + $SettingsValues + "`r`n" + (Get-Date -Format "o")) -Force
        }

        $SettingsValues = $SettingsValues | ConvertFrom-Json
        foreach ($module in $SettingsValues.PSObject.Properties) {
            $moduleName = $module.Name
            $obtainedModuleSettings = $module.Value
            $moduleRef = $CurrentState.$moduleName
            foreach ($property in $obtainedModuleSettings.PSObject.Properties) {
                $propertyName = $property.Name
                $moduleRef.$propertyName = $property.Value
            }
        }

        Remove-Item -Path $SettingsTmpFilePath

        return $CurrentState
    }

    [bool] Test() {
        # NB: we must always assume that the configuration isn't applied, because changing some settings produce external side-effects
        return $false 
    }

    [void] Set() {
        $SettingsExePath = $this.GetPowerToysSettingsPath()
        $ChangesToApply = @()

        $this.AdvancedPaste.ApplyChanges([ref]$ChangesToApply)
        $this.AlwaysOnTop.ApplyChanges([ref]$ChangesToApply)
        $this.Awake.ApplyChanges([ref]$ChangesToApply)
        $this.ColorPicker.ApplyChanges([ref]$ChangesToApply)
        $this.CropAndLock.ApplyChanges([ref]$ChangesToApply)
        $this.EnvironmentVariables.ApplyChanges([ref]$ChangesToApply)
        $this.FancyZones.ApplyChanges([ref]$ChangesToApply)
        $this.FileLocksmith.ApplyChanges([ref]$ChangesToApply)
        $this.FindMyMouse.ApplyChanges([ref]$ChangesToApply)
        $this.Hosts.ApplyChanges([ref]$ChangesToApply)
        $this.ImageResizer.ApplyChanges([ref]$ChangesToApply)
        $this.KeyboardManager.ApplyChanges([ref]$ChangesToApply)
        $this.MeasureTool.ApplyChanges([ref]$ChangesToApply)
        $this.MouseHighlighter.ApplyChanges([ref]$ChangesToApply)
        $this.MouseJump.ApplyChanges([ref]$ChangesToApply)
        $this.MousePointerCrosshairs.ApplyChanges([ref]$ChangesToApply)
        $this.MouseWithoutBorders.ApplyChanges([ref]$ChangesToApply)
        $this.NewPlus.ApplyChanges([ref]$ChangesToApply)
        $this.Peek.ApplyChanges([ref]$ChangesToApply)
        $this.PowerAccent.ApplyChanges([ref]$ChangesToApply)
        $this.PowerLauncher.ApplyChanges([ref]$ChangesToApply)
        $this.PowerOcr.ApplyChanges([ref]$ChangesToApply)
        $this.PowerPreview.ApplyChanges([ref]$ChangesToApply)
        $this.PowerRename.ApplyChanges([ref]$ChangesToApply)
        $this.RegistryPreview.ApplyChanges([ref]$ChangesToApply)
        $this.ShortcutGuide.ApplyChanges([ref]$ChangesToApply)
        $this.VideoConference.ApplyChanges([ref]$ChangesToApply)
        $this.Workspaces.ApplyChanges([ref]$ChangesToApply)
        $this.GeneralSettings.ApplyChanges([ref]$ChangesToApply)
    
        if ($this.Debug -eq $true) {
            $tmp_info = $ChangesToApply
            # $tmp_info = $this | ConvertTo-Json -Depth 10

            $TempFilePath = Join-Path -Path $env:TEMP -ChildPath "PowerToys.DSC.TestConfigure.txt"
            Set-Content -Path "$TempFilePath" -Value ($tmp_info + "`r`n" + (Get-Date -Format "o")) -Force
        } 

        # Stop any running PowerToys instances
        Stop-Process -Name "PowerToys.Settings" -Force -PassThru | Wait-Process
        $PowerToysProcessStopped = Stop-Process -Name "PowerToys" -Force -PassThru
        $PowerToysProcessStopped | Wait-Process

        foreach ($change in $ChangesToApply) {
            Start-Process -FilePath $SettingsExePath -Wait -Args "$change"
        }

        # If the PowerToys process was stopped, restart it.
        if ($PowerToysProcessStopped -ne $null) {
            Start-Process -FilePath $SettingsExePath
        }
    }
}
#endregion DscResources
# SIG # Begin signature block
# MIIoRgYJKoZIhvcNAQcCoIIoNzCCKDMCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAYHGtE0cPiWd1o
# 4BBwoFpmkV1AQvcE38tW/vPoLaQiG6CCDXYwggX0MIID3KADAgECAhMzAAAEBGx0
# Bv9XKydyAAAAAAQEMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjQwOTEyMjAxMTE0WhcNMjUwOTExMjAxMTE0WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQC0KDfaY50MDqsEGdlIzDHBd6CqIMRQWW9Af1LHDDTuFjfDsvna0nEuDSYJmNyz
# NB10jpbg0lhvkT1AzfX2TLITSXwS8D+mBzGCWMM/wTpciWBV/pbjSazbzoKvRrNo
# DV/u9omOM2Eawyo5JJJdNkM2d8qzkQ0bRuRd4HarmGunSouyb9NY7egWN5E5lUc3
# a2AROzAdHdYpObpCOdeAY2P5XqtJkk79aROpzw16wCjdSn8qMzCBzR7rvH2WVkvF
# HLIxZQET1yhPb6lRmpgBQNnzidHV2Ocxjc8wNiIDzgbDkmlx54QPfw7RwQi8p1fy
# 4byhBrTjv568x8NGv3gwb0RbAgMBAAGjggFzMIIBbzAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQU8huhNbETDU+ZWllL4DNMPCijEU4w
# RQYDVR0RBD4wPKQ6MDgxHjAcBgNVBAsTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEW
# MBQGA1UEBRMNMjMwMDEyKzUwMjkyMzAfBgNVHSMEGDAWgBRIbmTlUAXTgqoXNzci
# tW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3JsMGEG
# CCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3J0
# MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIBAIjmD9IpQVvfB1QehvpC
# Ge7QeTQkKQ7j3bmDMjwSqFL4ri6ae9IFTdpywn5smmtSIyKYDn3/nHtaEn0X1NBj
# L5oP0BjAy1sqxD+uy35B+V8wv5GrxhMDJP8l2QjLtH/UglSTIhLqyt8bUAqVfyfp
# h4COMRvwwjTvChtCnUXXACuCXYHWalOoc0OU2oGN+mPJIJJxaNQc1sjBsMbGIWv3
# cmgSHkCEmrMv7yaidpePt6V+yPMik+eXw3IfZ5eNOiNgL1rZzgSJfTnvUqiaEQ0X
# dG1HbkDv9fv6CTq6m4Ty3IzLiwGSXYxRIXTxT4TYs5VxHy2uFjFXWVSL0J2ARTYL
# E4Oyl1wXDF1PX4bxg1yDMfKPHcE1Ijic5lx1KdK1SkaEJdto4hd++05J9Bf9TAmi
# u6EK6C9Oe5vRadroJCK26uCUI4zIjL/qG7mswW+qT0CW0gnR9JHkXCWNbo8ccMk1
# sJatmRoSAifbgzaYbUz8+lv+IXy5GFuAmLnNbGjacB3IMGpa+lbFgih57/fIhamq
# 5VhxgaEmn/UjWyr+cPiAFWuTVIpfsOjbEAww75wURNM1Imp9NJKye1O24EspEHmb
# DmqCUcq7NqkOKIG4PVm3hDDED/WQpzJDkvu4FrIbvyTGVU01vKsg4UfcdiZ0fQ+/
# V0hf8yrtq9CkB8iIuk5bBxuPMIIHejCCBWKgAwIBAgIKYQ6Q0gAAAAAAAzANBgkq
# hkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
# IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEwOTA5WjB+MQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQg
# Q29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIIC
# CgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+laUKq4BjgaBEm6f8MMHt03
# a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc6Whe0t+bU7IKLMOv2akr
# rnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4Ddato88tt8zpcoRb0Rrrg
# OGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+lD3v++MrWhAfTVYoonpy
# 4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nkkDstrjNYxbc+/jLTswM9
# sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6A4aN91/w0FK/jJSHvMAh
# dCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmdX4jiJV3TIUs+UsS1Vz8k
# A/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL5zmhD+kjSbwYuER8ReTB
# w3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zdsGbiwZeBe+3W7UvnSSmn
# Eyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3T8HhhUSJxAlMxdSlQy90
# lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS4NaIjAsCAwEAAaOCAe0w
# ggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRIbmTlUAXTgqoXNzcitW2o
# ynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBDuRQFTuHqp8cx0SOJNDBa
# BgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3JsMF4GCCsG
# AQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3J0MIGfBgNV
# HSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEFBQcCARYzaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1hcnljcHMuaHRtMEAGCCsG
# AQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkAYwB5AF8AcwB0AGEAdABl
# AG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn8oalmOBUeRou09h0ZyKb
# C5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7v0epo/Np22O/IjWll11l
# hJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0bpdS1HXeUOeLpZMlEPXh6
# I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/KmtYSWMfCWluWpiW5IP0
# wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvyCInWH8MyGOLwxS3OW560
# STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBpmLJZiWhub6e3dMNABQam
# ASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJihsMdYzaXht/a8/jyFqGa
# J+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYbBL7fQccOKO7eZS/sl/ah
# XJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbSoqKfenoi+kiVH6v7RyOA
# 9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sLgOppO6/8MO0ETI7f33Vt
# Y5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtXcVZOSEXAQsmbdlsKgEhr
# /Xmfwb1tbWrJUnMTDXpQzTGCGiYwghoiAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAAQEbHQG/1crJ3IAAAAABAQwDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIIU+i68zWSxlSHF5YNnmNmr0
# A2Ifn2OWNtzQwjYbLQ6zMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAV+H+wuWL/A2mubYNDZamSReUnvL+vRshdV8cJuSqrmyeuCH2DFcNYvXQ
# lwyNC9gkdlF8UxN+MyHPSW5wY23pCiSJNG9/CtU1gyOwFeRmVglhtGEfYscqG8Rf
# HfiA1IAO3qUIBxFS0IY6HWtWBabfHzqR9JZ+sMWeSN3HpThpDRpzZA0jpLFjFLyz
# FPxDmcfsB//QvNyz3au2amJ6q3qaQeA/CN2+WARXx1d6AoEYE2FLJOw7Q3urM/jL
# KF5QBCLWXVQ2TM/1atD9TG0jMHU+mgSFZ9/rczslIiCTFjE0U0QCFirfJk55Ad2N
# LNZKm99gp3qcnNLC6fS7nOmRn36CqKGCF7AwghesBgorBgEEAYI3AwMBMYIXnDCC
# F5gGCSqGSIb3DQEHAqCCF4kwgheFAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFaBgsq
# hkiG9w0BCRABBKCCAUkEggFFMIIBQQIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCAOorQvLQaneWbd7j+ug7LB1YhlzcxsZJl3b7YBTO13zAIGZ0pO7cWw
# GBMyMDI0MTIxMjE1NTM1Ny42ODlaMASAAgH0oIHZpIHWMIHTMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJl
# bGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJzAlBgNVBAsTHm5TaGllbGQgVFNTIEVT
# Tjo1NTFBLTA1RTAtRDk0NzElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# U2VydmljZaCCEf4wggcoMIIFEKADAgECAhMzAAACAdFFWZgQzEJPAAEAAAIBMA0G
# CSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTI0
# MDcyNTE4MzEyMloXDTI1MTAyMjE4MzEyMlowgdMxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9w
# ZXJhdGlvbnMgTGltaXRlZDEnMCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOjU1MUEt
# MDVFMC1EOTQ3MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtWrf+HzDu7sk50y5YHhe
# CIJG0uxRSFFcHNek+Td9ZmyJj20EEjaU8JDJu5pWc4pPAsBI38NEAJ1b+KBnlStq
# U8uvXF4qnEShDdi8nPsZZQsTZDKWAgUM2iZTOiWIuZcFs5ZC8/+GlrVLM5h1Y9nf
# Mh5B4DnUQOXMremAT9MkvUhg3uaYgmqLlmYyODmba4lXZBu104SLAFsXOfl/TLhp
# ToT46y7lI9sbI9uq3/Aerh3aPi2knHvEEazilXeooXNLCwdu+Is6o8kQLouUn3Kw
# UQm0b7aUtsv1X/OgPmsOJi6yN3LYWyHISvrNuIrJ4iYNgHdBBumQYK8LjZmQaTKF
# acxhmXJ0q2gzaIfxF2yIwM+V9sQqkHkg/Q+iSDNpMr6mr/OwknOEIjI0g6ZMOymi
# vpChzDNoPz9hkK3gVHZKW7NV8+UBXN4G0aBX69fKUbxBBLyk2cC+PhOoUjkl6UC8
# /c0huqj5xX8m+YVIk81e7t6I+V/E4yXReeZgr0FhYqNpvTjGcaO2WrkP5XmsYS7I
# vMPIf4DCyIJUZaqoBMToAJJHGRe+DPqCHg6bmGPm97MrOWv16/Co6S9cQDkXp9vM
# SSRQWXy4KtJhZfmuDz2vr1jw4NeixwuIDGw1mtV/TdSI+vpLJfUiLl/b9w/tJB92
# BALQT8e1YH8NphdOo1xCwkcCAwEAAaOCAUkwggFFMB0GA1UdDgQWBBSwcq9blqLo
# PPiVrym9mFmFWbyyUjAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBf
# BgNVHR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3Bz
# L2NybC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmww
# bAYIKwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29m
# dC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0El
# MjAyMDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUF
# BwMIMA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQsFAAOCAgEAOjQAyz0cVztT
# FGqXX5JLRxFK/O/oMe55uDqEC8Vd1gbcM28KBUPgvUIPXm/vdDN2IVBkWHmwCp4A
# Icy4dZtkuUmd0fnu6aT9Mvo1ndsLp2YJcMoFLEt3TtriLaO+i4Grv0ZULtWXUPAW
# /Mn5Scjgn0xZduGPBD/Xs3J7+get9+8ZvBipsg/N7poimYOVsHxLcem7V5XdMNsy
# tTm/uComhM/wgR5KlDYTVNAXBxcSKMeJaiD3V1+HhNkVliMl5VOP+nw5xWF55u9h
# 6eF2G7eBPqT+qSFQ+rQCQdIrN0yG1QN9PJroguK+FJQJdQzdfD3RWVsciBygbYaZ
# lT1cGJI1IyQ74DQ0UBdTpfeGsyrEQ9PI8QyqVLqb2q7LtI6DJMNphYu+jr//0spr
# 1UVvyDPtuRnbGQRNi1COwJcj9OYmlkFgKNeCfbDT7U3uEOvWomekX60Y/m5utRcU
# PVeAPdhkB+DxDaev3J1ywDNdyu911nAVPgRkyKgMK3USLG37EdlatDk8FyuCrx4t
# iHyqHO3wE6xPw32Q8e/vmuQPoBZuX3qUeoFIsyZEenHq2ScMunhcqW32SUVAi5oZ
# 4Z3nf7dAgNau21NEPwgW+2wkrNqDg7Hp8yHyoOKbgEBu6REQbvSfZ5Kh4PV+S2gx
# f2uq6GoYDnlqABOMYwz309ISi0bPMh8wggdxMIIFWaADAgECAhMzAAAAFcXna54C
# m0mZAAAAAAAVMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZp
# Y2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0yMTA5MzAxODIyMjVaFw0zMDA5MzAxODMy
# MjVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMIICIjANBgkqhkiG9w0B
# AQEFAAOCAg8AMIICCgKCAgEA5OGmTOe0ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51
# yMo1V/YBf2xK4OK9uT4XYDP/XE/HZveVU3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY
# 6GB9alKDRLemjkZrBxTzxXb1hlDcwUTIcVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9
# cmmvHaus9ja+NSZk2pg7uhp7M62AW36MEBydUv626GIl3GoPz130/o5Tz9bshVZN
# 7928jaTjkY+yOSxRnOlwaQ3KNi1wjjHINSi947SHJMPgyY9+tVSP3PoFVZhtaDua
# Rr3tpK56KTesy+uDRedGbsoy1cCGMFxPLOJiss254o2I5JasAUq7vnGpF1tnYN74
# kpEeHT39IM9zfUGaRnXNxF803RKJ1v2lIH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2
# K26oElHovwUDo9Fzpk03dJQcNIIP8BDyt0cY7afomXw/TNuvXsLz1dhzPUNOwTM5
# TI4CvEJoLhDqhFFG4tG9ahhaYQFzymeiXtcodgLiMxhy16cg8ML6EgrXY28MyTZk
# i1ugpoMhXV8wdJGUlNi5UPkLiWHzNgY1GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9Q
# BXpsxREdcu+N+VLEhReTwDwV2xo3xwgVGD94q0W29R6HXtqPnhZyacaue7e3Pmri
# Lq0CAwEAAaOCAd0wggHZMBIGCSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUC
# BBYEFCqnUv5kxJq+gpE8RjUpzxD/LwTuMB0GA1UdDgQWBBSfpxVdAF5iXYP05dJl
# pxtTNRnpcjBcBgNVHSAEVTBTMFEGDCsGAQQBgjdMg30BATBBMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9y
# eS5odG0wEwYDVR0lBAwwCgYIKwYBBQUHAwgwGQYJKwYBBAGCNxQCBAweCgBTAHUA
# YgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU
# 1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2Ny
# bC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIw
# MTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0w
# Ni0yMy5jcnQwDQYJKoZIhvcNAQELBQADggIBAJ1VffwqreEsH2cBMSRb4Z5yS/yp
# b+pcFLY+TkdkeLEGk5c9MTO1OdfCcTY/2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulm
# ZzpTTd2YurYeeNg2LpypglYAA7AFvonoaeC6Ce5732pvvinLbtg/SHUB2RjebYIM
# 9W0jVOR4U3UkV7ndn/OOPcbzaN9l9qRWqveVtihVJ9AkvUCgvxm2EhIRXT0n4ECW
# OKz3+SmJw7wXsFSFQrP8DJ6LGYnn8AtqgcKBGUIZUnWKNsIdw2FzLixre24/LAl4
# FOmRsqlb30mjdAy87JGA0j3mSj5mO0+7hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3Uw
# xTSwethQ/gpY3UA8x1RtnWN0SCyxTkctwRQEcb9k+SS+c23Kjgm9swFXSVRk2XPX
# fx5bRAGOWhmRaw2fpCjcZxkoJLo4S5pu+yFUa2pFEUep8beuyOiJXk+d0tBMdrVX
# VAmxaQFEfnyhYWxz/gq77EFmPWn9y8FBSX5+k77L+DvktxW/tM4+pTFRhLy/AsGC
# onsXHRWJjXD+57XQKBqJC4822rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU
# 5nR0W2rRnj7tfqAxM328y+l7vzhwRNGQ8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEG
# ahC0HVUzWLOhcGbyoYIDWTCCAkECAQEwggEBoYHZpIHWMIHTMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJl
# bGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJzAlBgNVBAsTHm5TaGllbGQgVFNTIEVT
# Tjo1NTFBLTA1RTAtRDk0NzElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# U2VydmljZaIjCgEBMAcGBSsOAwIaAxUA1+26cR/yH100DiNFGWhuAv2rYBqggYMw
# gYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQsF
# AAIFAOsFR24wIhgPMjAyNDEyMTIxMTI4NDZaGA8yMDI0MTIxMzExMjg0NlowdzA9
# BgorBgEEAYRZCgQBMS8wLTAKAgUA6wVHbgIBADAKAgEAAgIGCwIB/zAHAgEAAgIS
# vzAKAgUA6waY7gIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAow
# CAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBCwUAA4IBAQALUtC5rjuN
# dT2SMMSRWyq0sZHI2Hp7m+wnT+yK5dYQeTeqcdqIlaCcDDna/fDGMh3e6k77ly2P
# NQZJVnymdRS4RZH9Sly1RUfIM9JcUTf99FLxgynVhLoBg++YMd5eJ6rI33k9iAhT
# OpHddNaAuSIg5708grvOFADlEUgliTqsWWQ+kvFk8a26Cq0Zgcb5ewXGvbWGpA/E
# aTAL1hofkhUOkD30Y1XZYPjDzELPT7XzpkZvrmERZj6q79CohZFeMHXx4HhFo8Rk
# KQ8RtPLZa98PrT1kDc6CYz5gvECn+A8OtPwyDgCLmcf/zgK3X21kJRPXOMWIWhge
# K0GzvWQitJDDMYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENB
# IDIwMTACEzMAAAIB0UVZmBDMQk8AAQAAAgEwDQYJYIZIAWUDBAIBBQCgggFKMBoG
# CSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgPqJ/6kRk
# +/8L4FQLzX7Ae3v9JhbKkA5YZhmPwEufCDwwgfoGCyqGSIb3DQEJEAIvMYHqMIHn
# MIHkMIG9BCBYa7I6TJQRcmx0HaSTWZdJgowdrl9+Zrr0pIdqHtc4IzCBmDCBgKR+
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAACAdFFWZgQzEJPAAEA
# AAIBMCIEINqPaFbjCFF/hM9tZ+QKbM4QMdgwJGVOTYTiJdz7J2PYMA0GCSqGSIb3
# DQEBCwUABIICAC1Z7xnxfyAi0dCsOtbA/dB1ntsepxZSHqHSRcBi62okE1nfX2vN
# TQtsnZE8Fpvl/7tqnHXTBxzHTS3rLCDuN2Yn9datY1wNcjApVqWO9vWleh1rcjph
# gENqfsWS4HVPyAdfDc1erTr0qVhFCb8CVgfBbA67F7ADLZtVfduiPP69uIVby7Wq
# 5AszMLn6XfLC0wkMu9yiDSWWAeSNuivlFhTRydwJ7HBtLKmnyamE8DkLLzAjcWQ7
# 8FhiPgRf0pqjxWN4V3kO3ZByijib71yAeB9ustITaeFOZRKw1H28fupp5fOWhAnY
# Gmu4Zmnhw6wBqwIwDBE1Imp5wu3dhzkX8CfYRwzvjF/vE092pIGxuWl3p2jmfWMp
# BmXG7YKL7Un78rdBYS54q1oLqFEozJsfSUXnmTcG9aKVJXqnMBT1k/RhNFIh0KkL
# Oodj8/kiTqimQO7+d5T0ARdwq4NTxCN7ACMaQu8mJa7WdKrzF+RvmjJQatCDsEy/
# dz2CWlPIyY4gGqMqcx6lvA9WbZKCrzvLLqA68tuM5m58k5cLMftS87agN3EP0BNf
# ws0G+zo2OL6aRxHl3emh1nncQT6Dvdw6jj94ViIP9pnmu4HWMm3WIOtDUmcfsmzc
# U637elnfmOF2jHTj1SnZ68JnGKHPVdFx9Bxp2jHAr4lV8UkSFHdFuhrN
# SIG # End signature block