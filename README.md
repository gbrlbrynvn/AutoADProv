<h1>PowerShell Script: Automate Active Directory Provisions</h1>

<h2>Description</h2>
This is a PowerShell script used in my <a href="https://github.com/gbrlbrynvn/ActiveDirectoryHomeLab">Active Directory Home Lab</a> that automates provisions from a list of names. This script reads a list of names from a file, creates user accounts in Active Directory with specific attributes, and assigns a default password to each account. The usernames are constructed from the first letter of the first name and the last name, all in lowercase. The script also creates an Organizational Unit named "_USERS" and ensures that the user accounts are not protected from accidental deletion within this OU.
<br />

<h2>Language and Libraries Used</h2>

- <b>PowerShell</b>

<h2>Environments Used </h2>

- <b>Visual Studio Code</b>

<h2>Script </h2>

- <b>[AutoADProv.ps1](https://github.com/gbrlbrynvn/AutoADProv/blob/main/AutoADProv.ps1)</b>


<h2>Use-case:</h2>

<p align="center">
This is the output when used in my <a href="https://github.com/gbrlbrynvn/ActiveDirectoryHomeLab">Active Directory Home Lab.</a> <br/>
<img src="https://i.imgur.com/7gxSlhS.png" height="80%" width="80%"/>
<br />
<br />
It reads through this "names.txt" file, which was created from a random name generator.  <br/>
Since this is a home lab, this will suffice, but this is easily configurable. <br/>
<img src="https://i.imgur.com/vt547Vr.png" height="80%" width="80%"/>
<br />
<br />
<b>I'll work on more and better PowerShell scripts in the future to further hone my scripting and automation skills!</b>
</p>
