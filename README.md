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

# Usage: Use Docker
1. Install [XQuartz](https://www.xquartz.org) on Mac
2. Open XQuartz preferences and allow connections from network clients.
3. Clone this repository.
4. `cd Patch-and-label`
5. Open image-sorter2_script.py in an editor and edit the contents as follows.
     - line 20: Specify the names of labels to be classified in list format.
     - line 21: Specify your own output folder name
     
     #### We would like to make it easier, but can't find the time to do so!
6. Change `volumes:` in docker-compose.yml to match your environment.
7. `docker-compose up --build`
8. `python image-sorter2_script.py` (in container)
9. Select the folder you want to labeling from the launched window.

