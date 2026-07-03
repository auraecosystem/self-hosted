npm install -g @vscode/vsce
$ cd myExtension
$ vsce package
# myExtension.vsix generated
$ vsce publish
# <publisher id>.myExtension published to VS Code Marketplace
vsce login <publisher id>

https://marketplace.visualstudio.com/manage/publishers/
Personal Access Token for publisher '<publisher id>': ****************************************************

The Personal Access Token verification succeeded for the publisher '<publisher id>'.
vsce publish minor
# if you use VS Code
code --install-extension my-extension-0.0.1.vsix

# if you use VS Code Insiders
code-insiders --install-extension my-extension-0.0.1.vsix

