# FetchmeURLs by BHEH 


<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">
A very powerful yet quick Recon Tool written by Black Hat Ethical Hacking
</p>

# Description

**FetchmeURLs** is a Powerful Recon Tool written by Chris 'SaintDruG' Abou-Chabké from Black Hat Ethical Hacking, designed for Bug Bounty Hunters to quickly fetch URLs for multiple domains as part of a small or large scope actively and passively. It uses **Waybackurls** and **GoBuster** to fetch URLs, combining both powers Active / Passive and then pipes the results after saving them into a new file probing each one using **httpx**. It will also display the status and progress such as how many URLs it found before and after the probing is done so that the user is aware what sort of attack vectors they can use after the Recon has been done.

### **Double Action: Passive and Active combined and Probed**

The idea is, you need to perform this once, then after you have the final URLs, you can use things like gf patterns from the URLs you fetched, to plan your next attack vectors. For examples you can use cariddi to find secrets, Nuclei on specific templates, Dalfox to find XSS Injection, SQLMap to find SQLi Injections, SSRF, Open Redirect or just manual exploration.

Recon is the most important part, if you want to one-line all that so you can then focus on the attack Vectors, this tool will help you do that accurately and does what it says it does.

# Installation

`git clone https://github.com/blackhatethicalhacking/fetchmeurls.git`

`cd fetchmeurls`

`chmod +x fetchmeurls.sh`

`./fetchmeurls.sh`

# Requirements

You need to have:

- [waybackurls](https://github.com/tomnomnom/waybackurls)
- [httpx](https://github.com/projectdiscovery/httpx)
- [gobuster](https://github.com/OJ/gobuster)
- [lolcat](https://github.com/busyloop/lolcat)

Make sure to have these 3 installed, before you run our Tool. It works on Debian, MacOS, Ubuntu, Kali Linux, Parrot.

# Screenshots

# Updates

V1.0 is Released

# Disclaimer

This tool is provided for educational and research purpose only. The author of this project are no way responsible for any misuse of this tool. 
We use it to test under NDA agreements with clients and their consents for pentesting purposes and we never encourage to misuse or take responsibility for any damage caused !

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/bheh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>


