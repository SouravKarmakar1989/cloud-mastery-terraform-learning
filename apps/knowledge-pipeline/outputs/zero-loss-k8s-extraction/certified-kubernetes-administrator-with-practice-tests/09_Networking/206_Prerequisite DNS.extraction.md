# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS

---

## Entry 1
Type: Concept  

Content:
In this video we get introduced to DNS in Linux for the absolute beginners.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
We will discuss the basic concepts and view some commands that will help us explore DNS configuration on hosts, specifically Linux hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
We have two computers, A and B, both part of the same network, and they've been assigned with IP addresses 1921681.1 and 1.11.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
You're able to ping one computer from the other using the other computer's IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
You know that system B has database services on them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So instead of having to remember the IP address of system B, you decide to give it a name DB.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Going forward, you would like to ping system B using the name db instead of its IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
If you try to ping DB now, you would see that host A is unaware of a host named DB.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Troubleshooting  

Content:
So how do you fix that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Basically, you want to tell system A that system B at IP address 1921681.17 11 has a name DB.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
We want to tell system A that when I say db, I mean the IP 1921681.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
11.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
You can do that by adding an entry into the Etsy host file on system A, mention the IP address and the name you want your host to see.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
System B, as we told system A that the IP at 1921681.11 is a host named DB to DB.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Now gets sent to the correct IP and are successful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Now there is an important point to note here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
We told system A that the IP at 1921681.11 is a host named DB host A takes that for granted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Whatever we put in the Etsy host file is the source of truth for host A, but that need not be the truth.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Host A does not check to make sure if system B is actual name is db.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
For instance, running a hostname command on system B reveals that it is named host two, but host A doesn't care.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
It goes by what's in the host file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
You can even fool system A to believing that system B is Google.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Just add an entry into the host file with an IP mapping to google.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Then ping Google and you will get a response from system B.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So we have two names pointing to the same system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
One SDB and another as Google.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And we can use either names to reach system B.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
You can have as many names as you want for as many servers as you want in the Etsy host file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Every time we reference another host by its name from host A through a ping command or SSH command, or through any of the applications or tools within this system, it looks into its Etsy host file to find out the IP address of that host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Translating host name to IP address this way is known as name resolution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Within a small network of few systems, you can easily get away with the entries in the Etsy Hosts file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
On each system, I specify which are the other systems in the environment, and that's how it was done in the past.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Until the environment grew and these files got filled with too many entries, and managing these became too hard.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
If one of the server's IP changed, you would need to modify the entries in all of these hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And that's where we decided to move all these entries into a single server who will manage it centrally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
We call that our DNS server, and then we point all hosts to lookup that server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
If they need to resolve a hostname to an IP address instead of its own.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Etsy hosts files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So how do we do that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 40
Type: Concept  

Content:
How do we point our host to a DNS server?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Our DNS server has the IP 192.1681.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
100.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Every host has a DNS resolution configuration file at Etsy Resolv.conf.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
You add an entry into it specifying the address of the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
We say name server and point it to 192.168.1.10.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Best Practice  

Content:
And that should be it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Implementation Step  

Content:
Once this is configured on all of your hosts, every time a host comes up across a hostname that it does not know about, it looks it up from the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Best Practice  

Content:
If the IP of any of the host was to change, simply update the DNS server and all hosts should resolve the new IP address going forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
You no longer need any entries in the etc. host file in any of the hosts, but that does not mean you can't have entries in host file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
You still can.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Exam Tip  

Content:
For example, say you were to provision a test server for your own needs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Warning/Pitfall  

Content:
You don't think others would need to resolve the server by its name, so it need not be added to the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
In that case, you can add an entry into your host's Etsy host file to resolve this server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
You can now resolve the server, however, no other system will be able to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So a system is able to use hostname to IP mapping from the Etsy host file locally, as well as from a remote DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
What if you have an entry in both places, one in your Etsy host file and another in DNS?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
I have an entry in my local file set to 192.1681.115, and someone added an entry for the same host to 1921681.116 on the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
In that case, the host first looks in the local Etsy host file and then looks at the name server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So if it finds the entry in the local Etsy host file, it uses that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
If not, it looks for that host in the DNS server, but that order can be changed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
The order is defined by an entry in the file Etsy Nsswitch.conf.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
The line with the host entry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
As you can see, the order is first files and then followed by DNS files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Refers to Etsy host file and DNS refers to the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
So for every host name, the host first looks into the Etsy host file, and if it cannot find it there, it then looks at the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
This order can be modified by editing this entry in the file as per this order.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Our host would resolve the test server to 192.1681.115.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
What if you try to ping a server that is not in either list?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Exam Tip  

Content:
For example, I try and ping facebook.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Warning/Pitfall  

Content:
I don't have facebook.com in my Etsy host file, and I don't have it in my DNS server either.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So in that case it will fail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
You can add another entry into your resolv.conf file to point to a Nameserver that knows Facebook.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Exam Tip  

Content:
For example, 8.8.8.8 is a common, well-known public name server available on the internet, hosted by Google that knows about all websites on the internet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Exam Tip  

Content:
You can have multiple name servers like this configured on your host, but then you will have to configure that on all your hosts in your network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
You already have a name server within your network configured on all the hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
So in that case, you can configure the DNS server itself to forward any unknown host names to the public name server on the internet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Best Practice  

Content:
You should now be able to ping external sites such as facebook.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Until now, we've been just trying to reach systems with their names like web DB, NFS, etc. but we just try to ping Facebook at facebook.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
What is this name with the W-w-w?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And at the end it's called a domain name, and it is how IP's translate to names that we can remember on the public internet, just like how we did for our hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
Now, the reason they are in this format, separated by dots, is to group like things together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
The last portion of the domain name, the dot coms, the dot net, dot edu, dot org, etc. are the top level domains that represent the intent of the website.com for commercial or general purpose dot net for network, dot edu for educational organizations And for non-profit organizations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Let's look at one in particular.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
In Google's case, the dot is the root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
That's where everything starts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Dot com is the top level domain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Google is the domain name assigned to Google, and w-w-w is a subdomain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
The subdomains help in further grouping things together under Google.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Exam Tip  

Content:
For example, Google's map service is available at maps.google.com, so maps is a subdomain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
Google's storage service is available at drive.google.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Mobile apps are available at maps.google.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Google's email service are available at mail.google.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
You can further divide each of these into as many subdomains based on your needs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
So you begin to see a tree structure forming.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
When you try to reach any of these domain names, say Maps.google.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
From within your organization, your request first hits your organization's internal DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
It doesn't know who apps or Google is, so it forwards your request to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
The internet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Exam Tip  

Content:
On the internet, the IP address of the server serving Maps.google.com may be resolved with the help of multiple DNS servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
A DNS server looks at your request and points you to a DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
Serving as a DNS server looks at your request and forwards you to Google, and Google's DNS server provides you the IP of the server serving the apps applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
In order to speed up all future results, your organization's DNS server may choose to cache this IP for a period of time, typically few seconds up to few minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
That way, it doesn't have to go through the whole process again each time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
So that was out in the public.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
What about your organization?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
Your organization can have a similar structure too.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Exam Tip  

Content:
For example, your organization could be called as my company.com and have multiple subdomains for each purpose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
The W-w-w for external facing website.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
Mail my company.com for accessing your organizations mail drive for accessing storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
Paid or Company.com for accessing the payroll application, HR for accessing HR application, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Implementation Step  

Content:
All of these are configured in your organization's internal DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
The reason we discussed all of this is to understand another entry in the Etsy Resolv.conf file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Implementation Step  

Content:
Remember, this is the file where we configured the DNS server to be used for our host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
With that, we were able to resolve servers in your organization with just their names like web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
We have now introduced more standard domain names like web dot my Company.com or my Company.com, etc. now when you ping web, you can no longer get a response.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Of course, this is because we are trying to ping web, but there is no record for by the name web on my DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
Instead it is web company.com so you have to use web dot company.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
Now I can understand if someone outside our company wants to access our web server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
He would have to use web company.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
But within our company, your own company, you want to simply address the web server by its first name, web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
Just like how you address other members in your family simply by their first names, which is not the case when someone outside your family addresses them using their full names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
So what do you do to configure web?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
To resolve my web?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
My company.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
You want to say when I say web, I mean web dot Company.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
For that, you make an entry into your host's Etsy resolv.conf file called search and specify the domain name you want to append.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
Next time you try to ping web, you will see it actually tries web dot company.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
Now your host is intelligent enough to exclude the search domain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
If you specified a domain in your query like this, you may also provide additional search domains like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So it would mean.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
When I say web, I mean web dot my Company.com or web product Company.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
So your host would try searching all of these domain names when you look for a host name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Finally, a word about a record types.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
So how were the records stored in the DNS server?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
We know that it stores IP to host names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
That's known as a records.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
Storing IPv6 to host names is known as quad records mapping.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
One name to another name is called CNAME records.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Exam Tip  

Content:
For example, you may have multiple aliases for the same application, like a food delivery service may also be reached at eat or hungry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
That's where a CNAME record is used.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
Name to name mapping.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
There are many more, but that's all we're going to look at for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
Now, ping may not always be the right tool to test DNS resolution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
There are a few other tools as well, such as Nslookup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
You can use Nslookup to query a hostname from a DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
But remember Nslookup does not consider the entries in the local Etsy host file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
So if you add an entry into the local Etsy host file for your web application, and if you try to do an nslookup for that web application, it is not going to find it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
The entry for your web application has to be present in your DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
Nslookup only queries the DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
The same goes with dig.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
Dig is another useful tool to test DNS name resolution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
It returns more details in a similar form as is stored on the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Troubleshooting  

Content:
In the upcoming Practice Exercises section, you will practice configuring and troubleshooting DNS in a lab environment on actual systems through some fun and challenging exercises.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 155
Type: Implementation Step  

Content:
And in the next lecture, we'll look at how to set up an actual DNS server on a system where we will use DNS as our DNS solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Warning/Pitfall  

Content:
Well, thank you so much for watching, and don't forget to subscribe to my channel for more videos like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 206_Prerequisite DNS
- File: 206_Prerequisite DNS.txt
- Topic: Prerequisite DNS
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
