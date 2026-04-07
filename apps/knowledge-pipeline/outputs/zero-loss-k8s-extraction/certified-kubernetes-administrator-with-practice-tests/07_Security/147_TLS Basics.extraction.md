# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics

---

## Entry 1
Type: Implementation Step  

Content:
In this video, we will look at the absolute basics of what TLS certificates are, why you need them, and how you can configure certificates to secure SSH or web servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
A certificate is used to guarantee trust between two parties during a transaction.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
For example, when a user tries to access a web server, TLS certificates ensure that the communication between the user and the server is encrypted and the server is who it says it is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Let's take a look at a scenario without secure connectivity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
If a user were to access his online banking application, the credentials he types in would be sent in a plain text format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
The hacker sniffing network traffic could easily retrieve the credentials and use it to hack into the user's bank account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Well, that's obviously not safe, so you must encrypt the data being transferred using encryption keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The data is encrypted using a key, which is basically a set of random numbers and alphabets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
You add the random number to your data, and you encrypt it into a format that cannot be recognized.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
The data is then sent to the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
The hacker sniffing the network gets the data but can't do anything with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
However, the same is the case with the server receiving the data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
It cannot decrypt the data without the key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So a copy of the key must also be sent to the server so that the server can decrypt and read the message.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Since the key is also sent over the same network, the attacker can sniff that as well and decrypt the data with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
This is known as symmetric encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
It is a secure way of encryption, but since it uses the same key to encrypt and decrypt the data, and since the key has to be exchanged between the sender and the receiver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
There is a risk of a hacker gaining access to the key and decrypting the data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And that's where asymmetric encryption comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Instead of using a single key to encrypt and decrypt data, asymmetric encryption uses a pair of keys, a private key, and a public key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Well, their private and public keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Exam Tip  

Content:
But for the sake of this example, we will call it a private key and a public lock.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
We will get back to that at the end, but for now, think of it as a key and a lock pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
A key which is only with me.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So it's private.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
A lock that anyone can access.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So it's public.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The trick here is if you encrypt or lock the data with your lock, you can only open it with the associated key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So your key must always be secure with you and not be shared with anyone else.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
It's private, but the lock is public and may be shared with others, but they can only lock something with it no matter what is locked using the public lock.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
It can only be unlocked by your private key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Exam Tip  

Content:
Before we go back to our web server example, let's look at an even simpler use case of securing SSH access to servers using key pairs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
You have a server in your environment that you need access to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Warning/Pitfall  

Content:
You don't want to use passwords as they are too risky, so you decide to use key pairs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
You generate a public and private key pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
You can do this by running the ssh keygen command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
It creates two files id underscore RSA is the private key and id underscore RSA dot pub is the public key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Well not a public key a public lock.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
You then secure your server by locking down all access to it except through a door that is locked using your public lock.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
It's usually done by adding an entry with your public key into the server's SSH authorized underscore case file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So you see, the lock is public and anyone can attempt to break through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
But as long as no one gets their hands on your private key, which is safe with you on your laptop, no one can gain access to the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
When you try to SSH, you specify the location of your private key in your SSH command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
What if you have other servers in your environment?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
How do you secure more than one server with your key pair?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
Well, you can create copies of your public log and place them on as many servers as you want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
You can use the same private key to SSH into all of your servers securely.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
What if other users need access to your servers?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
Well, they can do the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
They can generate their own public and private key pairs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
As the only person who has access to those servers, you can create an additional door for them and lock it with their public locks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Copy their public logs to all the servers, and now other users can access the servers using their private keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Exam Tip  

Content:
Let's go back to our web server example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
You see, the problem we had earlier with symmetric encryption was that the key used to encrypt data had to be sent to the server over the network, along with the encrypted data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And so there is a risk of the hacker getting the key to decrypt the data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
What if we could somehow get the key to the server safely?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
Once the key is safely made available to the server, the server and client can safely continue communication with each other using symmetric encryption to securely transfer the symmetric key from the client to the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
We use asymmetric encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So we generate a public and private key pair on the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
We're going to refer to the public lock as public key going forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
Now that you have got the idea, the ssh keygen command was used earlier to create a pair of keys for ssh purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So the format is a bit different.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
We use the OpenSSL command to generate a private and public key pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
And that's how they look.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
When the user first accesses the web server using https, he gets the public key from the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Since the hacker is sniffing all traffic.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Let us assume he two gets a copy of the public key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
We'll see what he can do with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
The user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
In fact, the user's browser then encrypts the symmetric key using the public key provided by the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
The symmetric key is now secure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
The user then sends this to the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
The hacker also gets a copy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
The server uses the private key to decrypt the message and retrieve the symmetric key from it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
However, the hacker does not have the private key to decrypt and retrieve the symmetric key from the message it received.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
The hacker only has the public key with which he can only lock or encrypt a message, and not decrypt the message.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
The symmetric key is now safely available only to the user and the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
They can now use the symmetric key to encrypt data and send to each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
The receiver can use the same symmetric key to decrypt data and retrieve information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
The hacker is left with the encrypted messages and public keys with which he can't decrypt any data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
With asymmetric encryption, we have successfully transferred the symmetric keys from the user to the server and with symmetric encryption, we have secured all future communication between them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 84
Type: Concept  

Content:
The hacker now looks for new ways to hack into your account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
And so he realizes that the only way he can get your credentials is by getting you to type it into a form he presents.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
So he creates a website that looks exactly like your bank's website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
The design is the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
The graphics are the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
The website is a replica of the actual bank's website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
He hosts the website on his own server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
He wants you to think it's secure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
Two so he generates his own set of public and private key pairs and configures them on his web server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
And finally, he somehow manages to tweak your environment or your network to route your requests, going to your bank's website, to his servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
When you open up your browser and type the website address in, you see a very familiar page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
The same login page of your bank that you're used to seeing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
So you you go ahead and type in the username and password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
You make sure you type them https in the URL to make sure the communication is secure and encrypted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
Your browser receives a key, you send encrypted symmetric key, and then you send your credentials encrypted with the key, and the receiver decrypts the credentials with the same symmetric key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
You've been communicating securely in an encrypted manner, but with the hacker's server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
As soon as you send any credentials, you see a dashboard that doesn't look very much like your bank's dashboard.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
What if you could look at the key you received from the server and say, if it is a legitimate key from the real bank server, when the server sends the key, it does not send the key alone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
It sends a certificate that has the key in it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
If you take a closer look at the certificate, you will see that it is like an actual certificate, but in a digital format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Troubleshooting  

Content:
It has information about who the certificate is issued to, the public, key of that server, the location of that server, etc. on the right you see the output of an actual certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Troubleshooting  

Content:
Every certificate has a name on it, the person or subject to whom the certificate is issued to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
That is very important as that is the field that helps you validate their identity is this is for a web server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
This must match what the user types in in the URL on his browser.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Best Practice  

Content:
If the bank is known by any other names, and if they like their users to access their application with the other names as well, then all those names should be specified in this certificate under the subject Alternative Names section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
But you see, anyone can generate a certificate like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
You could generate one for yourself saying you're Google and that's what the hacker did.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
In this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
He generated a certificate saying he is your bank's website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So how do you look at a certificate and verify if it is legit?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
That is where the most important part of the certificate comes into play.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Troubleshooting  

Content:
Who signed and issued the certificate?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Implementation Step  

Content:
If you generated a certificate then you will have to sign it by yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
That is known as a self-signed certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
Anyone looking at the certificate you generated will immediately know that it is not a certificate, because you have signed it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
If you looked at the certificate you received from the hacker closely, you would have noticed that it was a fake certificate that was signed by the hacker himself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
As a matter of fact, your browser does that for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
All of the web browsers are built in with a certificate validation mechanism, wherein the browser checks the certificate received from the server and validates it to make sure it is legitimate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
If it identifies it to be a fake certificate, then it actually warns you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Implementation Step  

Content:
So then how do you create a legitimate certificate for your web servers that the web browsers will trust?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
How do you get your certificates signed by someone with authority?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
That's where certificate authorities or CAS comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
They're well known organizations that can sign and validate your certificates for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
Some of the popular ones are Symantec, Digicert, Comodo, Globalsign, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
The way this works is you generate a certificate, signing request or CSR using the key you generated earlier and the domain name of your website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
You can do this again using the OpenSSL command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Best Practice  

Content:
This generates a Mai-bangkok CSR file, which is the certificate signing request that should be sent to the CA for signing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
It looks like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
The certificate authorities verify your details and once it checks out, they sign the certificate and send it back to you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
You now have a certificate signed by a CA that the browsers trust.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
If hacker tried to get his certificate signed the same way, he would fail during the validation phase and his certificate would be rejected by the CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
So the website that he is hosting won't have a valid certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
The CS used different techniques to make sure that you are the actual owner of that domain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
You now have a certificate signed by CA that the browsers trust.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
But how do browsers know that the CA itself was legitimate?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Exam Tip  

Content:
For example, what if the certificate was signed by a fake CA?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
In this case, our certificate was signed by Symantec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
How would the browser know Symantec is a valid CA and that the certificate was in fact signed by Symantec, and not by someone who says they are Symantec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
The CA themselves have a set of public and private key pairs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
The CA's used their private keys to sign the certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
The public keys of all the CAS are built in to the browsers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
The browser uses the public key of the CA to validate that the certificate was actually signed by the CA themselves.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
You can actually see them in the settings of your web browser under certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
They are under trusted CAS tab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
Now these are public CAS that help us ensure the public websites we visit like our banks, emails, etc. are legitimate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Warning/Pitfall  

Content:
However, they don't help you validate sites hosted privately, say within your organization.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Exam Tip  

Content:
For example, for accessing your payroll or internal email applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
For that, you can host your own private CAS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Implementation Step  

Content:
Most of these companies listed here have a private offering of their services a CAS server that you can deploy internally within your company.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Implementation Step  

Content:
You can then have the public key of your internal CA server installed on all your employees browsers, and establish secure connectivity within your organization.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
So let's summarize real quick.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
We've seen why you may want to encrypt messages being sent over a network to encrypt messages.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
We use asymmetric encryption with a pair of public and private keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Concept  

Content:
An admin uses a pair of keys to secure SSH connectivity to the servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Concept  

Content:
The server uses a pair of keys to secure Https traffic.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Implementation Step  

Content:
But for this, the server first sends a certificate signing request to a CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
The CA uses its private key to sign the CSR.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Concept  

Content:
Remember, all users have a copy of the CAS public key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Implementation Step  

Content:
The signed certificate is then sent back to the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Implementation Step  

Content:
The server configures the web application with the signed certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Implementation Step  

Content:
Whenever a user accesses the web application, the server first sends the certificate with its public key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
The user, or rather the user's browser, reads the certificate and uses the CA's public key to validate and retrieve the server's public key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Implementation Step  

Content:
It then generates a symmetric key that wishes to use going forward for all communication.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
The symmetric key is encrypted using the server's public key and sent back to the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
The server uses its private key to decrypt the message and retrieve the symmetric key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
The symmetric key is used for communication going forward, so the administrator generates a key pair for securing SSH.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
The web server generates a key pair for securing the website with Https.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
The certificate authority generates its own set of key pair to sign certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
The end user, though, only generates a symmetric key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
Once he establishes trust with the website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Implementation Step  

Content:
He uses his username and password to authenticate to the web server with the server's key pairs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Concept  

Content:
The client was able to validate that the server is who they say they are, but the server does not for sure know if the client is who they say they are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Concept  

Content:
It could be a hacker impersonating a user by somehow gaining access to his credentials.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 177
Type: Concept  

Content:
Note over the network for sure, as we have secured it already with TLS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Concept  

Content:
Maybe by some other means.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 179
Type: Concept  

Content:
Anyway, so what can the server do to validate that the client is who they say they are?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Concept  

Content:
For this, as part of the initial trust building exercise, the server can request a certificate from the client, and so the client must generate a pair of keys and a signed certificate from a valid CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Implementation Step  

Content:
The client then sends the certificate to the server for it to verify that the client is who they say they are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 182
Type: Concept  

Content:
Now you must be thinking you have never generated a client certificate to access a website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 183
Type: Concept  

Content:
Well, that's because TLS client certificates are not generally implemented on web servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 184
Type: Concept  

Content:
Even if they are, it's all implemented under the hood.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 185
Type: Warning/Pitfall  

Content:
So a normal user don't have to generate and manage certificates manually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 186
Type: Concept  

Content:
So that was the final piece about client certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 187
Type: Concept  

Content:
This whole infrastructure, including the CA, the servers, the people, and the process of generating, distributing and maintaining digital certificates is known as Public key infrastructure or PKI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 188
Type: Concept  

Content:
Finally, let me clear up something before you leave.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 189
Type: Concept  

Content:
I've been using the analogy of a key and lock for private and public keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 190
Type: Implementation Step  

Content:
If I give you the impression that only the lock or the public key can encrypt data, then please forgive me as it's not true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 191
Type: Concept  

Content:
These are in fact two related or paired keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 192
Type: Concept  

Content:
You can encrypt data with any one of them and only decrypt data with the other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 193
Type: Concept  

Content:
You cannot encrypt data with one and decrypt with the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 194
Type: Concept  

Content:
So you must be careful what you encrypt your data with.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 195
Type: Implementation Step  

Content:
If you encrypt your data with your private key, then remember anyone with your public key, which could really be anyone out there, will be able to decrypt and read your message.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 196
Type: Concept  

Content:
Finally, a quick note on naming convention.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 197
Type: Concept  

Content:
Usually certificates with public key are named CRT or PEM extension.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 198
Type: Concept  

Content:
So that's server server PEM for server certificates or client CRT or client PEM for client certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 199
Type: Concept  

Content:
And private keys are usually with extension key or dash key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 200
Type: Exam Tip  

Content:
For example server key or server key PEM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 201
Type: Concept  

Content:
So just remember private keys have the word key in them, usually either as an extension or in the name of the certificate, and one that doesn't have the word key in them is usually a public key or certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 202
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 203
Type: Concept  

Content:
Thank you for watching.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 204
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 147_TLS Basics
- File: 147_TLS Basics.txt
- Topic: TLS Basics
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
