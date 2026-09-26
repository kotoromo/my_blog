#! /usr/bin/bash

dir_name="$(date +%d%b%Y | tr '[:upper:]' '[:lower:]')"
file_name="$(date +%d_%b_%Y | tr '[:upper:]' '[:lower:]').html"
file_path="entries/$dir_name/$file_name"
echo "Creating directory $dir_name and file $dir_name/$file_name"

mkdir -p "entries/$dir_name"
touch $file_path 

cat <<EOF > $file_path
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$(date '+%B %d %Y')</title>
</head>
<body>
  <div class="introduction">
    <h1>Entry $(date '+%d-%B-%Y' | tr '[:upper:]' '[:lower:]')</h1>
    <h2>What I learned today</h2>
  </div>
  <div class="main-content">
    <h2>Some stuff I learned today</h2>
      <p></p>
  </div>
  <div class="ending-notes">
    <h2>Time invested accounting</h2>
      <div class="entry text-content">
      <p>
          <ol>
              <li>Item 1: time</li>
          </ol>
      </p>
      </div>
    <p><strong>:wq!</strong></p>
  </div>
</body>
<footer><a href="../../index.html">Back to index</a></footer>
</html>
EOF