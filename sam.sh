#!/bin/bash

# Function to generate random IP for different countries
generate_ip() {
    local country=$1
    case "$country" in
        "China") echo "223.6.6.$((RANDOM % 255 + 1))" ;;
        "Germany") echo "46.101.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Netherlands") echo "188.166.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Germany VIP") echo "5.0.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Qatar") echo "20.20.46.$((RANDOM % 255 + 1))" ;;
        "Saudi Arabia") echo "62.0.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Bahrain") echo "94.72.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Egypt") echo "2.50.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Turkey") echo "46.0.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Dubai") echo "2.48.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Oman") echo "46.40.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Japan") echo "124.99.$((RANDOM % 9 + 1)).$((RANDOM % 255 + 1))" ;;
        "Emirates") echo "5.38.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "Singapore") echo "152.75.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "United Kingdom") echo "3.10.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        "UK VIP") echo "143.110.$((RANDOM % 255 + 1)).$((RANDOM % 255 + 1))" ;;
        *) echo "Invalid selection" ;;
    esac
}

# Function to clear the screen
clear_screen() {
    clear
}

# Function to print text with a delay
print_with_delay() {
    local text=$1
    local delay=${2:-0.05}
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:i:1}"
        sleep "$delay"
    done
    echo
}

# Function to print the header
print_header() {
    header="🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥
🟥🟥⬜⬜⬜⬜⬜⬜⬜⬜⬜🟥🟥
🟥🟥⬜⬛⬜⬜⬛⬛⬛⬛⬜🟥🟥
🟥🟥⬜⬛⬜⬜⬛⬜⬜⬜⬜🟥🟥
🟥🟥⬜⬛⬜⬜⬛⬜⬜⬜⬜🟥🟥
🟥🟥⬜⬛⬛⬛⬛⬛⬛⬛⬜🟥🟥
🟥🟥⬜⬜⬜⬜⬛⬜⬜⬛⬜🟥🟥
🟥🟥⬜⬜⬜⬜⬛⬜⬜⬛⬜🟥🟥
🟥🟥⬜⬛⬛⬛⬛⬜⬜⬛⬜🟥🟥
🟥🟥⬜⬜⬜⬜⬜⬜⬜⬜⬜🟥🟥"
    print_with_delay "$header"
}

# Main function
# Main function
main() {
    print_header
    echo "Do you want to use VIP 🏆 or DNS_IPV4?"
    read -p "Enter 'VIP' or 'DNS_IPV4': " choice

    case "$choice" in
        "VIP")
            echo "You selected VIP. Please enter the country name:"
            read -p "Country: " country
            ip=$(generate_ip "$country")
            echo "Generated IP for $country: $ip"
            ;;
        "DNS_IPV4")
            echo "You selected DNS_IPV4. Please enter the country name:"
            read -p "Country: " country
            ip=$(generate_ip "$country")
            echo "Generated IP for $country: $ip"
            ;;
        *)
            echo "Invalid selection. Please enter either 'VIP' or 'DNS_IPV4'."
            ;;
    esac
}

# Execute the main function
main