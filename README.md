# TASK ONE: PASSWORD STRENGTH CHECKER

## Project Details

- **Name:** PATHLAVATH MUKESH
- **Company:** CODTECH IT SOLUTIONS
- **ID:** CT12CCH156
- **Domain:** CYBER ECURITY AND ETHICAL HACKING
- **Duration:** 20th May 2024 to 20th July 2024
- **Mentor:** SRAVANI GOUNI

### Overview

This Bash script evaluates the strength of a password based on several criteria and provides color-coded feedback to the user. It checks for the following aspects:

- **Length:** Should be at least 8 characters long.
- **Uppercase Letters:** Should include at least one uppercase letter.
- **Lowercase Letters:** Should include at least one lowercase letter.
- **Digits:** Should include at least one digit.
- **Special Characters:** Should include at least one special character.
- **Common Patterns:** Should not contain common words or sequences (e.g., "1234", "password", "admin", "qwerty").

The script utilizes color-coded output to indicate the strength of the password based on the criteria evaluated.

### Functions

#### `red_text` and `green_text`

These functions define text colors for displaying feedback:
- `red_text`: Outputs text in red color.
- `green_text`: Outputs text in green color.

#### `check_password_strength`

This function takes a password input, evaluates it against the defined criteria, and provides feedback based on the evaluation. Depending on the score achieved (out of 6), it displays whether the password is strong or suggests improvements.

### Key Highlights

- **Security Enhancement:** Enhances password security by ensuring passwords meet recommended criteria.
- **User-Friendly Feedback:** Provides clear feedback and suggestions for improving passwords.
- **Script Customization:** Easily customizable for additional password strength criteria or specific requirements.
  
### Example Usage

1. **Clone the repository:**
- `git clone https://github.com/2002hackerr/CODTECH-Task1.git`
- `cd CODTECH-Task1`

2. **Run the script:**
Then give the executable permissions
- `chmod +x CODTECH-Task1`
- `./CODTECH-Task1.sh`

3. **Follow the prompt to enter a password.**


4. **Output Example:**
- `Enter a password to check: MySecurePassword1@`
- `Password Strength Score: 6/6`
- `Password is strong.`

