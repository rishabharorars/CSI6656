#!/bin/bash

# curl -s https://www.ecu.edu.au/degrees/study-areas/science |

# curl -s https://www.ecu.edu.au/degrees/study-areas/science | sed -n '/<p>/,/<\/p>/{ /html>/d; s/<[^>]*>//g; p}' | sed 's/<p>//' | sed 's/<\/p>//' 

# curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk -F '(txt>|</a>)' '{print $2}'

# curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk 'sub(/<li[^>]*><a[^>]*>/,"")&&sub(/<\/a>.*/,"")'

# curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk -F "<p>|</p>" '{for(i=3;i<=NF;i+=3){print $i}}'

# curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk '/li/ { print $0 }' 

#-------------------
# curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk -v RS='<[^>]+>' -v ORS= '1'

curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk '/^Science/{print $0}'










