#!/bin/bash
curl --silent "https://raw.githubusercontent.com/blackhatethicalhacking/Subdomain_Bruteforce_bheh/main/ascii.sh" | lolcat
echo ""
# Generate a random Sun Tzu quote for offensive security
# Array of Sun Tzu quotes
quotes=("The supreme art of war is to subdue the enemy without fighting." "All warfare is based on deception." "He who knows when he can fight and when he cannot, will be victorious." "The whole secret lies in confusing the enemy, so that he cannot fathom our real intent." "To win one hundred victories in one hundred battles is not the acme of skill. To subdue the enemy without fighting is the acme of skill.")
# Get a random quote from the array
random_quote=${quotes[$RANDOM % ${#quotes[@]}]}
# Print the quote
echo "Offensive Security Tip: $random_quote - Sun Tzu" | lolcat
sleep 1
echo "MEANS, IT'S ☕ 1337 ⚡ TIME, 369 ☯ " | lolcat
sleep 1
figlet -w 80 -f small fetchmeurls | lolcat
echo ""
echo "[YOUR ARE USING fetchmeurls.sh] - (v1.1) 2024 CODED BY Chris 'SaintDruG' Abou-Chabké WITH ❤ FOR blackhatethicalhacking.com for Educational Purposes only!" | lolcat
sleep 1
#check if the user is connected to the internet
tput bold;echo "CHECKING IF YOU ARE CONNECTED TO THE INTERNET!" | lolcat
# Check connection
wget -q --spider https://google.com
if [ $? -ne 0 ];then
    echo "++++ CONNECT TO THE INTERNET BEFORE RUNNING fetchmeurls.sh!" | lolcat
    exit 1
fi
tput bold;echo "++++ CONNECTION FOUND, LET'S GO!" | lolcat
# Prompt the user for domain names separated by spaces
read -p "Enter Domain Names separated by spaces: " domain_input

# Check if the user provided domain names
if [[ -z "$domain_input" ]]; then
  echo "No domain names provided." | lolcat
  exit 1
fi

# Create an array of domain names from the space-separated input
IFS=' ' read -ra domains <<< "$domain_input"

# Display the domains to the user
total_domains="${#domains[@]}" | lolcat
echo "Ok, I will now start my magic and fetch passively and actively URLs from these $total_domains domain(s):" | lolcat
sleep 3
for domain in "${domains[@]}"; do
  echo "- $domain"
done

# Prompt the user for a wordlist for gobuster
read -p "Enter the wordlist path for bruteforcing: " wordlist

for domain in "${domains[@]}"; do
  # Create a directory with the domain name if it doesn't exist
  if [[ ! -d "$domain" ]]; then
    mkdir "$domain"
    echo "Created directory: $domain" | lolcat
  else
    echo "Directory already exists: $domain" | lolcat
  fi

  # Perform gobuster with the provided wordlist
  echo "Starting Active URLs fetching..." | lolcat
  sleep 2
  gobuster dir -u "https://$domain" -w "$wordlist" --quiet  -o "$domain/gobuster_output.txt"

  # Perform waybackurls scan
   echo "Starting Passive URLs fetching..." | lolcat
  sleep 2
  waybackurls "https://$domain" | tee "$domain/wayback_output.txt"

  # Combine gobuster and waybackurls results into a single file
     echo "Combining Results..." | lolcat
  sleep 2
  cat "$domain/gobuster_output.txt" "$domain/wayback_output.txt" > "$domain/final_urls_combined.txt"

  # Inform the user about the total number of URLs found with a 3-second delay and use lolcat for effects
  total_urls=$(wc -l < "$domain/final_urls_combined.txt")
  echo "Total URLs found for $domain: $total_urls" | lolcat -a -d 3

  # Perform httpx probing on the combined URLs
  echo "Probing all URLs for domain $domain" | lolcat
   sleep 2
  cat "$domain/final_urls_combined.txt" | httpx -verbose > "$domain/final_urls_probed_for_$domain.txt"

  # Inform the user about the new total URLs found and the location of the final results
  new_total_urls=$(wc -l < "$domain/final_urls_probed_for_$domain.txt")
  echo "New total URLs found for $domain: $new_total_urls" | lolcat -a -d 3
     sleep 2
  # clean all lines and duplicates from results
echo "Cleaning, Analyzing please wait..." | lolcat
sed '/^$/d' "$domain/final_urls_probed_for_$domain.txt" > "$domain/final_urls_clean_for_$domain.txt"
sleep 2
echo "Final results saved to: "$domain/final_urls_probed_for_$domain.txt"
done
