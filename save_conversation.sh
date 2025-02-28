#!/bin/bash

LOG_FILE="conversation_log.txt"

echo "Starting Ollama conversation. Type 'exit' to quit."

while true; do
    echo -n "You: "
    read -r user_input

    # Debugging line to check user input
    echo "DEBUG: user_input='$user_input'"

    # Corrected exit condition
    if [ "$user_input" = "exit" ]; then
        echo "Conversation saved to $LOG_FILE."
        break
    fi

    # Send input to Ollama and capture response
    ollama_response=$(echo "$user_input" | ollama run "deepseek-r1:32b")

    # Save conversation history to file
    echo "You: $user_input" >> "$LOG_FILE"
    echo "Ollama: $ollama_response" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"

    # Print Ollama's response
    echo "Ollama: $ollama_response"
done
