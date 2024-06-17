#!/bin/bash
echo "Created By = PATHLAVATH MUKESH "
echo "ID:CT12CCH156"


# Function to output text in red
red_text() {
    echo -e "\e[31m$1\e[0m"
}

# Function to output text in green
green_text() {
    echo -e "\e[32m$1\e[0m"
}

check_password_strength() {
    local password=$1
    local score=0
    local feedback=""
    local suggestion=""

    # Check length
    if [[ ${#password} -ge 8 ]]; then
        score=$((score + 1))
    else
        feedback+="Password should be at least 8 characters long.\n "
        suggestion+="Try adding more characters.\n "
    fi

    # Check for uppercase letters
    if [[ "$password" =~ [A-Z] ]]; then
        score=$((score + 1))
    else
        feedback+="Password should include at least one uppercase letter.\n "
        suggestion+="Add an uppercase letter.\n "
    fi

    # Check for lowercase letters
    if [[ "$password" =~ [a-z] ]]; then
        score=$((score + 1))
    else
        feedback+="Password should include at least one lowercase letter.\n "
        suggestion+="Add a lowercase letter.\n "
    fi

    # Check for digits
    if [[ "$password" =~ [0-9] ]]; then
        score=$((score + 1))
    else
        feedback+="Password should include at least one digit.\n "
        suggestion+="Add a digit.\n "
    fi

    # Check for special characters
    if [[ "$password" =~ [[:punct:]] ]]; then
        score=$((score + 1))
    else
        feedback+="Password should include at least one special character.\n "
        suggestion+="Add a special character (e.g., @, #, $).\n "
    fi

    # Check for common patterns
    if [[ ! "$password" =~ (1234|password|admin|qwerty) ]]; then
        score=$((score + 1))
    else
        feedback+="Password should not contain common words or sequences.\n "
        suggestion+="Avoid common words or sequences.\n "
    fi

    # Provide color-coded feedback based on the score
    if [[ $score -eq 6 ]]; then
        green_text "Password Strength Score: $score/6"
        green_text "Password is strong."
    else
        red_text "Password Strength Score: $score/6"
        red_text "Feedback: $feedback"
        red_text "Suggestion: $suggestion"
        red_text "Example: StrongPassword1@"
    fi
}

# Example usage
read -p "Enter a password to check: " password
check_password_strength "$password"
