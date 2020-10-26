# WORK IN PROGRESS #

## Auto-Mirrored from Gitlab to Github to My Registry ##

## Please make Pull/Merge Requests on my Gitlab, Issues can be raised anywhere ##

### Available on my [Gitlab](https://gitlab.nyeprice.space/moby/request-tracker4-docker) ###

### Available on [Github](https://github.com/aneurinprice/Request-Tracker4-Docker) ###

### Available on [My Registry](registry.nyeprice.space) ###


## Docker Image
`registry.nyeprice.space/request-tracker4-docker/request-tracker4-docker:latest`



## Current Issues: ##
 
  - The way cron works is HORRIBLE, but it runs without root and it works (at least in my narrow testing)
  - There are so many horrible things in this container, BUT I put a lot of time into this and it works, so tough
  

Is based on _debian:buster-slim_

Accepts http conntections on port 8080
Checks for mail ever 5 minutes
Does NOT need ANY persistant storage (Unless you want to modify RT config on disk. Id reccomend forking this for changes like that)

Environment Variables and Default Values:

Variable	            |	Default Value |Acceptable Options
----------------------------|-----------------|-----------------------
rt_domain                   |		      | String (your.domain.here)
rt_org                      |		      | String (No Spaces) (yourname-rt)
rt_ssl                      |		      | String (For HTTP SSL) (yes) or (no)
web_path                    | 		      | String (leave blank for /) (/rt)
web_base_port               |		      | number (The EXTERNALLY ACCESIBLE PORT e.g. foo.bar:443) (443)
rt_correspond_address       | 		      | String (rt@your.domain.here)
rt_comment_address          |                 | String (rt@your.domain.here)
db_type                     | 		      | String (mysql)  See [Docs](https://docs.bestpractical.com/rt/4.4.1/RT_Config.html#Database-connection)
db_host                     | 		      | String (hostname) or (i.p.add.ress)
db_port                     |		      | Number (3306)
db_user                     |		      | String (mydbuser)
db_password                 | 		      | String (probably freaks out with certain symbols \t and $*) (random_string)
db_name                     | 		      | String (request-tracker)
mail_server		    |		      | String (mail.example.com)
mail_proto		    |		      | String (IMAP)  See [Docs](http://www.fetchmail.info/fetchmail-man.html#6)
mail_username               |		      | String (amailuser)
mail_password               |		      | String (amailpassword)
mail_ssl                    |		      | String (on) or (off)  See [Doc](http://www.fetchmail.info/fetchmail-FAQ.html#K5)
smtp_enabled		    |		      | String (yes) or (no)
smtp_host		    |		      | String (Must be hostname) (a.host.name)
smtp_port		    |		      | Number (465)
smtp_tls		    |		      | String (on) or (off)
smtp_auth		    |		      | String (on) or (off)
smtp_user		    |		      | String (username)
smtp_password		    |		      | String (password)



## Example command:   - Yes I know this is horrible to look at, It is less bad in docker-compose/Kubernetes I promise
  - `docker run -p 8080:8080 -e db_host=10.90.90.105 -e db_port=3306 -e db_type=mysql -e db_name=rt4 -e db_password=test -e web_port=8080 -e db_user=RT_System -e rt_domain=rt.nyeprice.space -e rt_org=nye-price -e mail_server=imap.whatever.co.uk -e mail_proto=IMAP -e mail_username=support@nyeprice.space -e mail_password=aCoOlPaSsWoRd -e mail_ssl=ssl -e web_base_port=8080 -e smtp_enabled=yes -e smtp_host=smtp.yourswankydomain.com -e smtp_auth=on -e smtp_tls=on -e smtp_user=your.email@address.here -e smtp_password=AfUnKyPaSsWoRd -e smtp_port=587 -e rt_correspond_address=support@nyeprice.space m08y/request-tracker4`

#test1

