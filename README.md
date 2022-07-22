# `gencp` -  Coding Template Generator ⚙

Your very own coding template generator to prevent last minute hassle during coding contests.

## Supported Platforms 💻

`gencp` is currently supported only on Linux also including Windows Subsystem for Linux. Its written as a bash script.

## Installation 💾

### For using the default provided templates.

- By cloning the repository

For this step make sure you have `git` installed.

```bash
git clone https://github.com/codadept/gencp.git
cd gencp
sudo ./install.sh
cd .. && rm -rf gencp
```

This will add the required files in `/bin` directory and provide an alias to your with `gencp` by sourcing the script in your `.bashrc`

- Using the released version

Download and unzip the released version and then the steps are similar from above. Make sure you are in the directory where the `gencp` folder exists.

```bash
cd gencp
sudo ./install.sh
cd .. && rm -rf gencp
```

### For using your own templates or adding new templates for different languages.

Firstly, either clone the repository or download the released version from github. And `cd` to the `gencp` folder.


Before running `./install.sh` you need to add your templates or modify the given templates in `gencp/templates` directory.


### **IMPORTANT NOTE FOR TEMPLATES** ❗

- Your templates should be added in the `gencp/templates` directory only

- The templates should have the following header with comments according to the programming language of template.

```
@author NAME (USERNAME)
@date DATE
@contest CONTEST
```

For example

1) Template for python language should have header as

```py
# @author NAME (USERNAME)
# @date DATE
# @contest CONTEST
```

2) And for Javascript

```js 
// @author NAME (USERNAME)
// @date DATE
// @contest CONTEST
```

- The template for a particular programming language should have the file name as such
      `<extension_of_that_language>.txt`

For example

1) Template for python language should have the file name
      `py.txt`
2) And for go should be 
      `go.txt`

After adding your templates, now from `gencp` directory

```bash
sudo ./install.sh
cd .. && rm -rf gencp
```

`fish` users should add the following line in their `config.fish` file

```fish
alias gencp='/bin/gencp/gencp.sh'
```

## Usage 📋

After successful installation, usage is very simple. 

You will get the `gencp` command line tool available. Before your coding contest, run `gencp` from the terminal and you are done. 

```
$ gencp
Hey codadept! 
gencp: Tool made by @codadept (Pratik Majumdar)

This is a one time setup.

Please enter your coding directory: /home/codadept/coding/cp
Please enter your full name: Pratik Majumdar
Please enter coding handle/username: codadept

One time setup complete.


Enter the name of the coding platform: codeforces
Enter the name of the coding contest: Div 3
Enter total number of questions in the contest: 6
Please select from the given available languages:
	1) cpp
: 1
Do you want to open in VSCode? [y/n] n
Your template generated on 2022-07-23 00:40:40. Gambatte!
```

If you want to change your name or username then just modify the values in `~/.gencp` file.

## Contributing ✨

- Fork this repository

- Clone the forked repository

```bash
git clone https://github.com/<YOUR_USERNAME>/gencp.git
```

- Create a pull request and submit your changes for review. 

**NOTE** Make sure you follow the IMPORTANT NOTE FOR TEMPLATES section before contributing templates