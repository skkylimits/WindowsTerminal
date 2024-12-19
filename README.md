# Window Terminal

This is my attempt to automate and streamline my windows terminal across different machines.

In conquest of trying to mimic the browser experience and keybinds to windows terminal

## Install

### powershell

Download it in a directory of choice and run it locally.
```powershell
.\SetWindowsTerminalSettings.ps1
```

### curl

```bash
curl -o "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" https://raw.githubusercontent.com/skkylimits/WindowsTerminal/main/settings.json; echo "Settings downloaded! Restart Windows Terminal or reload the profile."
```

## TODO

- [ ] shell integrations -> https://learn.microsoft.com/en-us/windows/terminal/tutorials/shell-integration
- [ ] cascadia code https://learn.microsoft.com/en-us/windows/terminal/cascadia-code
- [ ] command line arguments https://learn.microsoft.com/en-us/windows/terminal/command-line-arguments?tabs=windows
- [ ] https://learn.microsoft.com/en-us/windows/terminal/tutorials/new-tab-same-directory
- [ ] Colortool Validate your colorscheme https://github.com/microsoft/terminal/tree/main/src/tools/ColorTool
- [ ] Fix the warnings