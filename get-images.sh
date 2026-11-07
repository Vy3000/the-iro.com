#!/usr/bin/env bash
# Copies every photo (and the custom font) from the Wix site into assets/.
# Run from inside the site folder:  bash get-images.sh
# (Also run automatically on GitHub by .github/workflows/fetch-images.yml)
set -e
mkdir -p assets/img assets/fonts
W=https://static.wixstatic.com/media

get() { echo "  $2"; curl -fsSL "$1" -o "$2"; }

get "$W/bbb74e_40686d5b52564b65b750ff84ebb629fe~mv2.png" assets/img/hero.png
get "$W/bbb74e_3ddea403521d4511a0368b2e0d40c4fb~mv2.jpg" assets/img/split-left.jpg
get "$W/bbb74e_10b107d9e2284e26977d37ab4d797546~mv2.jpg" assets/img/split-right.jpg
get "$W/bbb74e_0c096d9f3a57484b92b85d262de21d93~mv2.jpg" assets/img/concept.jpg
get "$W/bbb74e_90b60f5a83e04ec790345b159b016e53~mv2.jpg" assets/img/program.jpg
get "$W/bbb74e_ddd9098f09f0430e898caf613c50f370~mv2.png" assets/img/partnerships.png
get "$W/bbb74e_15e0e48ede86451db34c8aca820b4311~mv2.jpg" assets/img/training.jpg
get "$W/bbb74e_1aa0576376e443b4a38ae300caeb583b~mv2.jpg" assets/img/closing.jpg
get "https://static.wixstatic.com/ufonts/e1207e_53ff4b0be86b4dd68bbb17521ab1385e/woff2/file.woff2" assets/fonts/iro-serif.woff2

echo "Done."
