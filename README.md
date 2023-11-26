# mail-ip script

This script mails the ip address of the host where it lives on. In combination with webhooks from IFTTT and crontab this can be executed at startup of the server.

## setup

You can change the variables at the top of the script to your liking.

FIRSTNUMBER is the variable which contains the first number of an ip address to match.

Create an webhook event with an action called 'email'.

IFTTURL is your URL on IFTTT which sends the mail when the script executes.
Fill in <your_event> with the event name you chose.
Fill in <your_key> with your key.

This can be found on the webhooks documentation page at [webhooks documentation](https://ifttt.com/maker_webhooks). You can test your event at this page.

And the last thing to do is set a rule in crontab

        @reboot <the absolute path to your script>

This should be all.

