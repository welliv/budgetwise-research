#!/bin/bash
# init-repo.sh - Quick setup for budgetwise-research repo skeleton

set -e

REPO="budgetwise-research"

mkdir -p $REPO/{evidence,references,skill}

# Basic README if not present
if [ ! -f $REPO/README.md ]; then
cat > $REPO/README.md << 'EOF'
# budgetwise-research

A financially responsible research skill for Hermes agents.

See the full README for details.
EOF
fi

# .gitignore
cat > $REPO/.gitignore << 'EOF'
*.log
.env
.DS_Store
evidence/*.png
evidence/*.jpg
evidence/*.mp4
EOF

# evidence/README
cat > $REPO/evidence/README.md << 'EOF'
# Evidence

Proof of real MPP payments.

See references/verifiability-evidence-checklist.md
EOF

echo "Repo skeleton ready in ./$REPO"
echo "Run: cd $REPO && git init"
