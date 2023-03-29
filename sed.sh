# why sed?
stream editor
manipulation text files
without the need of interaction

what can Sed do? :

subtitution text files
remove lines 
append text after given line    
insert text before certain lines

stream :
data that travels
one process to another through a pipe
one file to another through a redirection
one device to another 

formula:
# s is the function that can be replaced with r (read from a file)
sed 's/regex(pattern)'
sed 's/regex(pattern)/replacementString'
sed 's/regex(pattern)/replacementString/flags'

# subtitution  
# only the first match in every line
cat file | sed 's/i/I/'
# all matches
cat file | sed 's/i/I/g'

#a specific match
cat file | sed 's/i/I/2' --> second match at every file

# modification of file : take care of it
cat file | sed -i.bak 's/i/I/g'

# only the things that are changed and in another file  
sed 's/love/like/gw like.txt/


#using escape characters 
sed 's/\/home\/shayan/\/new\/home\/shayan/'
sed 's#/home/shayan/#new/home/shayan#' ---> any character works as a delimeter  

# how about case insensitive  matches
sed 's/regex(pattern)/replacementString/flags'
sed 's/regex(pattern)/replacementString/i'

# how to remove 
sed 'delemiter/pattern/d'

# create a configuration file then:
sed '/^$/d' conf
sed '/^$/d ; pattern2 ; pattern3' conf
sed -e '/^#/d' -e '/^$/d' conf --> for each sed command

# what to sed script 

sed -f file.sed config

# specific line of the file
sed '2 s/pattern/'
sed '2s/pattern/'
sed '/regex/ s/pattern/'
sed 'start,end s/pattern/'
sed '/regex(#User/,/^$/ s/pattern/'

