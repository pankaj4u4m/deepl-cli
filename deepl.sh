#!/bin/sh
DEEPL_API_KEY=<your own key from deepl.com>
curl -s https://api-free.deepl.com/v2/translate    -d auth_key=$DEEPL_API_KEY    -d "text=$@"         -d 'target_lang=EN' -d 'source_language=DE' | jq -r '.translations[0].text'
