use inf_project;

insert into `group` (`name`)
value ("Netzwerk"),("Datenbank"),("Kryptographie"),("Programmierung"),("Serverdienste");

select *
from `group`;

insert into `terms` (`term`, `description`, `idGroup`)
value("Routing", "Hier wird der Weg des Datenpakets zur nächsten Station bestimmt. Es werden verschiedene Netzwerkbereiche miteinander verbunden.", "1"),
	("IPv4-Adressen", "Ist ein Internetprotokoll und es arbeitet mit bis zu 32 Bits. Die Werte werden Dezimal dargestellt. Sind die Adressen der Computer im Internet.", "1"),
	("Subnetzmaske", "Hier wird bestimmt ob 2 Computer im gleichen Subnetz sind und somit direkt miteinander kommunizieren können. Sie werden durch eine Netzadresse und eine Broadcastadresse getrennt.", "1"),
    ("IPv6-Adressen", "Ist ein Internetprotokoll und es arbeitet mit bis zu 128 Bits. Die Werte werden Hexer-Dezimal dargestellt. Es sind viel mehr Adressen möglich als beim IPv4.", "1"),
    ("(S)FTP", "(Secure) File Transfer Protocol ist ein Protokoll um im Internet komplette Dateien zu übertragen. Beim SFTP werden die Daten noch verschlüsselt.", "1"),
    
    ("referentielle Integrität", "Ist eine Regel die zur Sicherung der Datenintegrität dient. Nach Regel dürfen Datensätze nur auf existierende Datensätze verweisen.", "2"),
    ("NoSQL", "Bedeutet 'Not only SQL' und bezeichnet das eine nicht relationale Datenbank vorliegt.", "2"),
    ("Einfüge-Anomalie", "Daten werden beim Insert erst gar nicht in die Datenbank übernommen, eventuell der Primärschlüssel fehlt.", "2"),
    ("DBMS", "Daten Bank Management System = Das Hirn der Datenbank, hier werden die Rollen und Rechte geprüft. Backups werden gemanagt. Die Zugriffe auf die DB werden kontrolliert.", "2"),
    
    ("symmetrische Verschlüsselung", "Ist eine Verschlüsselungsart, hier für wird der gleiche Schlüssel fürs Ver- und Entschlüsseln verwendet.", "3"),
    ("Privat-Public-Key", "Bei der Asymmetrischen Verschlüsselung wird zum verschlüsseln der Date der öffentliche Schlüssel verwendet (Public) und zum entschlüsseln wirde der private Schlüssel verwendet (private).", "3"),
    
    ("sequentielles Abarbeiten", "Die Methoden eines Programmes werden nicht parallel sonder seriell, also hintereinander abgearbeitet.", "4"),
    ("Objektorientierung", "Ist eine Art der Programmierung, wird auch OOP gennant. Hierfür typisch ist die Kapselung von Daten im Code.", "4"),
    
    ("DNS", "Heißt 'Domain Name System'. Es ist der wichtigste Dienst im Netzwerk, denn dieser Service ist für die Übersetzung der IP Adressen in eine Menschenlesbare Schrift verantwortlich.", "5"),
    ("DHCP", "Heißt 'Dynamic Host Configuration Protocol'. Mit diesm Protokoll können dem Client Netzwerkkonfigurationen zugewiesen werden und das automatisch.", "5"),
    ("Proxy", "Heißt zu deutsch 'Stellvertreter' und trennt die Clients oder den Server vom direkten Internet. Somit bleibt die IP Adresse des Clients anonym. Er schützt auch das interne Netzwerk.", "5"),
    ("Verzeichis", "Ist eine hyrachische Datenbank und diese stellt dem System ein Netzwerk eine möglichkeit zum speichern der Daten dar.", "5");
    
    select *
    from `terms`;
    
    select *
    from `log`;
    
    