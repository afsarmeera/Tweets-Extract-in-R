packages <- c("twitteR","ROAuth")#"openssl","base64enc"
### checking if packages are already installed and installing if not
check.install.load.Package<-function(package_name){
  if(!package_name%in%installed.packages()){
    install.packages(package_name)
  }
  library(package_name,character.only = TRUE)
}
for(package in packages){
  check.install.load.Package(package)
}


api_key ="nwLe0MTW9c5s5QBzTgK3pWK37" # your api_key
api_secret = "6Rr6jiOtWlAxXZ372tQjycnw2mL8GNbn9Aelmxn8qY2NdXYO9k"
 
access_token="1914174908-b35IxU3Aen7YdM4eiB14CDabRXONpUtBYuCvHKp"
access_token_secret ="8BQzzxqaIuAppPaNTcHqGJmxPLC6LTVHE7GFHWsgyS3vd"

credential<-OAuthFactory$new(consumerKey=api_key,
                             consumerSecret=api_secret,
                             requestURL="https://api.twitter.com/oauth/request_token",
                             accessURL="https://api.twitter.com/oauth/access_token",
                             authURL="https://api.twitter.com/oauth/authorize")

credential$handshake()
1180837
setup_twitter_oauth(api_key,api_secret,access_token,
                    access_token_secret)



search.string <- "#trump"
no.of.tweets <- 1000

RohingyaTerrorReality.Tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en",)



df <- do.call("rbind", lapply(RohingyaTerrorReality.Tweets, as.data.frame))
View(df)
