#!/bin/bash

# Generate app-config.js with environment variables
cat > /app/dist/assets/app-config.js << EOF
window._ENV_ = {
  VUE_APP_MOCKED_DATA: "${VUE_APP_MOCKED_DATA}",
  VUE_APP_SCOPE: "${VUE_APP_SCOPE}",
  VUE_APP_GITHUB_ORG: "${VUE_APP_GITHUB_ORG}",
  VUE_APP_GITHUB_ENT: "${VUE_APP_GITHUB_ENT}",
  VUE_APP_GITHUB_TOKEN: "${VUE_APP_GITHUB_TOKEN}",
  VUE_APP_GITHUB_API: "${VUE_APP_GITHUB_API}",
  VUE_APP_GITHUB_TEAM: "${VUE_APP_GITHUB_TEAM}",
  VUE_APP_SHOW_MULTIPLE_TEAMS: "${VUE_APP_SHOW_MULTIPLE_TEAMS}"
};

if(window._ENV_.VUE_APP_GITHUB_TOKEN) {
  console.warn('Using hardcoded token. This is not recommended for production.');
}
EOF

# Start serve
serve -s dist -l 8080