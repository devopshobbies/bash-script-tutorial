#useful commands that are not mentioned throughout the course

#Use the basename command to extract the filename from the full path, and then use parameter expansion to remove the file extension:
filename="/path/to/myfile.txt"
basename=${filename##*/}
echo ${basename%.txt}

#Use tar to compress and extract files:
# compress files into a tarball
tar -czvf myfile.tar.gz /path/to/files

# extract files from a tarball
tar -xzvf myfile.tar.gz

#Use the find command to search for files with the desired extension, and then use a loop to perform an action on each file:
for file in $(find /path/to/directory -type f -name "*.txt"); do
    # do something with each file
done

#Use sort to sort the contents of a file:
sort myfile.txt

# Use uniq to remove duplicate lines from a file:
uniq myfile.txt

# Use wc to count the number of lines in a file:
wc -l myfile.txt


# Use cut to extract a specific section of a line:
echo "my name is John" | cut -d' ' -f3

#Use tr to translate characters:
echo "hello" | tr 'l' 'z'

#Use tee to write to multiple files at once:
echo "hello" | tee file1.txt file2.txt



