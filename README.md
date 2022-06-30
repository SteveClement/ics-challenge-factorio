# ICS Challenge Factorio Mod

## Requirements

For easy deployment *jq* is required.

## Changelog

TODO: Not working, factorio changelog has a different format - https://forums.factorio.com/viewtopic.php?t=67140

To generate the changelog automagically you need to install *gitchangelog*.

```
python3 -m venv venv
source ./venv/bin/activate
pip install -U setuptools pip
pip install gitchangelog
```

## Debugging

If the mod does NOT show check any *error* lines in:

```
~/.factorio/factorio-current.log
````
