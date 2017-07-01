#######################################
#             TWITTER BOT             #
#######################################

#Twitter App Consumer Key
ConsumerKey="YOUR_TWITTER_APP_CONSUMER_KEY"

#Twitter App Consumer Secret
ConsumerSecret="YOUR_TWITTER_APP_CONSUMER_SECRET"

#Twitter App Access Token
AccessToken="YOUR_TWITTER_APP_ACCESS_TOKEN"

#Twitter App Access Token Secret
AccessTokenSecret="YOUR_TWITTER_APP_ACCESS_TOKEN_SECRET"

#Installing package twitteR
install.packages("twitteR")

#loading package twitteR into R environment
library(twitteR)

#setting up twitter authentication
setup_twitter_oauth(consumer_key = ConsumerKey,consumer_secret = ConsumerSecret,
                    access_token = AccessToken,access_secret = AccessTokenSecret)

#getting the system's current time 
current_time=Sys.time()

#creating a text for the tweet
tweet_matter=paste("This is automated tweet at ",current_time,
                   " #twitterbot using #r #jobseeker  #job #data #experiment")

#send out the tweet with the above text
tweet(tweet_matter)

#updating status with Amsterdam's lat and long
updateStatus(text = "This is test for updateStatus using R from Amsterdam, Netherlands",
             lat = 52.3702, long = 4.8952)

#updating status with Melbourne's lat and long along with an image file
updateStatus(text = "I am updating this from RStudio with image from Melbourne, Australia",
             lat = -37.8136, long = 144.9631,mediaPath = "C:\\Users\\user\\Desktop\\Untitled1.png")

#updating status with my home town's lat and long
updateStatus(text = "I am uploading this from Patansaongi, my home town :-)",
             lat = 21.3303, long = 79.0207)
