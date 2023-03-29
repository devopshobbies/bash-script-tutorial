 #!/bin/bash -x 
 
echo "Starting script..."
date

# Some code that might cause an error
echo "Attempting to divide by zero..."
echo "1 / 0" | bc

echo "End of script."