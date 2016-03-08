
# The iVillage App (2016) #
***The hyper-local social network to exchange ideas, goods, notices, recommendations, and community spirit with your immediate neighbors. Turning strangers into neighbors and neighbors into friends.***
#### The 2nd solo project in General Assembly's Web Developement Immersive program ####


*Test Log in: prince@gmail.com*
<br>
*Test Password: password*

Visit live site on Heroku at: https://sleepy-eyrie-15720.herokuapp.com

## Project features: ##
####
* Full Stack Rails MVC
* BCrypt and Sessions for:
  * Login and Logout
  * New User
  * Authorization
* Database creation with PostgreSQL
* Google Maps API with location map
* Image uploading using Carrierwave + AWS
* Additional gems: fog and figaro for securing AWS storage, and faker to create 40 new neighbors 
* Bootstrap and Simple_Form used to style the front end

**4 models:**
* Users (Neighbors) - Available as index and individual show profile pages, sorted by apartment number
* Conversations - Available as index and sortable by category, also each available as show page, comment enabled and timestamped
* Comments - Created and appended on conversation show page
* Categories - 6 categories to help organize conversation topics


