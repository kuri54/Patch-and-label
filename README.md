# Patch and label tool
Improved with reference to https://github.com/ashray17aman/Patch-and-label.  
Script for categorizing and labeling images.Copy and move images in a folder to a subfolder.  

We have only verified activation on a Mac.

# Improvements from the original
- Tkinter UI displays correctly even when MacOS is set to dark mode.
- Tkinter window is visible in Docker.
- Other minor error corrections.

# Rquirements
- numpy
- pandas
- Pillow
- python-dateutil
- pytz
- six
- easygui
- pyyaml

# Usage: Use Docker
1. Install [XQuartz](https://www.xquartz.org) on Mac
2. Open XQuartz preferences and make the following settings in the Security tab. Restart XQuartz after setting up.
   - Authenticate connections: OFF
   - Allow connections from network clients: ON  
3. Clone this repository.
4. `cd Patch-and-label`  

~~5. Open image-sorter2_script.py in an editor and edit the contents as follows.~~  
~~**We would like to make it easier, but can't find the time to do so!**~~  
-> **Update!!!!!**
Allowed to change settings in the yml file.

5. Open `config.yml` and edit its contents.
6. Change `volumes:` in docker-compose.yml to match your environment.  
7. `docker-compose up --build` 
For the second and subsequent launches, run `docker-compose up`.
However, if you change the contents of `config.yml`, you must execute `docker-compose up --build` to reflect the changes.
8. Select the folder you want to labeling from the launched window.

![スクリーンショット 2022-03-26 23 50 37](https://user-images.githubusercontent.com/40049003/160245002-6b03b809-e195-4bbd-b461-5a840591b2ed.jpg)

<img width="350" alt="image" src="https://user-images.githubusercontent.com/40049003/160072640-4f031d09-f674-4823-8756-f35f8f94431d.png">

If an error occurs, check the following
1. XQuartz running?
2. `volumes:` setting in docker-compos.yml correct?
3. Allow full disk access for XQuartz in your MacOS preferences?
