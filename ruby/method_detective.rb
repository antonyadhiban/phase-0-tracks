# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".gsub("o","oo")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete("T")
"The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".ljust(0)
# => "Elementary, my dear Watson!"

"z".ord #found using google
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#Its the ascii value of the letter


"How many times does the letter 'a' appear in this string?".count("a")
# => 4