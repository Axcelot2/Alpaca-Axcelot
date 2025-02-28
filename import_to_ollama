#!/bin/bash

# Define the correct file name based on how the first script saves context
CONTEXT_FILE="conversation_log.txt"

# Check if the file exists
if [ ! -f "$CONTEXT_FILE" ]; then
    echo "Error: File '$CONTEXT_FILE' not found!"
    exit 1
fi

echo "Importing conversation from '$CONTEXT_FILE'..."

# Send the file contents to Ollama and capture the response
response=$(cat "$CONTEXT_FILE" | ollama run "deepseek-r1:32b")

# Display Ollama's response
echo "Ollama's response:"
echo "$response"
