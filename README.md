## EasyiiCMS

Testing

Control panel and tools based on php framework Yii2. Easy cms for easy websites.

I love Yii2 and decided to work on the already very good EasyiiCMS. 

#Installation 

1. Git Clone to Directory 

2. Create a database 

3. Install all the dependencies 
   ``` composer install ```

4. There a pathing issue with pictures so you might have to direct to route   
   
4. Import the easyii-db.sql database 
5. Login to url/admin and login useing the logins 
 




 
 
# A few major changers compared to Easyii 

###
1. The shop mode is not very strong.
I felt that full shopping carts were much better. I use opencart myself. 
So instead this has been removed and E-catelog has been improved.

a) Category now allows unique search box and variables item rendering

b) Additional Data is stored as Json (not ideal but suitable for category < 100)
   Data is also stored in mysql as catalog_item_data  name => value pairs 
   
c) Clicking on an item image now in shop/view will open the lightbox 

d) Added a Nav Menu module that allows menu features in the home page 





2. Features Removed

- Order removed 


- Guest Books 
Felt it did not add any value. 

- Email Subsribe 
SAAS like Mailchimp and opencontact do a better job. 

- News and Articles 

News seemed to be a subset of Articles. In wordpress it is. This made the news redundent.
so I removed News and there is a seperate section where it just reads the articles with Tag 'News'.

In actual fact, news is replaced by Facebook Feed. 

- added box to resize image 

- Photogallery 
Hidden / Optional 
Instragram and other social media does a better job.  
But the plug and insert are good. 

- Files 
Hidden but not removed. Feature can be reinstated 

1. Error reporting switched to no notice in index.php

### Production Ready

1. Delete Assets Folder. Cache will handle
2. Update config/web.php
   comment out force copy 
   
2. Comment out Yii Debug
3. Clear image directories 
4. 



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

Feel free to email me on noumohope@gmail.com
