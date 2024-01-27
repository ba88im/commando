command="$*"


echo "Generating script..."

# Run the generate.py script while suppressing its output messages
{
    mySystemPrompt="Construct a single-line Bash command to perform the specified action. Use FILENAME to denote any unspecified filenames. Provide the command in its simplest form suitable for a basic system. Begin your response with the command only. DO NOT wrap the bash command in ```bash COMMAND```"
    promptFormat="ONLY give me the simplest bash command to: ${command} COMMAND ONLY AND NOTHING ELSE"

    bashResponse=$(python generate.py \
    --repo TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF \
    --gguf tinyllama-1.1b-chat-v1.0.Q4_0.gguf \
    --prompt "<|system|>
    ${mySystemPrompt}</s>
    <|user|>
    ${promptFormat}</s>
    <|assistant|>")

    explanationFormat="Teach me about this bash command ${bashResponse} in 2-3 numbered bullet points."

    explanationResponse=$(python generate.py \
    --repo TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF \
    --gguf tinyllama-1.1b-chat-v1.0.Q4_0.gguf \
    --prompt "<|user|>
    ${explanationFormat}</s>
    <|assistant|>")
} > /dev/null 2>&1

outputFormat="◇ Your script:\n│\n${bashResponse}\n│\n◇ Explanation:\n│\n${explanationResponse}\n│\n◆ Run this script?\n│  ○ ✅ (Y)es\n│  ○ ❌ (C)ancel\n└"
echo -e "$outputFormat"
