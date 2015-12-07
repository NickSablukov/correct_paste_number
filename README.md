# correct_paste_number
The script correctly insert a number into the field with maximum length of

* maxlenght = 8

0. "Hello World 125 Lol 25474851 sfhdft" paste ===> 25474851
0. "Hello 12345678,.: World 325236232125 Lol 25474851 sfhdft" paste ===> 12345678, 25474851


* if values greater than 1, they are inserted via ","
* If no matching values , then inserted only the numbers
