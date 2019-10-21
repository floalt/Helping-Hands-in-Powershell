# Grunds�tzliche Berechtigungen f�r eine neue Shared Mailbox
# author: flo.alt@fa-netz.de
# Ver 0.8
 
# Verwendung: .\make-perms -mailbox [MailboxName] -suser [Schreib-Gruppe] -luser [Lese-Gruppe]
# Beispiel: .\make-perms -mailbox einkauf -suser sg-einkauf-s -luser sg-einkauf-l

param(
# Hier werden die Schreibrechte festgelegt
Add-MailboxFolderPermission -Identity $mailbox -User $suser -AccessRights PublishingEditor -Confirm:$False
# Hier werden die Leserechte festgelegt
Add-MailboxFolderPermission -Identity $mailbox -User $luser -AccessRights Reviewer -Confirm:$False
# Hier Senderechte f�r suser vergeben
Add-RecipientPermission -Identity $mailbox -AccessRights SendAs -Trustee $suser -Confirm:$False