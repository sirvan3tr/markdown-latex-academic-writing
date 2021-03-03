# Introduction
Web security and data breaches are increasing. In 2019-2020 the UK data controllers reported (via the UK’s ICO \footnote{Information Commissioner’s Office}) a total of 2,353 [@HIstoricalCyberIncident2020] cyber incidents—as shown in Figure \ref{fig:1920pie}. In Q2 of 2020-2021—July ’20 to Oct ’20—the UK data controllers reported 737 cases [@UKICOData2020]. In three months there were over 30% of the total cases in the previous year. This is putting pressure on organisations; there are organisations that don’t have adequate funds or knowledge in protecting themselves from security attacks. Startups, for example, are fragile initiatives that are always in need of resources. Some businesses believe they don’t have enough guidance from public offices [@502SeniorIT2019]. How can these firms equip themselves with the best know-how in minimising web security and data breaches?

Our intent is to understand how web systems were compromised in order to identify lessons to be learnt and potential research opportunities. The benefit of this is that organisations—of all sizes—can learn to reduce similar security risks to their businesses by learning from the mistakes and mishap of other organisations.

\begin{figure}
\centering
\textbf{UK Cyber Incidents 2019-20}\par
\textbf{Total Reported Incidents: 2,353}\par\medskip
\begin{tikzpicture}
    \pie[radius=1.75]{49/Phishing ,25/{Unauthorised access} ,9/Other ,7/Ransomware ,4/Malware ,4/Misconfigs*, 1/Brute Force}
\end{tikzpicture}
\caption{Reported cyber incidents to UK’s Information Commissioner’s Office from April 2019 to April 2020 \cite{HIstoricalCyberIncident2020}. These are reported incidents by data controllers. Does not reflect total incidents. * Hardware and Software Misconfiguration}
\label{fig:1920pie}
\end{figure}

Data and system breaches are costly. Complex regulatory landscapes and new attack vectors, such as Ransomware, make predicting the costs difficult. IBM reports that the average cost of a data breach is $3.86 million [@IBMCostData2020], and it takes 280 days on average to wrap up a data breach. There are direct costs in legal fees and regulatory fines; indirect costs in losing customers, productivity and other opportunity costs. A third of UK businesses lost customers after a security breach [@502SeniorIT2019], according to a survey of Senior IT professionals.

By revealing the negative consequences of the attacks we can utilise the *framing effect* [@tverskyFramingDecisionsPsychology1981]—a cognitive bias where one makes a decision based on the positive or negative connotations of the evidence or statement given to them. Moreover, understanding how organisations behave—before and after a security breach—can reinforce the need for regulators and their decisions based on their campaigns.

## Contributions
Our aim is to contribute to the security of the web. We will raise awareness in the strategies used by cyber-criminals by analysing recent security attacks and data breaches. Our contributions are as follows.

- *Data:* Using news reports from open-source media outlets, we analysed 60 web security and data breaches that occurred in 2020. We gathered the cause, date, amount and type (PII, finance, health, etc.) of data released, and other information such as fines and the hackers behind the attack.
- *Lessons Identified and Opportunities:* Using the data, we identified a set of lessons-to-be-learnt and research opportunities. We believe our contributions will be valuable to industry professionals and the research community.

## Paper Organisation
In Section \ref{sec:background} we explain the key methods of attack and known threats. Section \ref{sec:methodology} outlines our methodology in collecting and analysing the data. We then show our results in Section \ref{sec:results}, which is then further explained in Lessons Identified and Opportunities in Sections \ref{sec:li} and \ref{sec:opportunities} respectively. Section \ref{sec:discussion} discusses some of the groups of attackers behind the analysed incidents, and the limitations of the study. Lastly, we end on our conclusions in \ref{sec:conclusion}.

# Background {#sec:background}
In this section we explain the common types of attacks that will be referred to later.

## Credential Stuffing Attack
Attackers use Credential Stuffing Attack (CSA) to gain unauthorised  account and system access. They do this by using compromised login information from previous data breaches [@CredentialStuffingSoftware2020]. CSA owes its success to the inherent weaknesses in the Password. Such weaknesses include: re-using passwords across different systems and using weak passwords.

The increasing number of data breaches has made this form of attack viable. The heap of data that is often dumped on the internet increases the feasibility of CSA. This accelerating threat has led to the likes of SEC [@SecuritiesExchangeComission2020]  issuing warnings to the industry [@SECGovCybersecurity2020].

CSA is one of the many consequences of dumped private data. Others include identity fraud and attempted blackmailing by emailing the victims of the data breaches [@ScamEmailsDemand2020].

## Man-in-the-Browser
Man-in-the-Browser (MitB) is a malware (Trojan) and a type of Man-in-the-Middle attack that is able to tap into the browser’s I/O [@ManinthebrowserSoftwareAttack2020]. With this privileged access, the attackers are able to manipulate the user’s browser activities with stealth.

Form grabbing is a type of MitB that has one focus: to skim and steal contents of forms that the user is filling out. Form grabbers are often malicious JavaScript code running on compromised websites.

MitB malware is prevalent in the financial sector and payment gateway systems. Using this method, the attackers maximise their financial gain. A notable example of MitB—in the form of form grabbing— is the British Airways’ incident: the attackers were able to manipulate a third-party JavaScript running on British Airways’ payment page. This manipulation allowed them to scrape payment data as they were entered on the site by British Airways’ customers [@klijnsmaBritishAirwaysBreach2018].

# Methodology {#sec:methodology}
In this section we will explain the method we used in gathering and analysing the data. Our intent is to understand how web applications were attacked, and consequently categorise these attacks. Using open-source news reports, we gathered web security data breaches that were reported in 2020. These incidents were then analysed for the method of attack used, number of data records breached, type of data breached, dates and other meta data.

## Methods of Attack
We categorised the incidents using the following categories.

- *Man-in-the-Browser*: Any code-injections or malicious third-party scripts running on the website.
- *Phishing*:  Incidents that were based on phishing techniques to gain access to a particular system.
- *Unprotected Database*: This is strictly not an attack but a mistake from an organisation. Examples include databases or stores (such as AWS S3 bucket) that can be accessed without any credentials over the web.
- *Credential Stuffing Attack (CSA)*: CSA would include system access that was enabled by re-using compromised authentication information or reselling insecure accounts that the attackers found to be insecure using CSA.
- *Unknown*: The methods of attack or breach could not be identified based on the open-source material.
- *Other*: This includes SQL Injection, Supply Chain Attacks, insecure code and other methods that have not yet been described.

## Categories of Data
Each breach led to a loss of data; although each database or sets of records can have an arbitrary format, one can categorise them as follows.

- *Personally Identifiable Information (PII)*: Any data that could identify a specific person.
- *Healthcare*: Any health related information about the individual.
- *Financial*: Partial or full bank card information.
- *Authentication*: Records that contain an email address or password. The password can be hashed or be in any other state.

# Results {#sec:results}
Table \ref{table:main} summarises our results. We analysed 60 attacks that were reported in 2020. We looked at each attack and data breach and came to a conclusion on the cause and type of attack. Our data sources were open-source material.

\input{results_table.tex}

# Lessons Identified {#sec:li}
This section explains the lessons identified in detail.
The results—as summarised in Table \ref{table:main}—show a variety of attack vectors. We identified a mixture of sophisticated attacks and incidents as a result of poor organisational cultures and processes. This is useful as it allows us to draw lessons based on a verity of attack methods.

We aim to avoid the repetition of common security guidance that are given by the likes of UK’s National Cyber Security Centre [@UKNCSCAdvice2020]. However, It is evident that the Password remains to be the weak component in majority of these incidents. All Credential Stuffing Attacks occur due to the weaknesses inherent in the Password. Recommendations by NCSC [@NCSCPasswordRecommendations2020], NIST [@grassiDigitalIdentityGuidelines2021], and others [@AuthenticationOWASPCheat2020] [@krebsPasswordDonTs2020] [@kwekuaPasswordPolicyRecommendations2020] will serve as good references for authentication security.

## Security Architecture and Culture
An array of *unsecured databases* and repeated successful attacks imply a poor information security culture. Though this lesson-identified is not technical in nature it is—evidently—essential. Culture is a set of behaviours; certain behaviours are needed to ensure the smooth and secure continuation of any operation. The Beaumont Health’s incidents led to email accounts being accessed by the attackers. Their emails was breached twice within months. The takeaway for us is in creating a culture that is security aware. Government backed schemes such as the UK’s Cyber Essential [@CyberEssentials2020] or CISA in US [@CyberEssentialsCybersecurity2020] are guides and certification programmes to build a cyber-aware culture at industry and economy level—this has to be communicated down to the lowest employee in your organisation. The SABSA Enterprise Security Architecture [@SABSAInstituteEnterprise2020] is an example of a guiding framework in developing a security architecture at various levels in an organisation.

Building a culture that is information security aware—from the beginning—is your best chance of avoiding cyber attacks. Based on our results, reasons why we believe having the right culture can help are as follows.

- *Training*.  Phishing and poor passwords are the result of either bad discipline or lack of knowledge. You can communicate the expected standards and teach your employees enough knowledge for them to be able to question poor information security behaviour. You will then have to enforce it.
- *Behaviour*.  The SolarWind attacks [@HighlyEvasiveAttacker2020] is evidence to poor information security discipline even if there is knowledge that the behaviour can have negative consequences. Hence, having a self-reinforcing culture is a must.
- *Sales and Procurement*.  With an information security mindset, your employees will question the security of your potential suppliers.

In the UK, 40% of businesses do not have a response plan to inform customers of a breach [@502SeniorIT2019]. Having a response plan to a security breach will enable a business to return to full operating capability quicker.


## Malware
The Man-in-the-Browser and form grabber incidents were sophisticated and targeted at specific organisations that ran a particular e-commerce platform. One key takeaway is that **any** file can contain malware.

A string of open-source analyses, from May 2020 to Dec 2020, reveals a common thread amongst the MitB attacks and form grabbers. Obfuscation of malicious JavaScript within ```img``` and ```.css``` files is a new discovered technique that open new discussion topics on browser security. Whilst hiding skimmer or sniffer JavaScripts within an image [@lealSkimmerLoadedImage2020] seems clear, other innovative attacks are more revealing:

- ***Timed response:*** Favicon returning a JavaScript rather than a ```.png``` file from a malicious server when the user is on a checkout form [@seguraCreditCardSkimmer2020]; the returned code overrides a checkout form with a malicious one.
- ***EXIF metadata:*** Image headers being used to hide malicious credit card skimming JavaScript code. In one example [@seguraWebSkimmerHides2020], Malwarebytes Labs show how the Copyright field (In the EXIF metadata) is used to transport the obfuscated JavaScript code.
- ***CSS steganography:*** In one analysis [@sinegubkoCSSJSSteganographyFake2020], D. Sinegubko shows us how the attackers hide malicious JavaScript code in a ```.css``` file.

The following examples of malware-based attacks against established companies demonstrates the extent and the method of the attacks.

- ***Boom! Mobile:*** Malwarebytes Labs report [@teamMobileNetworkOperator2020] that a criminal related to the **Fullz House** entity had infiltrated the ```boom.us``` site. A one liner loaded a JavaScript file from ```https://paypal-debit.com/cdn/ga.js```. ```BASE64_ENCODED_URL``` is the fake Google Analytics ```.js``` file (we have removed it to improve readability).

```
document.write(atob(BASE64_ENCODED_URL));
```

- ***Claire’s:*** Sansec [@sansecMagecartStrikesCorona2020] indicates that the attackers were able to access the store’s source code and manipulate any file. How they were able to access the code is yet unknown. However, it is noted that the stores are hosted on the Salesforce Commerce Cloud (previously known as Demandware). The obfuscated malware was added to the store’s ```app.min.js``` file. It is using ```jQuery``` functions to attach to the checkout form’s button. Once this checkout button is clicked, an image from the attacker’s server is loaded into the DOM, then the customer’s information is appended to the image file and exfiltrated via a ```GET``` request.

```
// Exfiltration via .svg GET
https://claires-assets.com/
            .../claires-logo-desktop.svg?
            {USERS_INFORMATION}
```

- ***Sweaty Betty:*** A UK-based retailer had its source code infiltrated [@abramsUKRetailerSweaty2019]. The attacker injected their malware into a ```custom.js``` [@SweatyBettyCustom2019] file. The store was—like Claire’s—ran on Salesforce Commerce Cloud (Demandware) platform. The obfuscated JavaScript code communicated with the following URL.

```https://www.cdcc02.com/widgets/main.js```.

- ***Hannah Andersson:*** A children’s clothing company in the USA also suffered from a MitB attack; the extent of the attack is unknown but the court-filings suggest c.200,000 victims. Sources suggest that the firm was not aware of the attack until law enforcements notified them of the attack; this could be due to victims reporting fraud whom were consequently linked back to Hanna Andersson. The e-commerce platform that was used was operated by Salesforce [@SalesforceUnifiedCloud2021] (as with **Sweaty Betty** and **Claire’s**.) The main lesson here is that even if you outsource the IT operations and platform, there are business, legal and PR consequences to web and data breaches.


[//]: # (OPPORTUNITIES)
[//]: # (OPPORTUNITIES)
[//]: # (OPPORTUNITIES)
[//]: # (OPPORTUNITIES)
# Opportunities {#sec:opportunities}
This section looks at possible research questions that can lead to innovations in organisational processes and security tools.

## Authentication
Limitations of the Password has been voiced for many decades [@adamsUsersAreNot1999]; Bonneau et al. describe its continued domination as a “major embarrassment to security researchers” [@bonneauQuestReplacePasswords2012]. The introduction of passwordless authentication, such as WebAuthn [@balfanzWebAuthenticationAPI2020], promise a secure end-user authentication. The industry also recognises this issue—evident by a major funding [@wiggersPasswordlessTechStartup2020] of a passwordless authentication startup [@EliminatingPasswordsJust2021].

Despite hashing a user’s password, there have been opportunities for the attackers to crack the passwords via brute-force or dictionary attacks. Selling the data is one way of monetising it, it can also have other consequences:

- *Credential Stuffing Attack:* The evidence show that J.Crew and Zoom were amongst those that suffered from CSA. Whilst there are methods in preventing this attack, the main threat vector stems from data breaches and the inherent weakness in the Password.
- *Blackmailing*.  The attackers would send an email to the victim; they would include revealing information such as the victim’s plaintext password. They would then threaten them with false information.

## Defence against Malware
Man-in-the-Browser malware can come in the form of a compromised browser or client-code (form grabbers). Adding to Section \ref{sec:li}, we provide two further opportunities in the fight against MitB and form grabbers.

- ***Circumventing the Threat:*** Can we circumvent the threats even if a website or device is compromised? FormL3SS [@almasiProtectingUsersCompromised2020] and Fidelis [@eskandarianFideliusProtectingUser2019] provide some evidence that we can circumvent threats originating from malicious front-ends or malicious devices.
- ***Provenance:*** Majority of the MitB attacks in \ref{table:main} begun with the attackers gaining access to the source code. Therefore, testing the codebase and understanding where the changes are coming from will help mitigate risks. Tracking unwarranted code insertions through the analysis of its provenance will help fight intruders.

## Zero-Storage Policy and Malware
Table \ref{table:main} shows how data is: left open, breached, or skimmed on entry. There are risks in storing and handling sensitive data. We will now look at one research opportunity where we can reduce the risks by not storing sensitive data at all.

Let’s take payment data as an example. To enable faster transaction e-commerce sites store payment data on their servers. This increases the risks that were described above. We can avoid these risks by allowing the user to complete their transactions on another application or device. With an out-of-band transaction, we can maintain user experience and security.
- Security.   We can segregate codebases to minimise breaches. A compromised front-end will no longer be a threat to the user.
- User experience.  The user does not have to re-enter banking card details again.

## The Data Security Estimate
For leaders of organisations, the security field can be daunting. Whilst they can get help in the form of consultants, the cash strapped startups and small businesses have to get help elsewhere. So, can we create a framework that can guide an individual in analysing and planning the security of their system and data? Such a framework can provide the following benefits through questioning and hand-railing.

- *Risk:* The framework helps to discover and plan for risks. What are the security and data related risks associated to your product, business and technology?
- *Systematic Processes:* We have seen that systems are breached because of human errors; creating new processes can help minimise human errors.
- *Contingency Plans:* Creating what-if scenarios can be helpful in thinking through potential scenarios.
- *Regulations:* What are the data and web security related regulations in my country? And how and when should I interact with them?
- *Response Plans*: Do you have a response plan in place to inform your customers of a possible data breach? What are the processes in plan to deal with a system compromise? How will you ensure business continuity?

## PII and Identity
Majority of the incidents in our results led to breaches of PII. These compromised organisations, such as Hannah Andersson, were forced to provide free credit checks and identity protection for the effected customers. This is because the customer is at risk of being a victim of identity theft and fraud. For a criminal to steal an identity, they only need knowledge of someone’s basic personal information (name, address and date of birth, etc.).

We have opportunities in *defending* the data from being compromised or *defending* systems and organisations from fraud. Should we depend on *secrecy* and *what-you-know* identity checks? Can legal and decentralised national identity systems neutralise this attack vector? Identity checks or know-your-customer (KYC) processes slow down customer onboarding. Therefore, future innovation and research should consider a balance between security and business costs.

## PII Uniform Resource Identifier (URI)
Can the standardisation of storage and communication schemes of PII improve security and usability? Such a PII URI can provide the following benefits.

- *Privacy:* Regulations, such as GDPR in Europe [@DataProtectionEU2018] and CCPA in California [@CaliforniaConsumerPrivacy2018], demand the right for the owner of a dataset to have visibility and access to it. With a URI scheme, there is no ambiguity about how individuals can get access to their data over the web.
- *Separation of databases:* Organisations can separate PII data from other operational data.
- *Security:* Creating standardised methods of storing and accessing data can improve security. Furthermore, organisations can separate PII data from other data.
- *Communication:* PII and other sensitive data are regularly sent over insecure email systems. With a user friendly system built on a URI scheme, one can communicate PII across to other PII storage systems.
- *Regulation:* This URI scheme and systems can have options to communicate with regulators to report data breaches or create automatic reports. This can improve the relationship between the regulator and the business.

# Discussion {#sec:discussion}
Our intent has been to review web security and data breaches in 2020 in order to draw lessons-learnt and research opportunities from them. These incidents have led to the release of millions of personally identifiable information (PII), payment, and health information. These incidents have had drawbacks for all the stakeholders: customers are facing identity theft and fraud, the organisation itself is losing business and has to compensate customers and face the wrath of the regulators. Majority of the discussions have been covered in the previous sections; here, we will delve into the last point about the criminals behind the attacks and the limitations of the study.

Our results showed that the Magecart group was behind most of the *MitB* attacks and ShinyHunters behind most of the *Unknown* attacks. This over reporting of ShinyHunters could be because they openly sell their data online. Their odd behaviour of, sometimes, making the data available for free adds to the mystery and potential for their name cropping up on open-source media. Nevertheless, the evidence shows a network of individuals that have the knowledge, capability and will to carry out these attacks.

The results reinforce the need for regulators: from Virgin Media leaving their marketing database open to PhotoSquared leaving a trove of information in an open AWS Storage Bucket, numerous organisations left their databases and storage instances unprotected. The lacklustre behaviour of many organisations and evident lack of learning from past behaviour reinforces the need for strict measures by the regulators—such as the GDPR policy in the European Union.

Reported security breaches by various news sources are mostly high-profile cases. Due to this, we assume that we have a small portion of the security breaches and cannot relate our findings to a total figure of web attacks and data breaches. Nevertheless, our findings are respectable given the sample size and *reported* security breaches. We have been able to draw on lessons identified and gather useful data for future research.

The cases we have covered have all been reported through English speaking media outlets and all the organisations have either been European or North American. We do not believe that the nature of the threats and the attack vectors will be different in other countries.

# Conclusion {#sec:conclusion}
With web security and data breaches on the rise, we asked how we can learn from the recent security breaches? We analysed 60 web and data breach incidents in 2020 using open-source reports from the web. We labelled each incident with the type of attack, type of data breached, number of data records breached and other metadata. We used the data to come to a set of lessons-identified and research opportunities. Our evidence justify the existence of data and privacy policies despite the pressure and barriers they put up. Organisational leaders need to put emphasis on security to create a culture that is self-reinforcing at all levels. Research opportunities exist in creating a security framework, The Data Security Estimate, that can help organisations analyse and plan the information security aspect of their organisation.

Form grabbers and Man-in-the-Browser threats are innovating in their delivery, obfuscation and exfiltration. These malware have the potential to hide in all types of files. There are opportunities in improving browser security to detect misbehaving files. We also identified opportunities in handling PII using a PII URI scheme, and communicating sensitive information using out-of-band systems.
The Credential Stuffing Attacks are evidence of the weaknesses in the Password. The quest to create a more secure—yet usable—alternative authentication scheme to the Password carries on.

Further work includes maintaining and automating the gathering and sorting of the data. This could become a collective effort in the community to create an accessible data source for web attacks and data breaches.