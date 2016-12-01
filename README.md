## EasyiiCMS
Control panel and tools based on php framework Yii2. Easy cms for easy websites.

I love Yii2 and decided to work on the already very good EasyiiCMS. 

A few major changers compared to Easyii 

###
1. The shop mode is not very strong.
I felt that full shopping carts were much better. I use opencart myself. 
So instead this has been removed and E-catelog has been improved.

a) Category now allows unique search box and variables item rendering

b) Additional Data is stored as Json (not ideal but suitable for category < 100)
   Data is also stored in mysql as catalog_item_data  name => value pairs 
   
c) Clicking on an item image now in shop/view will open the lightbox 

d) 




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
