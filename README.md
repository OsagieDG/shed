Shed is a tool that allows you to easily switch between multiple GitHub accounts without the hassle of dealing with SSH keys.

- This tool is strictly global and does not alter the GitHub user settings within IDEs such as Visual Studio or JetBrains products.

- I used a Zsh script because it is my preferred choice, but you can modify the script to use Bash, POSIX, or any other shell of your choice.

![sap](https://github.com/OsagieDG/sap/blob/main/sap.png)

## Prerequisites after Switching Accounts

You need to generate a Personal Access Token (PAT) from your GitHub account's developer settings. Configure the custom permissions you want the PAT to have, set its lifespan, and store it securely for authentication. You will need to generate a PAT for each of your GitHub accounts.

- For instance, as shown in the image below, you will need to use a PAT because you cannot use your GitHub account password to authenticate. For any Git operation, your PAT should be able to authenticate it based on the permissions you granted to that PAT. This is one of the minor inconveniences you have to deal with when using HTTPS over SSH.

![authenticate](https://github.com/OsagieDG/sap/blob/main/authenticate.png)

- The image shows a prompt for a username and password. The password, which requires a PAT, does not display in the terminal when you enter it. This behavior is configured internally by Git for security reasons.

You can also check out my blog post,  ['PATs for Secure GitHub Authentication'](https://osagiedg.me/blog1),  for further information.
