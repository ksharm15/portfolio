#!/usr/bin/python3

import hashlib
import string
import random

#hidden password hash

passwordHash = "fcb5f40df9be6bae66c1d77a6c15968866a9e6cbd7314ca432b019d17392f6f4"

length=300
randomstr = ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(length)) 
#Generate random combination



    #repeat for each word

for word in randomstr:

        word = word.rstrip()

        #hash the word

        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

        print(f"Trying password {word}:{wordlistHash}")

        #if the hash is the same as the correct password's hash then we have cracked the password!

        if(wordlistHash == passwordHash):

            print(f"Password has been cracked! It was {word}")

            break