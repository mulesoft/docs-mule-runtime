#!/bin/bash

# Branches to check
branches=("W-18823869-tech-debt-v4.3-hn" "W-18823869-tech-debt-v4.4-hn" "W-18823869-tech-debt-v4.5-hn" "W-18823869-tech-debt-v4.6-hn" "W-18823869-tech-debt-v4.7-hn" "W-18823869-tech-debt-v4.8-hn")

# The string to find and replace
old_string="xref:2.2@munit::munit-test-concept.adoc"
new_string="xref:munit::munit-test-concept.adoc"

echo "Processing branches with xref replacements..."

for branch in "${branches[@]}"; do
    echo "Checking branch: $branch"
    
    # Switch to the branch
    git checkout "$branch"
    
    # Search for the string in all files
    if grep -r "$old_string" . --include="*.adoc" > /dev/null 2>&1; then
        echo "Found matches in branch $branch"
        
        # Replace the string in all files
        find . -name "*.adoc" -type f -exec sed -i '' "s|$old_string|$new_string|g" {} \;
        
        # Check if any changes were made
        if git diff --quiet; then
            echo "No changes to commit in branch $branch"
        else
            echo "Committing changes in branch $branch"
            git add -A
            git commit -m "Replace xref:2.2@munit::munit-test-concept.adoc with xref:munit::munit-test-concept.adoc"
        fi
    else
        echo "No matches found in branch $branch"
    fi
    
    echo "---"
done

echo "All branches processed." 