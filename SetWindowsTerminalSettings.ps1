# Refer to https://learn.microsoft.com/en-us/windows/terminal/search for more useful settings & tricks
# todo: go trough shell integrations -> https://learn.microsoft.com/en-us/windows/terminal/tutorials/shell-integration
# and cascadia code https://learn.microsoft.com/en-us/windows/terminal/cascadia-code
# command line arguments https://learn.microsoft.com/en-us/windows/terminal/command-line-arguments?tabs=windows
# enable windows terminal preview
# https://learn.microsoft.com/en-us/windows/terminal/tutorials/new-tab-same-directory
# Colortool Validate your colorscheme https://github.com/microsoft/terminal/tree/main/src/tools/ColorTool

# Save JSON-config as string
$customSettings = @'
    [   
       // copy
        { "command": { "action": "copy", "singleLine": false }, "id": "User.copy.644BA8F2", "keys": "ctrl+c" },

        // paste

        { "command": "paste", "id": "User.paste", "keys": "ctrl+v" },

        //window
        { "command": { "action": "newWindow" }, "id": "Terminal.OpenNewWindow", "keys": "ctrl+n" },
        { "command": { "action": "movePane", "window": "new" }, "keys": "shift+alt+n" },
        { "command": { "action": "moveTab", "window": "new" }, "keys": "shift+alt+t" },
        { "command": { "action": "newWindow", "profile": "Command Prompt" }, "keys": "shift+alt+1" },
        { "command": { "action": "newWindow", "profile": "Windows PowerShell" }, "keys": "shift+alt+2" },
        { "command": { "action": "newWindow", "profile": "UUB" }, "keys": "shift+alt+3" },
        { "command": "toggleAlwaysOnTop", "keys": "alt+l" },

        //tab
        { "command": "newTab", "keys": "ctrl+t" },
        { "command": { "action": "newTab", "profile": "Command Prompt" }, "keys": "ctrl+1" },
        { "command": { "action": "newTab", "profile": "Command Prompt", "elevate": true }, "keys": "ctrl+shift+1" },
        { "command": { "action": "newTab", "profile": "Windows PowerShell" }, "keys": "ctrl+2" },
        { "command": { "action": "newTab", "profile": "Windows PowerShell", "elevate": true }, "keys": "ctrl+shift+2" },
        { "command": { "action": "newTab", "profile": "UUB" }, "keys": "ctrl+3" },
        { "command": { "action": "newTab", "profile": "UUB", "elevate": true }, "keys": "ctrl+shift+3" },
        { "command": "openNewTabDropdown", "id": "Terminal.OpenNewTabDropdown", "keys": "alt+t" },
        { "command": "duplicateTab", "id": "Terminal.DuplicateTab", "keys": "ctrl+shift+d" },
        { "command": "tabSearch", "id": "Terminal.TabSearch", "keys": "ctrl+p" },
        { "command": { "action": "nextTab" }, "keys": "ctrl+tab" },
        { "command": { "action": "prevTab" }, "keys": "ctrl+shift+tab" },
        { "command": "openTabRenamer", "keys": "shift+f2" },

        // close windows/tab/pane
        { "command": "closePane", "id": "User.closePane", "keys": "ctrl+w" },
        { "command": "closeOtherPanes", "keys": "ctrl+alt+w" },
        { "command": { "action": "closeOtherTabs" }, "keys": "ctrl+shift+w" },
        { "command": { "action": "restoreLastClosed" }, "keys": "ctrl+shift+t" },
        { "command": "quit", "keys": "alt+f4" },

        //pane
        { "command": { "action": "splitPane", "split": "auto", "splitMode": "duplicate" }, "id": "User.splitPane.A6751878", "keys": "alt+shift+d" },
        { "command": "toggleSplitOrientation", "id": "User.toggleSplitOrientation", "keys": "alt+o" },
        { "command": "togglePaneZoom", "id": "User.togglePaneZoom", "keys": "ctrl+alt+plus" },
        { "command": { "action": "resizePane", "direction": "up" }, "id": "User.resizePane.6CD791B", "keys": "alt+shift+up" },
        { "command": { "action": "resizePane", "direction": "down" }, "id": "User.resizePane.F747588A", "keys": "alt+shift+down" },
        { "command": { "action": "resizePane", "direction": "left" }, "id": "User.resizePane.2A0DA8E0", "keys": "alt+shift+left" },
        { "command": { "action": "resizePane", "direction": "right" }, "id": "User.resizePane.87C324ED", "keys": "alt+shift+right" },
        { "command": { "action": "movePane", "index": 0 }, "id": "User.movePane.90CDC17E", "keys": "alt+1" },
        { "command": { "action": "movePane", "index": 1 }, "id": "User.movePane.EA17F97A", "keys": "alt+2" },
        { "command": { "action": "movePane", "index": 2 }, "id": "User.movePane.B01DF59A", "keys": "alt+3" },
        { "command": { "action": "movePane", "index": 3 }, "id": "User.movePane.B01DF59A", "keys": "alt+4" },
        { "command": { "action": "movePane", "index": 4 }, "id": "User.movePane.BE165E24", "keys": "alt+5" },
        { "command": { "action": "movePane", "index": 5 }, "id": "User.movePane.371F23CF", "keys": "alt+6" },
        { "command": { "action": "movePane", "index": 6 }, "id": "User.movePane.AA286976", "keys": "alt+7" },
        { "command": { "action": "movePane", "index": 7 }, "id": "User.movePane.A012FE32", "keys": "alt+8" },
        { "command": { "action": "movePane", "index": 8 }, "id": "User.movePane.1330677A", "keys": "alt+9" },
        { "command": { "action": "moveFocus", "direction": "up" }, "keys": "alt+up" },
        { "command": { "action": "moveFocus", "direction": "right" }, "keys": "alt+right" },
        { "command": { "action": "moveFocus", "direction": "down" }, "keys": "alt+down" },
        { "command": { "action": "moveFocus", "direction": "left" }, "keys": "alt+left" },
        { "command": { "action": "swapPane", "direction": "up" }, "id": "User.swapPane.6CD791B", "keys": "ctrl+alt+up" },
        { "command": { "action": "swapPane", "direction": "down" }, "id": "User.swapPane.F747588A", "keys": "ctrl+alt+down" },
        { "command": { "action": "swapPane", "direction": "left" }, "id": "User.swapPane.2A0DA8E0", "keys": "ctrl+alt+left" },
        { "command": { "action": "swapPane", "direction": "right" }, "id": "User.swapPane.87C324ED", "keys": "ctrl+alt+right" },

        // fullscreen
        { "command": "toggleFullscreen", "id": "Terminal.ToggleFullscreen", "keys": "alt+enter" },
        { "command": "toggleFocusMode", "keys": "ctrl+enter" },

        // input
        { "command": "toggleBroadcastInput", "keys": "ctrl+b" },
        { "command": { "action": "exportBuffer" }, "keys": "ctrl+e" },

        // selection
        { "command": "selectAll", "id": "Terminal.SelectAll", "keys": "ctrl+a" },
        { "command": "markMode", "id": "Terminal.ToggleMarkMode", "keys": "ctrl+m" },

        // scroll
        { "command": "scrollUp", "id": "Terminal.ScrollUp", "keys": "ctrl+up" },
        { "command": "scrollDown", "id": "Terminal.ScrollDown", "keys": "ctrl+down" },
        { "command": "scrollUpPage", "id": "Terminal.ScrollUpPage", "keys": "ctrl+shift+up" },
        { "command": "scrollDownPage", "id": "Terminal.ScrollDownPage", "keys": "ctrl+shift+down" },

        // find
        { "command": "find", "id": "User.find", "keys": "ctrl+f" },
        // { "command": { "action": "findMatch", "direction": "next" }, "keys": "enter" },
        // { "command": { "action": "findMatch", "direction": "prev"}, "keys": "shift+enter"},

        // search
        { "command": { "action": "searchWeb", "queryUrl": "https://www.google.com/search?q=%s" }, "id": "Terminal.SearchWeb", "keys": "ctrl+shift+f" },

        // suggestion menu (only in preview)
        { "command": { "action": "showSuggestions", "source": "all" }, "keys": "ctrl+space", "id": "Terminal.ShowSuggestions" },

        // clear/restart
        { "command": { "action": "clearBuffer", "clear": "all" }, "id": "Terminal.ClearBuffer", "keys": "ctrl+l" },
        { "command": "restartConnection", "keys": "ctrl+shift+r" },
        { "command": "restartConnection", "keys": "f5" },

        // settings
        { "command": { "action": "openSettings", "target": "settingsUI" }, "id": "Terminal.OpenSettingsUI", "keys": "ctrl+comma" },
        { "command": { "action": "openSettings", "target": "settingsFile" }, "id": "Terminal.OpenSettingsFile", "keys": "ctrl+shift+comma" },
        { "command": { "action": "openSettings", "target": "defaultsFile" }, "id": "Terminal.OpenDefaultSettingsFile", "keys": "ctrl+alt+comma" },
        { "command": "openAbout", "id": "Terminal.OpenAboutDialog", "keys": "alt+comma" },
        { "command": "openSystemMenu", "keys": "alt+space" },
        
        // hide from command palatte

        // misc
        { "name": null, "command": "breakIntoDebugger" },
        { "name": null, "command": "restoreLastClosed" },
        { "name": null, "command": { "action": "toggleTerminal" } },
        { "name": null, "command": { "action": "globalSummon" } },
        { "name": null, "command": "enableReadOnlyMode" },
        { "name": null, "command": "disableReadOnlyMode" },
        { "name": null, "command": "toggleReadOnlyMode" },
        { "name": null, "command": "openColorSchemePicker" },

        // style
        { "name": null, "command": { "action": "adjustFontSize" } },
        { "name": null, "command": { "action": "adjustFontSize", "delta": 1.0 } },
        { "name": null, "command": { "action": "adjustFontSize", "delta": -1.0 } },
        { "name": null, "command": { "action": "resetFontSize" } },
        { "name": null, "command": { "action": "adjustOpacity" } },
        { "name": null, "command": { "action": "experimental.colorSelection" } },
        { "name": null, "command": { "action": "setTabColor" } },
        { "name": null, "command": "openTabColorPicker" },
        { "name": null, "command": "toggleShaderEffects" },
        { "name": null, "command": "openTabColorPicker" },

        // window
        { "name": null, "command": "identifyWindow" },
        { "name": null, "command": "identifyWindows" },
        { "name": null, "command": { "action": "scrollDown" } },
        { "name": null, "command": { "action": "scrollUp" } },
        { "name": null, "command": { "action": "setMaximized" } },
        { "name": null, "command": { "action": "setFullScreen" } },
        { "name": null, "command": { "action": "setMaximized" } },
        { "name": null, "command": { "action": "setFocusMode" } },
        { "name": null, "command": { "action": "quakeMode" } },
        { "name": null, "command": { "action": "showContextMenu" } },
        { "name": null, "command": "enableReadOnlyMode" },
        { "name": null, "command": "disableReadOnlyMode" },
 
        // pane
        { "name": null, "command": { "action": "splitPane", "split": "up" } },
        { "name": null, "command": { "action": "splitPane", "split": "down" } },
        { "name": null, "command": { "action": "splitPane", "split": "left" } },
        { "name": null, "command": { "action": "splitPane", "split": "right" } },
        { "name": null, "command": { "action": "swapPane", "direction": "previousInOrder" } },
        { "name": null, "command": { "action": "swapPane", "direction": "nextInOrder" } },
        { "name": null, "command": { "action": "swapPane", "direction": "previous" } },
        { "name": null, "command": { "action": "swapPane", "direction": "first" } },

        // focus
        { "name": null, "command": { "action": "moveFocus", "direction": "child" } },
        { "name": null, "command": { "action": "moveFocus", "direction": "child" } },
        { "name": null, "command": { "action": "moveFocus", "direction": "nextInOrder" } },
        { "name": null, "command": { "action": "moveFocus", "direction": "parent" } },
        { "name": null, "command": { "action": "moveFocus", "direction": "first" } },
        { "name": null, "command": { "action": "moveFocus", "direction": "previous" } },
        { "name": null, "command": { "action": "moveFocus", "direction": "previousInOrder"} },
        { "name": null, "command": { "action": "focusPane"} },

        // tabs
        { "name": null, "command": { "action": "newTab", "index": 0 } },
        { "name": null, "command": { "action": "newTab", "index": 1 } },
        { "name": null, "command": { "action": "newTab", "index": 2 } },
        { "name": null, "command": { "action": "newTab", "index": 3 } },
        { "name": null, "command": { "action": "newTab", "index": 4 } },
        { "name": null, "command": { "action": "newTab", "index": 5 } },
        { "name": null, "command": { "action": "newTab", "index": 6 } },
        { "name": null, "command": { "action": "newTab", "index": 7 } },
        { "name": null, "command": { "action": "newTab", "index": 8 } },
        { "name": null, "command": { "action": "newTab", "index": 9 } },
        { "name": null, "command": { "action": "switchToTab", "index": 0 } },
        { "name": null, "command": { "action": "switchToTab", "index": 1 } },
        { "name": null, "command": { "action": "switchToTab", "index": 2 } },
        { "name": null, "command": { "action": "switchToTab", "index": 3 } },
        { "name": null, "command": { "action": "switchToTab", "index": 4 } },
        { "name": null, "command": { "action": "switchToTab", "index": 5 } },
        { "name": null, "command": { "action": "switchToTab", "index": 6 } },
        { "name": null, "command": { "action": "switchToTab", "index": 7 } },
        { "name": null, "command": { "action": "switchToTab", "index": 8 } },
        { "name": null, "command": { "action": "switchToTab", "index": 9 } },
        { "name": null, "command": { "action": "closeTabsAfter" } },
        { "name": null, "command": { "action": "closeTab" } },
        { "name": null, "command": "renameTab" },
        { "name": null, "command": "renameWindow" },
        { "name": null, "command": { "action": "openWindowRenamer" } },
        { "name": null, "command": { "action": "moveTab", "direction": "forward" } },
        { "name": null, "command": { "action": "moveTab", "direction": "backward" } },
       
        // selection
        { "name": null, "command": "toggleBlockSelection" },
        { "name": null, "command": "expandSelectionToWord" },
        { "name": null, "command": { "action": "selectOutput" } },
        { "name": null, "command": { "action": "switchSelectionEndpoint" } },
        { "name": null, "command": { "action": "addMark" } },
        { "name": null, "command": "clearAllMarks" }
    ],
'@

# Path to Windows Terminal settings.json
$settingsPath = "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

# JSON saved in settings.json
Set-Content -Path $settingsPath -Value $customSettings -Encoding UTF8

Write-Host "Settings saved in $settingsPath"
