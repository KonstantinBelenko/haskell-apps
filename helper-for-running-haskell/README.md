Certainly! Below is a sample README for the `hrun` script.

---

# hrun: A Simple Haskell Build and Run Script

## Description

The `hrun` script is a simple utility to compile and run Haskell programs from the command line. It uses the Glasgow Haskell Compiler (GHC) to compile the Haskell source code and execute it.

## Features

- Compile and run a Haskell source file with a single command.
- Option to keep or delete intermediate `.o` and `.hi` files generated during the compilation process.

## Prerequisites

- Glasgow Haskell Compiler (GHC)
- Bash shell

## Installation

1. Save the `hrun` script to a directory of your choice.

2. Make the script executable:

    ```bash
    chmod +x /path/to/hrun
    ```

3. Add the script's directory to your `PATH` environment variable. You can do this by adding the following line to your shell's profile script (e.g., `.bashrc`, `.zshrc`, etc.):

    ```bash
    export PATH=$PATH:/path/to/script/directory
    ```

    Replace `/path/to/script/directory` with the directory where you saved `hrun`.

4. Apply the changes:

    ```bash
    source ~/.bashrc  # Or the appropriate profile script for your shell
    ```

## Usage

To compile and run a Haskell file, use the following command:

```bash
hrun <filename>
```

For example, to compile and run a file named `Main.hs`:

```bash
hrun Main.hs
```

### Options

- `-s` or `--save`: Keep the `.o` and `.hi` files generated during compilation.

    ```bash
    hrun -s Main.hs
    ```

## Author

Your Name

---

Feel free to adjust the README to fit your needs. Would you like to proceed with a coding exercise, or do you have more questions?