#!/bin/bash
# Date: 2024/05/27
# Description: Generates pages for the website, some are confidential, others public

# Set variables
ITERATIONS=150

for i in $(seq 1 ${ITERATIONS}); do
  # Get random boolean
  RANDOM_BOOLEAN=$((RANDOM % 2))
  # use printf to pad the number with zeros
  FILE_NAME=$(printf "pages/page_%03d.html" "$i")

  # Create a basic html page
  echo "<!DOCTYPE html>
<html>
  <head>
    <title>Official document</title>
  </head>
  <body>
" > "$FILE_NAME"
  # Generate page
  if [ ${RANDOM_BOOLEAN} -eq 0 ]; then
    echo "<h2>THIS DOCUMENT IS HIGHLY CONFIDENTIAL</h2>
    <h3>Under no circumstances should it be shared with the public</h3>
    " >> "$FILE_NAME"
  else
    echo "<h2>This is a public official document</h2>
    <br/>
    " >> "$FILE_NAME"
  fi

  echo "<p>
Duis finibus libero vitae nulla lobortis, a auctor lectus scelerisque. Nulla in bibendum ligula. In tincidunt, ex ut tincidunt maximus, nunc ante vestibulum lacus, nec vestibulum quam nisi ut nulla. Mauris blandit nisi augue, ut fringilla eros porttitor id. Nullam cursus ligula ac porta porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer mi ex, placerat quis arcu eget, faucibus commodo diam. Aenean cursus placerat mi, sed sodales ex feugiat maximus. Etiam iaculis et arcu vitae dignissim.
<br/><br/>
Phasellus pulvinar facilisis hendrerit. Aliquam erat volutpat. Vivamus imperdiet neque mi, vitae luctus neque maximus sed. Sed tellus quam, viverra a mi vel, accumsan viverra felis. In eu nisi est. Vivamus eu nulla viverra, semper enim in, feugiat eros. Aliquam eros nulla, ullamcorper ac augue id, mollis scelerisque ex. Nunc molestie malesuada fermentum. Curabitur faucibus sed neque sed scelerisque.
<br/><br/>
Sed venenatis, nunc in commodo consequat, sapien mi bibendum magna, id luctus augue turpis sed massa. Nunc non diam sapien. Integer blandit facilisis accumsan. Donec ac venenatis quam. Suspendisse volutpat id nisi pretium facilisis. Maecenas felis ipsum, fringilla at pellentesque ut, blandit in est. Fusce vulputate auctor metus vitae vehicula. Nulla pellentesque augue vitae magna condimentum rhoncus. Quisque fermentum libero tortor, a gravida justo dapibus et. Vivamus vel orci rhoncus, semper mi nec, accumsan nisi. Vivamus luctus lectus nulla, sit amet consectetur lorem sollicitudin sed. Donec eu nulla sit amet est malesuada mollis. Suspendisse elit leo, aliquam nec auctor in, condimentum eget ipsum. Cras ut nibh sit amet lacus mattis lacinia. Suspendisse finibus massa sit amet arcu eleifend, et ullamcorper ligula hendrerit.
</p>" >> "$FILE_NAME"

  # Close the html page
  echo "</body>
</html>" >> "$FILE_NAME"
done
