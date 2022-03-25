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
     - line 26: Select copy or move
     - line 40: Select image format
     
     #### We would like to make it easier, but can't find the time to do so!
6. Change `volumes:` in docker-compose.yml to match your environment.  
7. When first activated `docker-compose up --build`  
When starting up for the second time or later `docker-compose up`  
8. Select the folder you want to labeling from the launched window.

![スクリーンショット 2022-03-25 15 55 18](https://user-images.githubusercontent.com/40049003/160072474-927e2b3d-4f8e-446b-b669-9c5960d5d111.jpg)

<img width="350" alt="image" src="https://user-images.githubusercontent.com/40049003/160072640-4f031d09-f674-4823-8756-f35f8f94431d.png">

If an error occurs, check the following
1. Is XQuartz running?
2. Is the `volumes:` setting in docker-compos.yml correct?

