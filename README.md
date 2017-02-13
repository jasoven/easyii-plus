## EasyiiCMS



Control panel and tools based on php framework Yii2. Easy cms for easy websites.

I love Yii2 and decided to work on the already very good EasyiiCMS. 

#Installation 

1. Git Clone to Directory 

2. Create a database 

3. Install all the dependencies 
   

4. There a pathing issue with pictures so you might have to direct to route   
   
5. Import the easyii-db.sql database 

6. Login to url/admin and login useing the logins 
 

 
 
# A few major changers compared to Easyii 

###

  
- Clicking on an item image now in shop/view will open the lightbox 

- Added a Nav Menu module that allows menu features in the home page from the backend

- Re-arrange Menu items in backend 





# 2. Features Removed

Added Nav Menu Module 


- Files 
Hidden but not removed. Feature can be reinstated 

1. Error reporting switched to no notice in index.php

### Production Ready

1. Delete Assets Folder. Cache will handle
2. Update config/web.php
   $config['components']['assetManager']['forceCopy'] is auto set to true in production mode 
   
2. Comment out Yii Debug
3. Clear image directories 




#### Requirements
The main requirement is PHP >= 5.4, Imagick extension. Other requirements you can see after download.

Direcotry Structure
```
app/                main application folder
    assets/         contains assets definition
    config/         contains application configurations
    commands/       contains Console controller classes
    controllers/    contains Web controller classes
    media/          contains css, images and js scripts
    views/          contains application configurations
assets/             contains published files
runtime/            contains files generated during runtime
uploads/            contains all uploaded files
vendor/             contains dependent 3rd-party packages
```

#### You can find full information in links bellow ####
* [Homepage](http://easyiicms.com)
* [Installation](http://easyiicms.com/docs/install)
* [Demo](http://demo.easyiicms.com/)

#### Contacts ####

Feel free to email noumohope on noumohope@gmail.com

You can reach me at http://paperlesscloud.wesvault.com   (auzadventure) 


