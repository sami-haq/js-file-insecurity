So you have a list of subdomains of your scope.

Now you want to find out all the js file of your scope subdomain.

Run the below command to get all the js file urls from the subdomain you collect.

cat all_sub.txt | katana | grep js | tee js_file.txt

all_sub = Subdomain you found aginst your scope
katana = Tools by projectdiscovery
grep js = only to collect the js included urls
tee js_file.txt = show output while it is writing all the output in js_file.txt

After these step you can run nuclei(anothe tools from project discovery with templete http/exposures)

nuclei -l js_file.txt -t template_path -o js_findings.txt

Or you can run the given bash script. The given script job is to download the js file from the js_file.txt one by one
and it will create a folder and save all.

Befor running the script make the script executable.
Now run the script with the js_file.txt

./js_file_content js_file.txt

After running the script it will create folder and will save all the js file in that folder.

Now you can run grep command in that directory to find sensitive information from those js file.
You can use the below keyword
aws_access_key
aws_secret_key
apikey
passwd
pwd
heroku
slack
firebase
swagger
aws_secret_key
awskey
password
ftp
jdbc
db
sql
secret_jet
config
admin
pwd
json
gcp
htaccess
.env
ssh_key
.git
access_key
secret_token
oauth_token
oauth_token_secret
