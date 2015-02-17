# dotvim
This is my .vim repo based on pathogen and mostly targeted for Go

## Installation
first install vim; if on mac osx simply install it with brew: 
```
brew install vim --with-lua --override-system-vim
```  

Then go to your home directory, clone the repo and rename it to `.vim`  
```
cd
git clone https://github.com/JeffMerlet/dotvim.git --recursive
mv dotvim .vim
```  

Do not forget to run the follwoing command to set git to use `vim` instead of the default `vi`:  
```
git config --global core.editor vim
```


