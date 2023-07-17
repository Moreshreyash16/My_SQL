-- ASCII(): This function is used to find the ASCII value of a character.
select ascii('s');

-- LEN(): This function is used to find the length of a word.
select length('shreyash_more');

-- CONCAT(): This function is used to add two words or strings.
select concat('shreyash',' ','More') as full_name;

-- CONCAT_WS(): This function is used to add two words or strings with a symbol as concatenating symbol.
select concat_ws(' - ','hello','shreyash','how are you?') as greeting;

-- FIND_IN_SET(): This function is used to find a symbol from a set of symbols returns a count.
select find_in_set('a','a,e,i,o,u') as vowel_count;

-- INSTR(): This function is used to find the occurrence of an alphabet returns first position of occurence.
select instr('shreyash','r') as occurence_poisition;

-- LCASE(): This function is used to convert the given string into lower case.
select lcase('SHREYASH') as lower_case;

-- UCASE(): This function is used to convert the given string into lower case.
select ucase('shreyash') as upper_case;

-- REPEAT(): This function is used to write the given string again and again till the number of times mentioned.

select repeat('shreyash ',3) as repeated;

-- REPLACE(): This function is used to cut the given string by removing the given sub string
select replace('aaaaashreyashaaaaa','aaaaa','-') as new_word;

-- REVERSE(): This function is used to reverse a string.
select reverse('shreyash') as reverse_word;

