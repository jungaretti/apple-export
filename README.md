# Apple Exporter

Use these scripts to export your messages and photos from Apple.

## Usage

```bash
# Export your messages
./scripts/messages.sh <out dir>

# Activate the venv
python3 -m venv .venv
python3 -m pip install -r requirements.txt
source .venv/bin/activate

# Export your photos
./scripts/photos.sh <out dir>
```
