# README for Cars

## Author Information
- **Name:** [Laura Beatty]
- **Course:** [CENG 298]
- **Assignment:** Cars
- **Date:** [01/27/2026]

## Program Description
[Write 2-3 sentences in your own words describing what this script does and its purpose.]

This program updates and prints a file of your old cars. Depending on what option you pick you can add or view the txt file.

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `animals-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
[Explain in 3-5 sentences how your script works. Include information about:]
- The case statement that checks the input 
- The * wildcard pattern that handles unknown inputs
- How the loop knows to exit on '3'

I used a while statement that only exits when the user puts '3' to the terminal. I used a case statement to switch what happens between the different options. The wildcard then applies to all other inputs that I did not account for. 


## Testing Results
[Describe your testing process and results. Include:]
- Example valid inputs you tested 
- Example invalid inputs
 
All numbers 1, 2, and 3. 1 being adding a car. 2 bring printing the list. and 3 being exit. 
Anything other than any of these numbers will throw an error message and ask the user to try again. 

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding case statements, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]

https://linuxize.com/post/bash-concatenate-strings/

chatgpt
prompt:
i want it to print year: 1456 make: honda model: fit rather than it all being together

answer:
✅ Best approach: format when listing (recommended)

Your file still contains:

1456:honda:fit


Change option 2 to this:

2)
    if [[ ! -f "$FILE_PATH" ]]; then
        echo "No cars in inventory yet."
    else
        echo "Car Inventory:"
        while IFS=":" read -r year make model; do
            echo "year: $year make: $make model: $model"
        done < "$FILE_PATH"
    fi
    ;;

Output will look like:
year: 1456 make: honda model: fit
year: 2020 make: toyota model: camry

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
