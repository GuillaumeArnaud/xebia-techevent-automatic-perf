Commandes
=========

EC2
---


$ run.sh 1

Instancie 2 vms ec2 qui auront pour identifiant (tag) webapp1 et controller1.
La clé pem et les keys (secret et access) ec2 doivent être modifiées en fonction du compte utilisé ec2 utilisé.

VMs
---

2 vms sont créées:

1. controller: jenkins, graphite, jmxtrans, maven. Le controller contient aussi le clone des sources (gatling et application) disponible sur le repo github: https://github.com/Willymontaz/tinyapp.
2. webapp: tomcat, diamond. Contiendra le tomcat où sera déployé le war à tester.

Excercices
----------

voir ici: http://guillaumearnaud.github.io/xebia-techevent-automatic-perf/
