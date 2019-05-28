# Approach

I read that webhooks are used to build integrations which subscribe to certain events in GitHub.com.
My approach was to:
1. **Creating the webhook:**
* Made my localhost public by using [ngrok](https://ngrok.com/)
(ngrok only hosts the server temporarily, other services could be used to for a more permanent basis)
* Added the *.ngrok.io/payload url to the url entry (all the POST requests will be send to ```/payload```)
* Selected **push** as the only event to trigger a webhook
* Did not use *secret* or *ssl* as it did not seem quite necessary for the task at hand
* Added the webhook
2. **Configuring the Server**
* Made a Sinatra app to listen to POST requests on ```/payload``` on the local server
* Used bash commands in the app itself to implement the automation whenever a push request is made.
* Used ```git pull``` in the respective repositories whenever event is triggered.
3. **Testing**
* Tested the setup by cloning a repository into two separate folders
* Pushed changes from one folder to github and respective changes were made in the other folder on the local machine automatically.


# Findings

Found that the webhook can be used to send two type of data, JSON and x-www-form-urlencoded. Maybe this data can be used to deal with various issues which might rise due to merge conflicts and branch related issues.


# References

https://developer.github.com/webhooks
http://sinatrarb.com/
https://ngrok.com/


#### Learned
It is a really amazing way to automate git. It can be used to automate deployement of various web applications both on client and remote server.
