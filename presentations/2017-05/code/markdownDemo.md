## VSCode - Getting Started - Command Palette
-   This is the Command Center for VSCode
    - Launch with <kbd>Ctrl+Shift+P</kbd> or <kbd>F1</kbd>
    - <kbd>Ctrl+P</kbd> to get the file switcher - Type `?` for other features
    - <kbd>Ctrl+Shift+O</kbd> lets you navigate between symbols in the open file
- Interactive search of all commands as you type
- Key bindings are listed to the right
- Some commands give you more menus, like "File: Open Recent"
- Keymap extensions (VIM / Sublime / Atom etc...)
- Customize shortcuts
---

## VSCode - Getting Started - Settings

- All config stored in json files
    - Helpers for easy editing
    - files, easily version controled (there is a extension for - that)
Keeps defaults clean - your json file sits on top
- Seperate files for defaults and your changes
- Workspace / User Settings / keyboard shortcuts / User Snippets

---

- `editor.fontSize` - Guess what this does
- `editor.fontFamily`
- `editor.insertSpaces` - Spaces, not tabs!
- `editor.formatOnSave` - Format your code just before it's saved
- `editor.formatOnType` - Format your code as you type!
- `files.defaultLanguage`: Set the default language for files created with <kbd>Ctrl+N</kbd>
- `files.autoSave`: Save your files automatically as you edit them, very configurable
- `terminal.integrated.fontSize` - Override `editor.fontSize in the integrated terminal
- `terminal.integrated.fontFamily` - Override `editor.fontFamily` in the integrated terminal
---
## Explorer / Folder browser

- you can preview files
- A folder is treated as a workspace
- Search across workspace <kbd>Ctrl+Shift+F</kbd>
- Difference between having a folder open or not
- Biggest difference is task and debugger configurations
- Folders allow workspace-specific settings
- Source control (Git) is activated
---
## Source Control

If your workspace folder has a .git folder, you get a great Git experience
out of the box.

- Diffing
- Staging files
- Committing
- Pushing commits
- Pulling from remotes
- Creating and switching branches

[Try out GitLens for even more good stuff!](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) 
  - <kbd>Ctrl+P<kbd/> `ext install gitlens`

Other VCS'es should be supported soon, new SCM APIs in VS Code 1.11.

---
## Panels

- Problems - errors/problems related to current language / linting hints etc..
  - quickfix lightbulb

- Output - git output / task output / language execution output

- Debug Console - used with Debugging sessions, allows for dropping into the code.
  -  Used it most languages except powershell debugging.

- Terminal
---

## Integrated Terminal

- Terminal emulator implemented in VSCode (HTML based)
- The missing ingredient for powershell!
- has an API (used by PSEditorServices/VSCode Extensions)
- SUPER FAST - faster than Commander/ConEmu 
- Supports any shell!
  - PowerShell with PSReadline
  - Bash for Windows
  - Anything on Linux or macOS: zsh, fish, etc
---

## Tasks

- Running tasks using external programs
  - Build
  - Test
  - Deploy
- tasks.json in your workspace folder
- Configure a particular program to be run
- You can run your psake or Invoke-Build scripts!
- Output goes to Output window unless you use the new terminal runner (set `version` to `2.0.0`)

## PowerShell Debugging
