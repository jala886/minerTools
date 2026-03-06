# jlManageGui

`jlManageGui.py` is a Tkinter desktop utility for batch miner operations by IP address.

## Features

- Parse IPv4 addresses from free-form text.
- Validate and normalize IPs.
- Check Bitmain warranty status from miner serial number.
- Start and stop miner locator blink LEDs.
- Force-fix pool settings with `resetPoolWithManual`.
- Save and open text/log content.
- Colorized output in the GUI log panel.

## Buttons

- `Save`: Save current panel content to a `.txt` file.
- `Open`: Load panel content from a `.txt` file.
- `check warrenty`: Query miner SN + Bitmain warranty.
- `Clear`: Clear the panel.
- `Copy`: Copy full panel text.
- `Paste`: Replace panel text with clipboard text.
- `Start Blink`: Enable locator blink for parsed IPs.
- `Stop Blink`: Disable locator blink for parsed IPs.
- `Filter IP`: Keep only valid IPv4 addresses and remove duplicates.
- `Force fix Pool`: Run force-fix pool operation for parsed IPs.
- `How to Use`: Open in-app usage help.

## Keyboard Shortcuts

- `Ctrl+S`: Save
- `Ctrl+O`: Open

## Requirements

- Python 3.10+
- `requests`
- Local project modules:
  - `antminer.py`
  - `resetPoolWithManual.py`

Install dependency:

```powershell
pip install requests
```

## Run

```powershell
python jlManageGui.py
```

## Build (PyInstaller)

Use the existing spec file:

```powershell
pyinstaller jlManageGui.spec
```

This build expects `cat.ico` for the Windows icon.

## Notes

- Warranty endpoint:
  - `https://shop-repair.bitmain.com/api/warranty/getWarranty`
- Warranty checks include retry + delay (`SLEEPTIME = 3`).
- If many warranty checks fail, wait and retry due to possible rate limits.
