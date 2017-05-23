class: center, middle
# Cincinnati PowerShell User Group

## VSCode - Everything you need to get started!
### Jay Ryan [@jaywryan](https://twitter.com/jaywryan)

### Contact Us
Twitter: [@CincyPowerShell](http://twitter.com/CincyPowerShell)

Email: [info@cincypowershell.org](mailto:info@cincypowershell.org)
---

class: center, middle
### Sponsors
We can't do it without them, please take time to thank them!

### [Max Technical Training](https://www.maxtrain.com)

![Max](https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQuaqRB4FW7Qj0M13L89PEIBujcCyh4mxdao95vVCAH6oSXb6Nb)

### [Sapien Technologies](http://www.sapien.com)

![Sapien](http://cincypowershell.org/img/sapien.jpeg)
---

### .center[PowerShell News]
--

-	[Powershell Conference EU](http://www.psconf.eu/)

???
Lots of great content, awesome videos
--

-	[Great write-up - Jan Egil Ring - www.powershell.no](http://www.powershell.no/announcements/2017/05/15/psconfeu-2017-slides.html)

--

-	New Pluralsight course - [Your first day with Powershell](http://jdhitsolutions.com/blog/powershell/5583/your-first-day-with-powershell/#utm_source=feed&utm_medium=feed&utm_campaign=feed)

--

-	Azure Stack GA - Mid 2017

???
Lots of new info - Check Don's posts from last week
-	This is a cloud, not Vmware/Hyper-V replacement
-	You may be able to consolodate your bill in Azure & Stack
-	You can work with Vendor or M$ (Dell,HP,Cisco - coming)
--

-	[MVA - Testing PowerShell with Pester](https://mva.microsoft.com/en-US/training-courses/testing-powershell-with-pester-17650)

???
Adam Bertram / Ashley McGlone - 3 hours of content!
---

### .center[VSCode - Everything you need to get started!]

-	What is [VSCode](https://code.visualstudio.com/)?

--

    -	Free. Open source. Runs everywhere.

???
Free. Open source. Runs everywhere.
Cross Platform Editor & IDE
Lightweight / Fast
--
-	Streamlined code editor with support for debugging / task running / version control

---
### .center[VSCode - Getting Started]

---
### .center[Command Palette]

-   This is the Command Center for VSCode

-   Launch with <kbd>Ctrl+Shift+P</kbd> or <kbd>F1</kbd>

-   <kbd>Ctrl+P</kbd> to get the file switcher

-   <kbd>Ctrl+Shift+O</kbd> lets you navigate between symbols in the open file

???
- Interactive search of all commands as you type
- Key bindings are listed to the right
- Some commands give you more menus, like "File: Open Recent"
- Keymap extensions (VIM / Sublime / Atom etc...)
- Customize shortcuts
---

### .center[Folder browser]

- A folder is treated as a workspace
- Search across workspace <kbd>Ctrl+Shift+F</kbd>
- Difference between having a folder open or not
- Biggest difference is task and debugger configurations
- Folders allow workspace-specific settings
- Source control (Git) is activated]
### .center[Basic Editing]

-   All config stored in json files
-   Helpers for easy editing
???
files, easily version controled (there is a extension for that)
Keeps defaults clean - your json file sits on top

--

-   AutoSave - off by default
--

-   Hot Exit (Remembers Unsaved files) - on by default
--

-   Multiple Cursors <kbd>Alt+Click</kbd>
---
### .center[Source Control]

If your workspace folder has a .git folder, you get a great Git experience
out of the box.

- Diffing
- Staging files
- Committing
- Pushing commits
- Pulling from remotes
- Creating and switching branches

--

Try out GitLens for even more good stuff!

--

Other VCS'es should be supported soon, new SCM APIs in VS Code 1.11.
---
### .center[Panels]

- Problems
- Output
- Debug Console
- Terminal

### .center[Integrated Terminal]

- SUPER FAST
- Supports any shell!
  - PowerShell with PSReadline
  - Bash for Windows
  - Anything on Linux or macOS: zsh, fish, etc

### .center[Tasks]

- Running tasks using external programs
  - Build
  - Test
  - Deploy
- tasks.json in your workspace folder
- Configure a particular program to be run
- You can run your psake or Invoke-Build scripts!
- Output goes to Output window unless you use the new terminal runner (set `version` to `2.0.0`)
---

### .center[Useful Settings]

- `editor.fontSize`
- `editor.fontFamily`
- `editor.insertSpaces` - Spaces, not tabs!
- `editor.formatOnSave` - Format your code just before it's saved
- `editor.formatOnType` - Format your code as you type!

- `files.defaultLanguage`: Set the default language for files created with <kbd>Ctrl+N</kbd>
- `files.autoSave`: Save your files automatically as you edit them, very configurable

- `terminal.integrated.fontSize` - Override `editor.fontSize in the integrated terminal
- `terminal.integrated.fontFamily` - Override `editor.fontFamily` in the integrated terminal

### .center[References/Links]
-	[VSCode Docs](https://code.visualstudio.com/docs)
-   [Default Shortcuts](https://code.visualstudio.com/docs/getstarted/keybindings#_keyboard-shortcuts-reference)
-	[VS Code Tips and Tricks](https://github.com/Microsoft/vscode-tips-and-tricks)
-   [Visual Studio Code Insiders](https://code.visualstudio.com/insiders)
-	David Wilson - VSCode Deepdive [Recording](https://www.youtube.com/watch?v=qmO9X96v5kM&index=5&list=PLfeA8kIs7CoeQRT1xwtH-I3cfDvm8rNlk) & [Presentation](https://gist.github.com/daviwil/c28af0d545e83831b9d5b6a269b0e4c3)
- [Matt McNabb - Plaster and VSCode](https://mattmcnabb.github.io/appveyor-ci-plaster)
-   [Steve Murawski - VSCode & Git settings](https://stevenmurawski.com/powershell/2017/02/vscode-settings/)
-   [Trevor Sullivan - Why use VSCode](https://trevorsullivan.net/2017/02/24/use-visual-studio-code-write-powershell/)
- [Keith Hill - Pipeline example in VSCode](https://rkeithhill.wordpress.com/2016/03/10/preview-of-module-build-and-publish-with-visual-studio-code-and-the-powershell-extension/)
- [Get started with PowerShell development in Visual Studio Code](https://blogs.technet.microsoft.com/heyscriptingguy/2016/12/05/get-started-with-powershell-development-in-visual-studio-code/)

- [Visual Studio Code editing features for PowerShell development – Part 1](https://blogs.technet.microsoft.com/heyscriptingguy/2017/01/11/visual-studio-code-editing-features-for-powershell-development-part-1/)

- [Visual Studio Code editing features for PowerShell development – Part 2](https://blogs.technet.microsoft.com/heyscriptingguy/2017/01/12/visual-studio-code-editing-features-for-powershell-development-part-2/)

- [Debugging PowerShell script in Visual Studio Code – Part 1](https://blogs.technet.microsoft.com/heyscriptingguy/2017/02/06/debugging-powershell-script-in-visual-studio-code-part-1/)

- [Debugging PowerShell script in Visual Studio Code – Part 2](https://blogs.technet.microsoft.com/heyscriptingguy/2017/02/13/debugging-powershell-script-in-visual-studio-code-part-2/)
---

### .center[Future Meeting Dates]

- Tuesday, June 20

- Thursday, July 20

- Thursday, August 17
---

# Thanks for Coming!

## Cincinnati PowerShell User Group

### Contact Us

Twitter: [@CincyPowerShell](http://twitter.com/CincyPowerShell)

Email: [info@cincypowershell.org](mailto:info@cincypowershell.org)

### Please Thank our sponsors, we can't do it with out them!

### [Max Technical Training](https://www.maxtrain.com)

### [Sapien Technologies](http://www.sapien.com)
