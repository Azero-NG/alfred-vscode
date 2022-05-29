VSCODE_APP_EDITION="Visual Studio Code"

if [ $vscodeEdition == 'code-insiders' ]
then
  VSCODE_APP_EDITION="Visual Studio Code - Insiders"
fi

if [ $vscodeEdition == 'codium' ]
then
  VSCODE_APP_EDITION="VSCodium"
fi

VSCODE_BIN_PATH="/Applications/$VSCODE_APP_EDITION.app/Contents/Resources/app/bin/code"

echo $VSCODE_BIN_PATH
"$VSCODE_BIN_PATH" --folder-uri "$1"
