# Export Safari Passwords on macOS

This repository is a tool for exporting Safari passwords with AppleScript on macOS.
All passwords will be exported in cleartext.

The following items will be exported as tab-delimited text.

- Website name
- Username
- Password

## 👀 Why?
Safari can't export all passwords.
Therefore, it's hard to migrate to another password manager or platform.

## ✋ Usage

### 1. Launch Safari
Select `Safari` > `Preferences` > `Passwords` from the menu.

![locked Safari passwords window](https://user-images.githubusercontent.com/3379084/96997959-b3f92400-156d-11eb-9194-e0d0610f1d06.png)

### 2. Show Safari Passwords
Unlock the passwords window and select all rows with `⌘Command＋A`

![unlocked Safari passwords window](https://user-images.githubusercontent.com/3379084/96998314-384ba700-156e-11eb-88c4-b36d81f52608.png)

By selecting all rows, all passwords will be displayed in cleartext.
This operation allows AppleScript to get the password string.

Leave all rows selected and proceed to the next step.

### 3. Run AppleScript
Open `export-safari-passwords.scpt` with Script Editor.

![Script Editor](https://user-images.githubusercontent.com/3379084/96998456-72b54400-156e-11eb-8e77-086657763d11.png)

Allow Script Editor to control the computer with System Preferences.
Add Script Editor to the Accessibility list.  
`System Preferences` > `Security & Privacy` > `Privacy` > `Accessibility`

![macOS settings](https://user-images.githubusercontent.com/3379084/96998547-96788a00-156e-11eb-98ff-e5a883adec38.png)

Before running the script, check the following.

- The Safari passwords window isn't locked and all rows are still selected
- System Preferences allow Script Editor to control the computer

Click `▶︎(Run)`

The script will probably take more than a few minutes to process.

![processing](https://user-images.githubusercontent.com/3379084/96998610-b4de8580-156e-11eb-943e-54924b4910ee.png)

### 4. Finish
The result of running AppleScript will be displayed in the Script Editor result view.
If it works, all passwords will be displayed.
Select all strings in the result view with `⌘Command＋A` and copy them with `⌘Command＋C` and have it your way:-)

![the result of running AppleScript](https://user-images.githubusercontent.com/3379084/96998658-ccb60980-156e-11eb-9b14-288405f44a3d.png)

## 🖥 Test Environment

- macOS 10.15.7
- Safari 14.0
- AppleScript 2.7

## 📝 License
[MIT](https://github.com/uchidaknet/export-safari-passwords/raw/main/LICENSE)

## 👤 Author
[Keisuke Uchida](https://twitter.com/uchidaknet)