#!/bin/bash
URL='https://paul-ohl.github.io/CWE-340-Example/pages/page_'

for i in {1..200}
do
    wget -P ./hacked_files/ $URL$i.html
done