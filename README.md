# GCCFind.sh
## Description

GCCFind.sh is a Bash script that compiles only C files containing a specific word, provided as an argument to the script. The script can search for C files in a directory provided as an argument, compile them and remove any previously compiled ".out" files, and optionally, perform a recursive search in all subdirectories of the directory.
Usage

To use the script, open your terminal and navigate to the directory containing the script file. Then, run the script with the following command:

                  ./gccfind.sh \<directory\> \<word\> [-r]

## Arguments

    <directory> - The path to the directory containing the C files. The script will only search for C files in the directory and not in its subdirectories.
    
    <word> - The word to search for in the C files.
    
    [-r] - (Optional) If the flag -r is added as the third argument, the script will perform a recursive search in all subdirectories of the directory and compile all C files containing the specified word.

## Example

Suppose you have a directory called my_code that contains C files, and you want to compile only the files that contain the word "function". To do that, run the following command:


                  ./gccfind.sh my_code function

If you want to perform a recursive search in all subdirectories of my_code, run the following command:


                  ./gccfind.sh my_code function -r

## Notes
<ul>
<li>The script will remove any previously compiled ".out" files in the directory before compiling new ones.</li>
<li>The compiled files will have the same name as the original C files, but with a ".out" extension instead of ".c".</li>
<li>The script uses the GCC compiler with the -w and -std=c11 flags to compile the C files. The -w flag disables all warning messages, and the -std=c11 flag sets the C language standard to C11.</li>
<li>If the script encounters any errors during the compilation process, it will print an error message to the console.</li>

</ul>
