FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

--------------------------------------------
Outlook Exchange Setup 4.0.1
� Copyright 2008-2010 William Smith
bill@officeformachelp.com

Except where otherwise noted, this work is licensed under
http://creativecommons.org/licenses/by/3.0/

This script may be freely modified for personal or commercial
purposes but may not be republished for profit without prior consent.

If you find this script useful or have ideas for improving it,
please let me know. It is only compatible with Outlook for Mac 2011.

--------------------------------------------

This script assists a user with the setup of his Exchange account
information. Below are basic instructions for using the script.
Consult the Outlook Exchange Setup 4.0 Administrator's Guide
for complete details.

1.	Customize the "network and  server properties" below with information
	appropriate to your network.

2. 	a. 	Launch Microsoft Outlook under a Mac OS X account that has no
		Outlook identity. Identities are found in
		~/Documents/Microsoft User Data/Office 2011 Identities.
	
	b. 	Close the Outlook Setup Assistant window and select
		Outlook --> Work Offline.
	
	c.	In the Finder, create a folder called "Outlook Setup Script"
		in /Library/<your company name>/ or any single location
		where all users have Read permissions.
	  
	d. 	Copy your customized script to the "Outlook Setup Script" folder.
		It should be saved as a compiled script, not an application.
		You can rename the script if you wish.
		
	e.	In Outlook select Tools --> Schedules... and create a New Schedule.
		Name: Outlook Setup
		When: At Startup
		Action: Run AppleScript, choose the saved script
			in the "Outlook Setup Script" folder.
		Click the "OK" button. Your script should be set to run
			at "Next Startup".
		
	f.	Configure any preferences, schedules, signatures, etc.
		This can include Default address format, Default time zone, fonts,
		encoding for attachments and more.
		
	g.	Quit Outlook.
		
	h.	Depending on your admin tools, you can push the script to the
		/Library folder of a new computer and the
		"~/Documents/Microsoft User Data/Office 2011 Identities/Main Identity" folder and
		to the "/System/Library/User Template/English.lproj/Documents/Microsoft User Data/
		Office 2011 Identities" folder.
		
		New users on a machine will have the pre-configured Main Identity
		folder copied to their home folders the first time they log in to a computer.
		
		The first time they launch Outlook, the "Exchange Setup" schedule
		will run the script.
		
		The script will disable the Schedule once it has run and will set Outlook
		to work online.
	  
	  
This script assumes the user's full name is in the form of "Last, First",
but is easily modified if the full name is in the form of "First Last".
It works especially well if the Mac is bound to Active Directory where
the user's short name will match his login name. Optionally, a dscl command
can be used to pull the user's EMailAddress from a directory service.

     � 	 	N 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 O u t l o o k   E x c h a n g e   S e t u p   4 . 0 . 1 
 �   C o p y r i g h t   2 0 0 8 - 2 0 1 0   W i l l i a m   S m i t h 
 b i l l @ o f f i c e f o r m a c h e l p . c o m 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   s c r i p t   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l 
 p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h i s   s c r i p t   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   i t , 
 p l e a s e   l e t   m e   k n o w .   I t   i s   o n l y   c o m p a t i b l e   w i t h   O u t l o o k   f o r   M a c   2 0 1 1 . 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   a s s i s t s   a   u s e r   w i t h   t h e   s e t u p   o f   h i s   E x c h a n g e   a c c o u n t 
 i n f o r m a t i o n .   B e l o w   a r e   b a s i c   i n s t r u c t i o n s   f o r   u s i n g   t h e   s c r i p t . 
 C o n s u l t   t h e   O u t l o o k   E x c h a n g e   S e t u p   4 . 0   A d m i n i s t r a t o r ' s   G u i d e 
 f o r   c o m p l e t e   d e t a i l s . 
 
 1 . 	 C u s t o m i z e   t h e   " n e t w o r k   a n d     s e r v e r   p r o p e r t i e s "   b e l o w   w i t h   i n f o r m a t i o n 
 	 a p p r o p r i a t e   t o   y o u r   n e t w o r k . 
 
 2 .   	 a .   	 L a u n c h   M i c r o s o f t   O u t l o o k   u n d e r   a   M a c   O S   X   a c c o u n t   t h a t   h a s   n o 
 	 	 O u t l o o k   i d e n t i t y .   I d e n t i t i e s   a r e   f o u n d   i n 
 	 	 ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 1 1   I d e n t i t i e s . 
 	 
 	 b .   	 C l o s e   t h e   O u t l o o k   S e t u p   A s s i s t a n t   w i n d o w   a n d   s e l e c t 
 	 	 O u t l o o k   - - >   W o r k   O f f l i n e . 
 	 
 	 c . 	 I n   t h e   F i n d e r ,   c r e a t e   a   f o l d e r   c a l l e d   " O u t l o o k   S e t u p   S c r i p t " 
 	 	 i n   / L i b r a r y / < y o u r   c o m p a n y   n a m e > /   o r   a n y   s i n g l e   l o c a t i o n 
 	 	 w h e r e   a l l   u s e r s   h a v e   R e a d   p e r m i s s i o n s . 
 	     
 	 d .   	 C o p y   y o u r   c u s t o m i z e d   s c r i p t   t o   t h e   " O u t l o o k   S e t u p   S c r i p t "   f o l d e r . 
 	 	 I t   s h o u l d   b e   s a v e d   a s   a   c o m p i l e d   s c r i p t ,   n o t   a n   a p p l i c a t i o n . 
 	 	 Y o u   c a n   r e n a m e   t h e   s c r i p t   i f   y o u   w i s h . 
 	 	 
 	 e . 	 I n   O u t l o o k   s e l e c t   T o o l s   - - >   S c h e d u l e s . . .   a n d   c r e a t e   a   N e w   S c h e d u l e . 
 	 	 N a m e :   O u t l o o k   S e t u p 
 	 	 W h e n :   A t   S t a r t u p 
 	 	 A c t i o n :   R u n   A p p l e S c r i p t ,   c h o o s e   t h e   s a v e d   s c r i p t 
 	 	 	 i n   t h e   " O u t l o o k   S e t u p   S c r i p t "   f o l d e r . 
 	 	 C l i c k   t h e   " O K "   b u t t o n .   Y o u r   s c r i p t   s h o u l d   b e   s e t   t o   r u n 
 	 	 	 a t   " N e x t   S t a r t u p " . 
 	 	 
 	 f . 	 C o n f i g u r e   a n y   p r e f e r e n c e s ,   s c h e d u l e s ,   s i g n a t u r e s ,   e t c . 
 	 	 T h i s   c a n   i n c l u d e   D e f a u l t   a d d r e s s   f o r m a t ,   D e f a u l t   t i m e   z o n e ,   f o n t s , 
 	 	 e n c o d i n g   f o r   a t t a c h m e n t s   a n d   m o r e . 
 	 	 
 	 g . 	 Q u i t   O u t l o o k . 
 	 	 
 	 h . 	 D e p e n d i n g   o n   y o u r   a d m i n   t o o l s ,   y o u   c a n   p u s h   t h e   s c r i p t   t o   t h e 
 	 	 / L i b r a r y   f o l d e r   o f   a   n e w   c o m p u t e r   a n d   t h e 
 	 	 " ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 1 1   I d e n t i t i e s / M a i n   I d e n t i t y "   f o l d e r   a n d 
 	 	 t o   t h e   " / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / 
 	 	 O f f i c e   2 0 1 1   I d e n t i t i e s "   f o l d e r . 
 	 	 
 	 	 N e w   u s e r s   o n   a   m a c h i n e   w i l l   h a v e   t h e   p r e - c o n f i g u r e d   M a i n   I d e n t i t y 
 	 	 f o l d e r   c o p i e d   t o   t h e i r   h o m e   f o l d e r s   t h e   f i r s t   t i m e   t h e y   l o g   i n   t o   a   c o m p u t e r . 
 	 	 
 	 	 T h e   f i r s t   t i m e   t h e y   l a u n c h   O u t l o o k ,   t h e   " E x c h a n g e   S e t u p "   s c h e d u l e 
 	 	 w i l l   r u n   t h e   s c r i p t . 
 	 	 
 	 	 T h e   s c r i p t   w i l l   d i s a b l e   t h e   S c h e d u l e   o n c e   i t   h a s   r u n   a n d   w i l l   s e t   O u t l o o k 
 	 	 t o   w o r k   o n l i n e . 
 	     
 	     
 T h i s   s c r i p t   a s s u m e s   t h e   u s e r ' s   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " L a s t ,   F i r s t " , 
 b u t   i s   e a s i l y   m o d i f i e d   i f   t h e   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " F i r s t   L a s t " . 
 I t   w o r k s   e s p e c i a l l y   w e l l   i f   t h e   M a c   i s   b o u n d   t o   A c t i v e   D i r e c t o r y   w h e r e 
 t h e   u s e r ' s   s h o r t   n a m e   w i l l   m a t c h   h i s   l o g i n   n a m e .   O p t i o n a l l y ,   a   d s c l   c o m m a n d 
 c a n   b e   u s e d   t o   p u l l   t h e   u s e r ' s   E M a i l A d d r e s s   f r o m   a   d i r e c t o r y   s e r v i c e . 
 
   
  
 l     ��������  ��  ��        l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    * $ Begin network and server properties     �   H   B e g i n   n e t w o r k   a n d   s e r v e r   p r o p e r t i e s      l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        j     �� �� 0 usekerberos useKerberos  m     ��
�� boovfals     !   l     �� " #��   " A ; Set this property to true only if Macs in your environment    # � $ $ v   S e t   t h i s   p r o p e r t y   t o   t r u e   o n l y   i f   M a c s   i n   y o u r   e n v i r o n m e n t !  % & % l     �� ' (��   ' %  are bound to Active Directory.    ( � ) ) >   a r e   b o u n d   t o   A c t i v e   D i r e c t o r y . &  * + * l     �� , -��   , > 8 Kerberos support works only if your network is properly    - � . . p   K e r b e r o s   s u p p o r t   w o r k s   o n l y   i f   y o u r   n e t w o r k   i s   p r o p e r l y +  / 0 / l     �� 1 2��   1   configured.    2 � 3 3    c o n f i g u r e d . 0  4 5 4 l     ��������  ��  ��   5  6 7 6 j    �� 8�� 0 kerberosrealm kerberosRealm 8 m     9 9 � : :   7  ; < ; l     �� = >��   = 8 2 For most Kerberos environments the Kerberos realm    > � ? ? d   F o r   m o s t   K e r b e r o s   e n v i r o n m e n t s   t h e   K e r b e r o s   r e a l m <  @ A @ l     �� B C��   B 2 , will be the same as the E-mail domain name.    C � D D X   w i l l   b e   t h e   s a m e   a s   t h e   E - m a i l   d o m a i n   n a m e . A  E F E l     �� G H��   G D > This property is used only if the userKerberos property above    H � I I |   T h i s   p r o p e r t y   i s   u s e d   o n l y   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e F  J K J l     �� L M��   L  	 is true.    M � N N    i s   t r u e . K  O P O l     ��������  ��  ��   P  Q R Q j    �� S�� 0 
domainname 
domainName S m     T T � U U   R  V W V l     �� X Y��   X   example: "domain.com"    Y � Z Z ,   e x a m p l e :   " d o m a i n . c o m " W  [ \ [ l     ��������  ��  ��   \  ] ^ ] j   	 �� _��  0 exchangeserver ExchangeServer _ m   	 
 ` ` � a a   ^  b c b l     �� d e��   d + % example: "ExchangeServer.domain.com"    e � f f J   e x a m p l e :   " E x c h a n g e S e r v e r . d o m a i n . c o m " c  g h g l     ��������  ��  ��   h  i j i j    �� k�� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress k m    ��
�� boovfals j  l m l l     �� n o��   n < 6 Are you connecting to an Exchange Server 2007 server?    o � p p l   A r e   y o u   c o n n e c t i n g   t o   a n   E x c h a n g e   S e r v e r   2 0 0 7   s e r v e r ? m  q r q l     �� s t��   s 7 1 If so, you may need to use the extended address:    t � u u b   I f   s o ,   y o u   m a y   n e e d   t o   u s e   t h e   e x t e n d e d   a d d r e s s : r  v w v l     �� x y��   x = 7 "ExchangeServer.domain.com/exchange/user@example.com".    y � z z n   " E x c h a n g e S e r v e r . d o m a i n . c o m / e x c h a n g e / u s e r @ e x a m p l e . c o m " . w  { | { l     �� } ~��   } ; 5 Set this to "true" if you need the extended address.    ~ �   j   S e t   t h i s   t o   " t r u e "   i f   y o u   n e e d   t h e   e x t e n d e d   a d d r e s s . |  � � � l     ��������  ��  ��   �  � � � j    �� ��� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � A ; within the same network then SSL is probably not required.    � � � � v   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y   n o t   r e q u i r e d . �  � � � l     �� � ���   � 4 . OWA connections will probably require SSL and    � � � � \   O W A   c o n n e c t i o n s   w i l l   p r o b a b l y   r e q u i r e   S S L   a n d �  � � � l     �� � ���   � * $ this setting should be set to true.    � � � � H   t h i s   s e t t i n g   s h o u l d   b e   s e t   t o   t r u e . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� .0 exchangeserversslport ExchangeServerSSLPort � m    ����� �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is false set the port to 80.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is true set the port to 443.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . �  � � � l     �� � ���   � 4 . Use a different port number only if specified    � � � � \   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d �  � � � l     �� � ���   �   by your administrator.    � � � � .   b y   y o u r   a d m i n i s t r a t o r . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� "0 directoryserver DirectoryServer � m     � � � � �   �  � � � l     �� � ���   � 0 * example: "GlobalCatalogServer.domain.com"    � � � � T   e x a m p l e :   " G l o b a l C a t a l o g S e r v e r . d o m a i n . c o m " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , OWA connections cannot use the OWA address.    � � � � X   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication � m    ��
�� boovtrue �  � � � l     �� � ���   � 7 1 This will almost always be true. The LDAP server    � � � � b   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e .   T h e   L D A P   s e r v e r �  � � � l     �� � ���   � < 6 in a Windows network will be a Global Catalog server,    � � � � l   i n   a   W i n d o w s   n e t w o r k   w i l l   b e   a   G l o b a l   C a t a l o g   s e r v e r , �  � � � l     �� � ���   � 2 , which is separate from the Exchange Server.    � � � � X   w h i c h   i s   s e p a r a t e   f r o m   t h e   E x c h a n g e   S e r v e r . �  � � � l     �� � ���   � 2 , OWA connections can not use the OWA address    � � � � X   O W A   c o n n e c t i o n s   c a n   n o t   u s e   t h e   O W A   a d d r e s s �  � � � l     �� � ���   �   with this setting.    � � � � &   w i t h   t h i s   s e t t i n g . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 80 directoryserverrequiresssl DirectoryServerRequiresSSL � m    ��
�� boovfals �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � 3 - within the same network then SSL is probably    � � � � Z   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y �  � � � l     �� � ���   � 0 * not required. OWA connections can not use    � � � � T   n o t   r e q u i r e d .   O W A   c o n n e c t i o n s   c a n   n o t   u s e �  � � � l     �� � ���   � ) # the OWA address with this setting.    � � � � F   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g . �  � � � l     ��������  ��  ��   �  � � � j     �� �� 00 directoryserversslport DirectoryServerSSLPort  m    ����� �  l     ����   C = If DirectoryServerRequiresSSL is false set the port to 3268.    � z   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   3 2 6 8 .  l     ��	��   B < If DirectoryServerRequiresSSL is true set the port to 3269.   	 �

 x   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   3 2 6 9 .  l     ����   4 . Use a different port number only if specified    � \   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d  l     ����     by your administrator.    � .   b y   y o u r   a d m i n i s t r a t o r .  l     ��������  ��  ��    l     ����   D > OWA connections cannot use the OWA address with this setting.    � |   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g .  l     ��������  ��  ��    j   ! %�� �� >0 directoryservermaximumresults DirectoryServerMaximumResults  m   ! $����� !"! l     ��#$��  # E ? When searching the Global Address list, this number determines   $ �%% ~   W h e n   s e a r c h i n g   t h e   G l o b a l   A d d r e s s   l i s t ,   t h i s   n u m b e r   d e t e r m i n e s" &'& l     ��()��  ( 0 * the maximum number of entries to display.   ) �** T   t h e   m a x i m u m   n u m b e r   o f   e n t r i e s   t o   d i s p l a y .' +,+ l     ��������  ��  ��  , -.- j   & *��/�� 60 directoryserversearchbase DirectoryServerSearchBase/ m   & )00 �11  . 232 l     ��45��  4 + % example: "cn=users,dc=domain,dc=com"   5 �66 J   e x a m p l e :   " c n = u s e r s , d c = d o m a i n , d c = c o m "3 787 l     ��������  ��  ��  8 9:9 l     ��;<��  ; @ : Search base will be optional in many environments and its   < �== t   S e a r c h   b a s e   w i l l   b e   o p t i o n a l   i n   m a n y   e n v i r o n m e n t s   a n d   i t s: >?> l     ��@A��  @ D > format will vary greatly. Experiment first connecting without   A �BB |   f o r m a t   w i l l   v a r y   g r e a t l y .   E x p e r i m e n t   f i r s t   c o n n e c t i n g   w i t h o u t? CDC l     ��EF��  E , & entering the search base information.   F �GG L   e n t e r i n g   t h e   s e a r c h   b a s e   i n f o r m a t i o n .D HIH l     ��������  ��  ��  I JKJ j   + -��L�� 40 getemailaddressusingdscl getEMailAddressUsingDSCLL m   + ,��
�� boovtrueK MNM l     ��OP��  O ? 9 If the Macs are connected to a directory service such as   P �QQ r   I f   t h e   M a c s   a r e   c o n n e c t e d   t o   a   d i r e c t o r y   s e r v i c e   s u c h   a sN RSR l     ��TU��  T B < Active Directory, then they can probably use dscl to return   U �VV x   A c t i v e   D i r e c t o r y ,   t h e n   t h e y   c a n   p r o b a b l y   u s e   d s c l   t o   r e t u r nS WXW l     �YZ�  Y F @ the current user's E-mail address instead of trying to parse it   Z �[[ �   t h e   c u r r e n t   u s e r ' s   E - m a i l   a d d r e s s   i n s t e a d   o f   t r y i n g   t o   p a r s e   i tX \]\ l     �~^_�~  ^   from the display name.    _ �`` 0   f r o m   t h e   d i s p l a y   n a m e .  ] aba l     �}�|�{�}  �|  �{  b cdc l     �zef�z  e < 6 Using dscl is preferred. Otherwise, set this to false   f �gg l   U s i n g   d s c l   i s   p r e f e r r e d .   O t h e r w i s e ,   s e t   t h i s   t o   f a l s ed hih l     �yjk�y  j ; 5 and set the next property to the appropriate number.   k �ll j   a n d   s e t   t h e   n e x t   p r o p e r t y   t o   t h e   a p p r o p r i a t e   n u m b e r .i mnm l     �x�w�v�x  �w  �v  n opo j   . 0�uq�u 0 emailformat emailFormatq m   . /�t�t p rsr l     �stu�s  t E ? When dscl is unavailable to determine a user's E-mail address,   u �vv ~   W h e n   d s c l   i s   u n a v a i l a b l e   t o   d e t e r m i n e   a   u s e r ' s   E - m a i l   a d d r e s s ,s wxw l     �ryz�r  y C = it can be parsed using the display name of the user's login.   z �{{ z   i t   c a n   b e   p a r s e d   u s i n g   t h e   d i s p l a y   n a m e   o f   t h e   u s e r ' s   l o g i n .x |}| l     �q~�q  ~ 2 , Set the next two properties to the examples    ��� X   S e t   t h e   n e x t   t w o   p r o p e r t i e s   t o   t h e   e x a m p l e s} ��� l     �p���p  � 4 . that correspond to your organization's setup.   � ��� \   t h a t   c o r r e s p o n d   t o   y o u r   o r g a n i z a t i o n ' s   s e t u p .� ��� l     �o�n�m�o  �n  �m  � ��� l     �l���l  � 0 * 1: E-mail format is first.last@domain.com   � ��� T   1 :   E - m a i l   f o r m a t   i s   f i r s t . l a s t @ d o m a i n . c o m� ��� l     �k���k  � + % 2: E-mail format is first@domain.com   � ��� J   2 :   E - m a i l   f o r m a t   i s   f i r s t @ d o m a i n . c o m� ��� l     �j���j  � O I 3: E-mail format is flast@domain.com (first name initial plus last name)   � ��� �   3 :   E - m a i l   f o r m a t   i s   f l a s t @ d o m a i n . c o m   ( f i r s t   n a m e   i n i t i a l   p l u s   l a s t   n a m e )� ��� l     �i���i  � / ) 4: E-mail format is shortName@domain.com   � ��� R   4 :   E - m a i l   f o r m a t   i s   s h o r t N a m e @ d o m a i n . c o m� ��� l     �h�g�f�h  �g  �f  � ��� j   1 3�e��e 0 displayname displayName� m   1 2�d�d � ��� l     �c���c  � 0 * 1: Display name displays as "Last, First"   � ��� T   1 :   D i s p l a y   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l     �b���b  � / ) 2: Display name displays as "First Last"   � ��� R   2 :   D i s p l a y   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l     �a�`�_�a  �`  �_  � ��� j   4 8�^��^ (0 verifyemailaddress verifyEMailAddress� m   4 5�]
�] boovfals� ��� l     �\���\  � > 8 If set to "true", a dialog will ask the user to confirm   � ��� p   I f   s e t   t o   " t r u e " ,   a   d i a l o g   w i l l   a s k   t h e   u s e r   t o   c o n f i r m� ��� l     �[���[  �   his E-mail address.   � ��� (   h i s   E - m a i l   a d d r e s s .� ��� l     �Z�Y�X�Z  �Y  �X  � ��� j   9 =�W��W *0 verifyserveraddress verifyServerAddress� m   9 :�V
�V boovfals� ��� l     �U���U  � > 8 If set to "true", a dialog will ask the user to confirm   � ��� p   I f   s e t   t o   " t r u e " ,   a   d i a l o g   w i l l   a s k   t h e   u s e r   t o   c o n f i r m� ��� l     �T���T  � #  his Exchange server address.   � ��� :   h i s   E x c h a n g e   s e r v e r   a d d r e s s .� ��� l     �S�R�Q�S  �R  �Q  � ��� j   > B�P��P 0 	scheduled  � m   > ?�O
�O boovfals� ��� l     �N���N  � + % Exchange accounts don't require that   � ��� J   E x c h a n g e   a c c o u n t s   d o n ' t   r e q u i r e   t h a t� ��� l     �M���M  � 4 . the "Send & Receive All" schedule be enabled.   � ��� \   t h e   " S e n d   &   R e c e i v e   A l l "   s c h e d u l e   b e   e n a b l e d .� ��� l     �L���L  � . ( Change this setting to true if the user   � ��� P   C h a n g e   t h i s   s e t t i n g   t o   t r u e   i f   t h e   u s e r� ��� l     �K���K  � 7 1 will also be connecting to POP or IMAP accounts.   � ��� b   w i l l   a l s o   b e   c o n n e c t i n g   t o   P O P   o r   I M A P   a c c o u n t s .� ��� l     �J�I�H�J  �I  �H  � ��� j   C I�G��G 0 errormessage errorMessage� m   C F�� ��� � S e t u p   o f   y o u r   a c c o u n t   f a i l e d .   P l e a s e   c o n t a c t   y o u r   w o r k s t a t i o n   a d m i n i s t r a t o r   f o r   a s s i s t a n c e .� ��� l     �F���F  � 2 , Customize this error message for your users   � ��� X   C u s t o m i z e   t h i s   e r r o r   m e s s a g e   f o r   y o u r   u s e r s� ��� l     �E���E  � #  if their account setup fails   � ��� :   i f   t h e i r   a c c o u n t   s e t u p   f a i l s� ��� l     �D�C�B�D  �C  �B  � ��� l    ��A�@� r     ��� I    �?��>
�? .sysoexecTEXT���     TEXT� m     �� ��� � d s c l   / S e a r c h   - r e a d   /   C S P S e a r c h P a t h   |   g r e p   " A c t i v e   D i r e c t o r y "   |   s e d   ' s / ^ [   	 ] * / / '�>  � o      �=�= "0 getsearchdomain getSearchDomain�A  �@  � ��� l   ��<�;� r       n     1   	 �:
�: 
strq o    	�9�9 "0 getsearchdomain getSearchDomain o      �8�8 0 searchdomain SearchDomain�<  �;  �  l     �7�7   Q K Get SearchDomain to make the script work for both OS X 10.6, 10,7 and 10.8    � �   G e t   S e a r c h D o m a i n   t o   m a k e   t h e   s c r i p t   w o r k   f o r   b o t h   O S   X   1 0 . 6 ,   1 0 , 7   a n d   1 0 . 8 	
	 l     �6�5�4�6  �5  �4  
  l     �3�3   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �2�2     End server properties    � ,   E n d   s e r v e r   p r o p e r t i e s  l     �1�1   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �0�/�.�0  �/  �.    l     �-�-   0 *------------------------------------------    �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !"! l     �,#$�,  #   Begin get user name   $ �%% (   B e g i n   g e t   u s e r   n a m e" &'& l     �+()�+  ( 0 *------------------------------------------   ) �** T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -' +,+ l     �*�)�(�*  �)  �(  , -.- l     �'/0�'  / W Q User information is pulled from the account settings of the current user account   0 �11 �   U s e r   i n f o r m a t i o n   i s   p u l l e d   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   c u r r e n t   u s e r   a c c o u n t. 232 l     �&�%�$�&  �%  �$  3 454 l   "6�#�"6 O    "787 k    !99 :;: r    <=< n    >?> 1    �!
�! 
pnam? 1    � 
�  
curu= o      �� 0 	shortname 	shortName; @�@ r    !ABA n    CDC 1    �
� 
fnamD 1    �
� 
curuB o      �� 0 fullname fullName�  8 m    EE�                                                                                  sevs  alis    �  Macintosh HD               ˡ�H+     pSystem Events.app                                                ��� lb        ����  	                CoreServices    ˡ��      � PB       p   c   b  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �#  �"  5 FGF l     ����  �  �  G HIH l     �JK�  J 0 *------------------------------------------   K �LL T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -I MNM l     �OP�  O   End get user name   P �QQ $   E n d   g e t   u s e r   n a m eN RSR l     �TU�  T 0 *------------------------------------------   U �VV T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -S WXW l     ����  �  �  X YZY l     �[\�  [ 0 *------------------------------------------   \ �]] T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Z ^_^ l     �`a�  ` %  Begin email address properties   a �bb >   B e g i n   e m a i l   a d d r e s s   p r o p e r t i e s_ cdc l     �ef�  e 0 *------------------------------------------   f �gg T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -d hih l     ����  �  �  i jkj l  #$l��
l Z   #$mno�	m =  # *pqp o   # (�� 40 getemailaddressusingdscl getEMailAddressUsingDSCLq m   ( )�
� boovtruen k   - >rr sts r   - <uvu I  - :�w�
� .sysoexecTEXT���     TEXTw b   - 6xyx b   - 4z{z b   - 2|}| b   - 0~~ m   - .�� ��� 
 d s c l   o   . /�� 0 searchdomain SearchDomain} m   0 1�� ���    - r e a d   / U s e r s /{ o   2 3�� 0 	shortname 	shortNamey m   4 5�� ��� >   E M a i l A d d r e s s   |   c u t   - d   '   '   - f   2�  v o      �� 0 emailaddress emailAddresst ��� l  = =� �����   ��  ��  �  o ��� F   A T��� =  A H��� o   A F���� 0 emailformat emailFormat� m   F G���� � =  K R��� o   K P���� 0 displayname displayName� m   P Q���� � ��� k   W ��� ��� l  W W��������  ��  ��  � ��� l  W W������  � D > first.last@domain.com and full name displays as "Last, First"   � ��� |   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l  W W��������  ��  ��  � ��� r   W b��� m   W Z�� ���  ,  � n     ��� 1   ] a��
�� 
txdl� 1   Z ]��
�� 
ascr� ��� r   c m��� n   c i��� 4   d i���
�� 
citm� m   g h���� � o   c d���� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r   n x��� n   n t��� 4   o t���
�� 
citm� m   r s���� � o   n o���� 0 fullname fullName� o      ���� 0 lastname lastName� ��� r   y ���� m   y |�� ���  � n     ��� 1    ���
�� 
txdl� 1   | ��
�� 
ascr� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 	firstname 	firstName� m   � ��� ���  .� o   � ����� 0 lastname lastName� m   � ��� ���  @� o   � ����� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress� ���� l  � ���������  ��  ��  ��  � ��� F   � ���� =  � ���� o   � ����� 0 emailformat emailFormat� m   � ����� � =  � ���� o   � ����� 0 displayname displayName� m   � ����� � ��� k   � ��� ��� l  � ���������  ��  ��  � ��� l  � �������  � C = first.last@domain.com and full name displays as "First Last"   � ��� z   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ��� ���   � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 4   � ����
�� 
citm� m   � ����� � o   � ����� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r   � ���� n   � ���� 4   � ����
�� 
citm� m   � ����� � o   � ����� 0 fullname fullName� o      ���� 0 lastname lastName� ��� r   � ���� m   � ��� ���  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� b   � �   b   � � b   � � b   � � o   � ����� 0 	firstname 	firstName m   � � �		  . o   � ����� 0 lastname lastName m   � �

 �  @ o   � ����� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress� �� l  � ���������  ��  ��  ��  �  F   =  o  ���� 0 emailformat emailFormat m  ����  =  o  ���� 0 displayname displayName m  ����   k  V  l ��������  ��  ��    l ����   ? 9 first@domain.com and full name displays as "Last, First"    � r   f i r s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "   l ��������  ��  ��    !"! r  "#$# m  %% �&&  ,  $ n     '(' 1  !��
�� 
txdl( 1  ��
�� 
ascr" )*) r  #-+,+ n  #)-.- 4  $)��/
�� 
citm/ m  '(���� . o  #$���� 0 fullname fullName, o      ���� 0 	firstname 	firstName* 010 r  .8232 n  .4454 4  /4��6
�� 
citm6 m  23���� 5 o  ./���� 0 fullname fullName3 o      ���� 0 lastname lastName1 787 r  9D9:9 m  9<;; �<<  : n     =>= 1  ?C��
�� 
txdl> 1  <?��
�� 
ascr8 ?@? r  ETABA b  ERCDC b  ELEFE o  EH���� 0 	firstname 	firstNameF m  HKGG �HH  @D o  LQ���� 0 
domainname 
domainNameB o      ���� 0 emailaddress emailAddress@ I��I l UU��������  ��  ��  ��   JKJ F  YlLML = Y`NON o  Y^���� 0 emailformat emailFormatO m  ^_���� M = cjPQP o  ch���� 0 displayname displayNameQ m  hi���� K RSR k  o�TT UVU l oo��������  ��  ��  V WXW l oo��YZ��  Y = 7 first@domain.com if full name displays as "First Last"   Z �[[ n   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "X \]\ l oo��������  ��  ��  ] ^_^ r  oz`a` m  orbb �cc   a n     ded 1  uy��
�� 
txdle 1  ru��
�� 
ascr_ fgf r  {�hih n  {�jkj 4  |���l
�� 
citml m  ����� k o  {|���� 0 fullname fullNamei o      ���� 0 	firstname 	firstNameg mnm r  ��opo n  ��qrq 4  ����s
�� 
citms m  ������ r o  ������ 0 fullname fullNamep o      ���� 0 lastname lastNamen tut r  ��vwv m  ��xx �yy  w n     z{z 1  ����
�� 
txdl{ 1  ����
�� 
ascru |}| r  ��~~ b  ����� b  ����� o  ������ 0 	firstname 	firstName� m  ���� ���  @� o  ������ 0 
domainname 
domainName o      ���� 0 emailaddress emailAddress} ���� l ����������  ��  ��  ��  S ��� F  ����� = ����� o  ������ 0 emailformat emailFormat� m  ������ � = ����� o  ������ 0 displayname displayName� m  ������ � ��� k  ��� ��� l ����~�}�  �~  �}  � ��� l ���|���|  � ? 9 flast@domain.com and full name displays as "Last, First"   � ��� r   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l ���{�z�y�{  �z  �y  � ��� r  ����� m  ���� ���  ,  � n     ��� 1  ���x
�x 
txdl� 1  ���w
�w 
ascr� ��� r  ����� n  ����� 4  ���v�
�v 
citm� m  ���u�u � o  ���t�t 0 fullname fullName� o      �s�s 0 	firstname 	firstName� ��� r  ����� n  ����� 4  ���r�
�r 
citm� m  ���q�q � o  ���p�p 0 fullname fullName� o      �o�o 0 lastname lastName� ��� r  ����� m  ���� ���  � n     ��� 1  ���n
�n 
txdl� 1  ���m
�m 
ascr� ��� r  ���� b  ���� b  ���� b  ���� l ����l�k� n  ����� 4  ���j�
�j 
cha � m  ���i�i � o  ���h�h 0 	firstname 	firstName�l  �k  � o  � �g�g 0 lastname lastName� m  �� ���  @� o  
�f�f 0 
domainname 
domainName� o      �e�e 0 emailaddress emailAddress� ��d� l �c�b�a�c  �b  �a  �d  � ��� F  %��� = ��� o  �`�` 0 emailformat emailFormat� m  �_�_ � = #��� o  !�^�^ 0 displayname displayName� m  !"�]�] � ��� k  (p�� ��� l ((�\�[�Z�\  �[  �Z  � ��� l ((�Y���Y  � > 8 flast@domain.com and full name displays as "First Last"   � ��� p   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l ((�X�W�V�X  �W  �V  � ��� r  (3��� m  (+�� ���   � n     ��� 1  .2�U
�U 
txdl� 1  +.�T
�T 
ascr� ��� r  4>��� n  4:��� 4  5:�S�
�S 
citm� m  89�R�R � o  45�Q�Q 0 fullname fullName� o      �P�P 0 	firstname 	firstName� ��� r  ?I��� n  ?E��� 4  @E�O�
�O 
citm� m  CD�N�N � o  ?@�M�M 0 fullname fullName� o      �L�L 0 lastname lastName� ��� r  JU��� m  JM�� ���  � n     ��� 1  PT�K
�K 
txdl� 1  MP�J
�J 
ascr� ��� r  Vn��� l Vl �I�H  b  Vl b  Vf b  Vb n  V^ 4  Y^�G	
�G 
cha 	 m  \]�F�F  o  VY�E�E 0 	firstname 	firstName o  ^a�D�D 0 lastname lastName m  be

 �  @ o  fk�C�C 0 
domainname 
domainName�I  �H  � o      �B�B 0 emailaddress emailAddress� �A l oo�@�?�>�@  �?  �>  �A  �  F  s� = s| o  sx�=�= 0 emailformat emailFormat m  x{�<�<  = � o  ��;�; 0 displayname displayName m  ���:�:   k  ��  l ���9�8�7�9  �8  �7    l ���6�6   C = shortName@domain.com and full name displays as "Last, First"    � z   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "   l ���5�4�3�5  �4  �3    !"! r  ��#$# m  ��%% �&&  ,  $ n     '(' 1  ���2
�2 
txdl( 1  ���1
�1 
ascr" )*) r  ��+,+ n  ��-.- 4  ���0/
�0 
citm/ m  ���/�/ . o  ���.�. 0 fullname fullName, o      �-�- 0 	firstname 	firstName* 010 r  ��232 n  ��454 4  ���,6
�, 
citm6 m  ���+�+ 5 o  ���*�* 0 fullname fullName3 o      �)�) 0 lastname lastName1 787 r  ��9:9 m  ��;; �<<  : n     =>= 1  ���(
�( 
txdl> 1  ���'
�' 
ascr8 ?@? r  ��ABA b  ��CDC b  ��EFE o  ���&�& 0 	shortname 	shortNameF m  ��GG �HH  @D o  ���%�% 0 
domainname 
domainNameB o      �$�$ 0 emailaddress emailAddress@ I�#I l ���"�!� �"  �!  �   �#   JKJ F  ��LML = ��NON o  ���� 0 emailformat emailFormatO m  ���� M = ��PQP o  ���� 0 displayname displayNameQ m  ���� K R�R k  � SS TUT l ������  �  �  U VWV l ���XY�  X B < shortName@domain.com and full name displays as "First Last"   Y �ZZ x   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "W [\[ l ������  �  �  \ ]^] r  ��_`_ m  ��aa �bb   ` n     cdc 1  ���
� 
txdld 1  ���
� 
ascr^ efe r  ��ghg n  ��iji 4  ���k
� 
citmk m  ���� j o  ���� 0 fullname fullNameh o      �� 0 	firstname 	firstNamef lml r  �non n  � pqp 4  � �r
� 
citmr m  ���� q o  ���� 0 fullname fullNameo o      �
�
 0 lastname lastNamem sts r  uvu m  ww �xx  v n     yzy 1  �	
�	 
txdlz 1  �
� 
ascrt {|{ r  }~} b  � b  ��� o  �� 0 	shortname 	shortName� m  �� ���  @� o  �� 0 
domainname 
domainName~ o      �� 0 emailaddress emailAddress| ��� l ����  �  �  �  �  �	  �  �
  k ��� l     � �����   ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  � #  End email address properties   � ��� :   E n d   e m a i l   a d d r e s s   p r o p e r t i e s� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  � , & Exchange Server 2007 extended address   � ��� L   E x c h a n g e   S e r v e r   2 0 0 7   e x t e n d e d   a d d r e s s� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l %D������ Z  %D������� = %,��� o  %*���� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress� m  *+��
�� boovtrue� r  /@��� b  /:��� b  /8��� o  /4����  0 exchangeserver ExchangeServer� m  47�� ���  / e x c h a n g e /� o  89���� 0 emailaddress emailAddress� o      ����  0 exchangeserver ExchangeServer��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   End get user name   � ��� $   E n d   g e t   u s e r   n a m e� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   Begin account setup   � ��� (   B e g i n   a c c o u n t   s e t u p� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l E������� Q  E����� k  H��� ��� l HH��������  ��  ��  � ��� Z  H�������� = HO��� o  HM���� (0 verifyemailaddress verifyEMailAddress� m  MN��
�� boovtrue� k  R��� ��� r  Rz��� I Rv����
�� .sysodlogaskr        TEXT� m  RU�� ��� b P l e a s e   v e r i f y   t h a t   y o u r   e m a i l   a d d r e s s   i s   c o r r e c t .� ����
�� 
dtxt� o  XY���� 0 emailaddress emailAddress� ����
�� 
disp� m  \]���� � ����
�� 
btns� J  `h�� ��� m  `c�� ���  C a n c e l�  ��  m  cf �  O K��  � ����
�� 
dflt J  kp �� m  kn �  O K��  ��  � o      ���� 0 verifyemail verifyEmail� �� r  {�	
	 n  {� 1  ~���
�� 
ttxt o  {~���� 0 verifyemail verifyEmail
 o      ���� 0 emailaddress emailAddress��  ��  ��  �  l ����������  ��  ��    Z  ������ = �� o  ������ *0 verifyserveraddress verifyServerAddress m  ����
�� boovtrue k  ��  r  �� I ����
�� .sysodlogaskr        TEXT m  �� � p P l e a s e   v e r i f y   t h a t   y o u r   E x c h a n g e   S e r v e r   n a m e   i s   c o r r e c t . ��
�� 
dtxt o  ������  0 exchangeserver ExchangeServer �� !
�� 
disp  m  ������ ! ��"#
�� 
btns" J  ��$$ %&% m  ��'' �((  C a n c e l& )��) m  ��** �++  O K��  # ��,��
�� 
dflt, J  ��-- .��. m  ��// �00  O K��  ��   o      ���� 0 verifyserver verifyServer 1��1 r  ��232 n  ��454 1  ����
�� 
ttxt5 o  ������ 0 verifyserver verifyServer3 o      ����  0 exchangeserver ExchangeServer��  ��  ��   676 l ����������  ��  ��  7 898 O  ��:;: k  ��<< =>= I ��������
�� .miscactvnull��� ��� null��  ��  > ?@? r  �FABA I �B����C
�� .corecrel****      � null��  C ��DE
�� 
koclD m  ����
�� 
EactE ��F��
�� 
prdtF l 	�<G����G K  �<HH ��IJ
�� 
pnamI b  ��KLK m  ��MM �NN  M a i l b o x   -  L o  ������ 0 fullname fullNameJ ��OP
�� 
unmeO o  ������ 0 	shortname 	shortNameP ��QR
�� 
fnamQ o  ������ 0 fullname fullNameR ��ST
�� 
emadS o  ������ 0 emailaddress emailAddressT ��UV
�� 
hostU o  � ����  0 exchangeserver ExchangeServerV ��WX
�� 
usssW o  ���� 60 exchangeserverrequiresssl ExchangeServerRequiresSSLX ��YZ
�� 
portY o  ���� .0 exchangeserversslport ExchangeServerSSLPortZ ��[\
�� 
ExLS[ o  ���� "0 directoryserver DirectoryServer\ ��]^
�� 
LDAu] o   ���� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication^ ��_`
�� 
LDSL_ o  #(���� 80 directoryserverrequiresssl DirectoryServerRequiresSSL` ��ab
�� 
LDMXa o  +0���� >0 directoryservermaximumresults DirectoryServerMaximumResultsb ��c��
�� 
LDSBc o  38���� 60 directoryserversearchbase DirectoryServerSearchBase��  ��  ��  ��  B o      ���� (0 newexchangeaccount newExchangeAccount@ ded l GG��������  ��  ��  e fgf l GG��hi��  h e _ The following lines enable Kerberos support if the userKerberos property above is set to true.   i �jj �   T h e   f o l l o w i n g   l i n e s   e n a b l e   K e r b e r o s   s u p p o r t   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e   i s   s e t   t o   t r u e .g klk l GG��~�}�  �~  �}  l mnm Z  Gvop�|�{o = GNqrq o  GL�z�z 0 usekerberos useKerberosr m  LM�y
�y boovtruep k  Qrss tut r  Q^vwv o  QV�x�x 0 usekerberos useKerberosw n      xyx 1  Y]�w
�w 
Kerby o  VY�v�v (0 newexchangeaccount newExchangeAccountu z�uz r  _r{|{ b  _j}~} b  _d� o  _`�t�t 0 	shortname 	shortName� m  `c�� ���  @~ o  di�s�s 0 kerberosrealm kerberosRealm| n      ��� 1  mq�r
�r 
ExGI� o  jm�q�q (0 newexchangeaccount newExchangeAccount�u  �|  �{  n ��� l ww�p�o�n�p  �o  �n  � ��� l ww�m���m  � Q K The Me Contact record is now automatically created with the first account.   � ��� �   T h e   M e   C o n t a c t   r e c o r d   i s   n o w   a u t o m a t i c a l l y   c r e a t e d   w i t h   t h e   f i r s t   a c c o u n t .� ��� l ww�l���l  � < 6 Set the first and last name of the Me Contact record.   � ��� l   S e t   t h e   f i r s t   a n d   l a s t   n a m e   o f   t h e   M e   C o n t a c t   r e c o r d .� ��� l ww�k�j�i�k  �j  �i  � ��� l ww�h���h  � / )set first name of me contact to firstName   � ��� R s e t   f i r s t   n a m e   o f   m e   c o n t a c t   t o   f i r s t N a m e� ��� l ww�g���g  � - 'set last name of me contact to lastName   � ��� N s e t   l a s t   n a m e   o f   m e   c o n t a c t   t o   l a s t N a m e� ��� l ww�f���f  � L Fset email addresses of me contact to {address:emailAddress, type:work}   � ��� � s e t   e m a i l   a d d r e s s e s   o f   m e   c o n t a c t   t o   { a d d r e s s : e m a i l A d d r e s s ,   t y p e : w o r k }� ��� l ww�e�d�c�e  �d  �c  � ��� l ww�b���b  � R L We're done. Set the schedules back to normal and set Outlook to work online   � ��� �   W e ' r e   d o n e .   S e t   t h e   s c h e d u l e s   b a c k   t o   n o r m a l   a n d   s e t   O u t l o o k   t o   w o r k   o n l i n e� ��� l ww�a�`�_�a  �`  �_  � ��� r  w���� o  w|�^�^ 0 	scheduled  � n      ��� 1  ���]
�] 
ScEn� 4  |��\�
�\ 
cSch� m  ���� ��� $ S e n d   &   R e c e i v e   A l l� ��� I ���[��Z
�[ .coredelonull���     obj � 4  ���Y�
�Y 
cSch� m  ���� ���  O u t l o o k   S e t u p�Z  � ��� r  ����� m  ���X
�X boovfals� 1  ���W
�W 
wkOf� ��V� l ���U�T�S�U  �T  �S  �V  ; m  ����                                                                                  OPIM  alis    �  Macintosh HD               ˡ�H+   �GMicrosoft Outlook.app                                           ��Ț�f        ����  	                Microsoft Office 2011     ˡ��      Ț�F     �G   �  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  9 ��R� l ���Q�P�O�Q  �P  �O  �R  � R      �N�M�L
�N .ascrerr ****      � ****�M  �L  � k  ���� ��� l ���K�J�I�K  �J  �I  � ��� I ���H��
�H .sysodlogaskr        TEXT� o  ���G�G 0 errormessage errorMessage� �F��
�F 
disp� m  ���E�E � �D��
�D 
btns� J  ���� ��C� m  ���� ���  O K�C  � �B��A
�B 
dflt� J  ���� ��@� m  ���� ���  O K�@  �A  � ��?� l ���>�=�<�>  �=  �<  �?  ��  ��  � ��� l     �;�:�9�;  �:  �9  � ��� l     �8���8  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �7���7  �   End account setup   � ��� $   E n d   a c c o u n t   s e t u p� ��6� l     �5���5  � 1 +------------------------------------------    � ��� V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  �6       �4��3 9 T `�2�1�0 ��/�.�-�,0�+�*�)�(�'�&���4  � �%�$�#�"�!� ����������������% 0 usekerberos useKerberos�$ 0 kerberosrealm kerberosRealm�# 0 
domainname 
domainName�"  0 exchangeserver ExchangeServer�! >0 extendedexchangeserveraddress ExtendedExchangeServerAddress�  60 exchangeserverrequiresssl ExchangeServerRequiresSSL� .0 exchangeserversslport ExchangeServerSSLPort� "0 directoryserver DirectoryServer� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication� 80 directoryserverrequiresssl DirectoryServerRequiresSSL� 00 directoryserversslport DirectoryServerSSLPort� >0 directoryservermaximumresults DirectoryServerMaximumResults� 60 directoryserversearchbase DirectoryServerSearchBase� 40 getemailaddressusingdscl getEMailAddressUsingDSCL� 0 emailformat emailFormat� 0 displayname displayName� (0 verifyemailaddress verifyEMailAddress� *0 verifyserveraddress verifyServerAddress� 0 	scheduled  � 0 errormessage errorMessage
� .aevtoappnull  �   � ****
�3 boovfals
�2 boovfals
�1 boovtrue�0�
�/ boovtrue
�. boovfals�-��,�
�+ boovtrue�* �) 
�( boovfals
�' boovfals
�& boovfals� �������
� .aevtoappnull  �   � ****� k    ��� ��� ��� 4�� j�� ��� ���  �  �  �  � d���
�	�E������������ �������������
%;Gbx��������
��%;Gaw��������������������'*/�����������M�������������������������������������������������
� .sysoexecTEXT���     TEXT�
 "0 getsearchdomain getSearchDomain
�	 
strq� 0 searchdomain SearchDomain
� 
curu
� 
pnam� 0 	shortname 	shortName
� 
fnam� 0 fullname fullName� 0 emailaddress emailAddress
� 
bool
�  
ascr
�� 
txdl
�� 
citm�� 0 	firstname 	firstName�� 0 lastname lastName
�� 
cha �� 
�� 
dtxt
�� 
disp
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 verifyemail verifyEmail
�� 
ttxt�� 0 verifyserver verifyServer
�� .miscactvnull��� ��� null
�� 
kocl
�� 
Eact
�� 
prdt
�� 
unme
�� 
emad
�� 
host
�� 
usss
�� 
port
�� 
ExLS
�� 
LDAu
�� 
LDSL
�� 
LDMX
�� 
LDSB�� 
�� .corecrel****      � null�� (0 newexchangeaccount newExchangeAccount
�� 
Kerb
�� 
ExGI
�� 
cSch
�� 
ScEn
�� .coredelonull���     obj 
�� 
wkOf��  ��  �� ���j E�O��,E�O� *�,�,E�O*�,�,E�UOb  e  ��%�%�%�%j E�OPY�b  k 	 b  k �& La _ a ,FO�a l/E` O�a k/E` Oa _ a ,FO_ a %_ %a %b  %E�OPY�b  k 	 b  l �& La _ a ,FO�a k/E` O�a l/E` Oa _ a ,FO_ a %_ %a %b  %E�OPY%b  l 	 b  k �& Da _ a ,FO�a l/E` O�a k/E` Oa _ a ,FO_ a %b  %E�OPY�b  l 	 b  l �& Da  _ a ,FO�a k/E` O�a l/E` Oa !_ a ,FO_ a "%b  %E�OPYub  m 	 b  k �& Ma #_ a ,FO�a l/E` O�a k/E` Oa $_ a ,FO_ a %k/_ %a &%b  %E�OPYb  m 	 b  l �& Ma '_ a ,FO�a k/E` O�a l/E` Oa (_ a ,FO_ a %k/_ %a )%b  %E�OPY �b  a * 	 b  k �& Ba +_ a ,FO�a l/E` O�a k/E` Oa ,_ a ,FO�a -%b  %E�OPY [b  a * 	 b  l �& Ba ._ a ,FO�a k/E` O�a l/E` Oa /_ a ,FO�a 0%b  %E�OPY hOb  e  b  a 1%�%Ec  Y hO`b  e  7a 2a 3�a 4la 5a 6a 7lva 8a 9kva : ;E` <O_ <a =,E�Y hOb  e  ?a >a 3b  a 4la 5a ?a @lva 8a Akva : ;E` BO_ Ba =,Ec  Y hOa C �*j DO*a Ea Fa G�a H�%a I���a J�a Kb  a Lb  a Mb  a Nb  a Ob  a Pb  	a Qb  a Rb  a Sa * TE` UOb   e  &b   _ Ua V,FO�a W%b  %_ Ua X,FY hOb  *a Ya Z/a [,FO*a Ya \/j ]Of*a ^,FOPUOPW (X _ `b  a 4la 5a akva 8a bkva c ;OPascr  ��ޭ