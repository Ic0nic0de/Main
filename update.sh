rm Packages.bz2
rm Packages
#!/bin/bash
./dpkg-scanpackages -m ./debs > Packages
bzip2 Packages
git add --all
git commit -m "~"
git push -u origin master