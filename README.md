# fetchmeurls by BHEH 


<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">
A very powerful yet quick Recon Tool written by Black Hat Ethical Hacking
</p>

# Description

**FetchmeURLs** is a Powerful Recon Tool written by Chris 'SaintDruG' Abou-Chabké from Black Hat Ethical Hacking, designed for Bug Bounty Hunters to quickly fetch URLs for multiple domains as part of a small or large scope actively and passively. It uses **Waybackurls** and **GoBuster** to fetch URLs, combining both powers Active / Passive and then pipes the results after saving them into a new file probing each one using **httpx**. It will also display the status and progress such as how many URLs it found before and after the probing is done so that the user is aware what sort of attack vectors they can use after the Recon has been done.

### **Double Action: Passive and Active combined and Probed**

![Looks like it's Recon time!](https://github.com/blackhatethicalhacking/fetchmeurls/assets/13942386/cfaab7b8-8d85-4316-a354-562031ca703b)


The idea is, you need to perform this once, then after you have the final URLs, you can use things like gf patterns from the URLs you fetched, to plan your next attack vectors. For examples you can use cariddi to find secrets, Nuclei on specific templates, Dalfox to find XSS Injection, SQLMap to find SQLi Injections, SSRF, Open Redirect, Website screenshots or just manual exploration.

Because it allows you to choose a custom wordlist, you have the flexibility to choose small, medium or big wordlists for the active fuzzing part with Gobuster, as this takes time but gets you more results than passive, you control the time because you provide the wordlist according to your needs. Can work well with SecLists too.

Recon is the most important part, if you want to one-line all that so you can then focus on the attack Vectors, this tool will help you do that accurately and does what it says it does.

# Installation

`git clone https://github.com/blackhatethicalhacking/fetchmeurls.git`

`cd fetchmeurls`

`chmod +x fetchmeurls.sh`

`./fetchmeurls.sh`

Once the results are saved, make sure to check this: `final_urls_probed_for_domainname.txt`.

# Requirements

You need to have:

- [waybackurls](https://github.com/tomnomnom/waybackurls)
- [httpx](https://github.com/projectdiscovery/httpx)
- [gobuster](https://github.com/OJ/gobuster)
- [lolcat](https://github.com/busyloop/lolcat)

Make sure to have these 4 installed, before you run our Tool. It works on Debian, MacOS, Ubuntu, Kali Linux, Parrot.

# Screenshots

![fetchmeurls](https://github.com/blackhatethicalhacking/fetchmeurls/assets/13942386/b386407b-d741-4115-b1e7-965a112e3780)

![fetchmeurls2](https://github.com/blackhatethicalhacking/fetchmeurls/assets/13942386/da3b5e09-3642-427c-b065-e4395ec349c0)


# Updates

V1.0 is Released

# Disclaimer

This tool is provided for educational and research purpose only. The author of this project are no way responsible for any misuse of this tool. 
We use it to test under NDA agreements with clients and their consents for pentesting purposes and we never encourage to misuse or take responsibility for any damage caused !

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/bheh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>


