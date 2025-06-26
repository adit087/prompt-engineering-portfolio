#!/bin/bash

# Set your repo name
REPO_NAME="prompt-engineering-portfolio"
mkdir -p $REPO_NAME
cd $REPO_NAME

# Create core files
touch README.md LICENSE .gitignore links.md

# Write basic README
cat <<EOL > README.md
# Prompt Engineering Portfolio by Aditya 👨‍💻

This repo contains my learning, experiments, and prompt projects using ChatGPT and other LLMs.

## Folders:
- basics/: zero-shot, few-shot, persona prompts
- use-cases/: blog writing, emails, chatbot style
- advanced/: chain of thought, langchain
- projects/: real-world prompt apps
- certificate/: proof of completion

---
Built with ❤️ by Aditya
EOL

# Create folder structure
mkdir -p basics use-cases advanced projects/assets certificate

# Add sample files
echo "Prompt: Explain gravity to a 6-year-old" > basics/zero-shot.md
echo "Prompt: Create blog ideas for AI tools" > use-cases/blog-writer.md
echo "Prompt: What’s 17 * 43? Think step by step." > advanced/chain-of-thought.md

mkdir -p projects/resume-writer-prompt
echo "Prompt: Write a resume for a Python developer." > projects/resume-writer-prompt/prompt.txt

# Initialize git
git init
git add .
git commit -m "Initial commit: Prompt Engineering Portfolio"

echo "✅ Folder created & Git initialized!"
echo "📂 Now you can push to GitHub using:"
echo "git remote add origin <your-repo-url>"
echo "git push -u origin main"
