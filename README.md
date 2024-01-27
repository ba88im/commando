# commando
 your friendly terminal buddy!

Introduction
commando is a convenient tool that allows you to execute AI-generated scripts using a simple ai command in your terminal. It's designed to streamline your workflow by providing quick and easy access to AI assistance for generating Bash commands and their explanations.

Installation
To set up the AI Terminal Helper, follow these steps:

## Step 1:

```
pip install -r requirements.txt
```


## Step 2: 
Ensure that your helper.sh script is executable by running the following command:

```
chmod +x /path/to/helper.sh
```

## Step 3: 
Create a symbolic link to your helper.sh script in a directory that is in your PATH. A common choice is /usr/local/bin or ~/bin (if ~/bin is in your PATH).


```
ln -s /path/to/helper.sh /usr/local/bin/ai
```

Replace /path/to/helper.sh with the actual path to your script.


## Usage

Once installed, you can use the ai command from anywhere in your terminal. For example:

```
ai help me with this
```

This command will execute the AI Terminal Helper, which will generate a Bash command based on your input and provide an explanation for it.

**Note**
If ~/bin is not in your PATH and you prefer to use it, add it to your PATH by modifying your shell configuration file (like .bashrc or .zshrc) with:
bash
Copy code
export PATH="$HOME/bin:$PATH"
After modifying, reload the configuration file with source ~/.bashrc or the equivalent for your shell.

## Conclusion
- Thank you to the great mlx team at Apple for an amazing example (this project is a fork from this [example](https://github.com/ml-explore/mlx-examples/tree/main/llms/gguf_llm)

## TODO:
- Use the [finetuned model](https://huggingface.co/ba8im/phi-2-bash) for increased dependability on complex bash command


