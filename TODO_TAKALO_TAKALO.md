# TODO LIST - PROJET TAKALO-TAKALO
## Répartition pour 3 personnes - 1h30

---

---

## 👥 RÉPARTITION DES TÂCHES

### **PERSONNE 1 danie - BASE DE DONNÉES & BACKEND** (1h30)

#### ⏱️ 0-20 min : Setup initial
- [ ] Télécharger et installer FlightPHP
- [ ] Créer la base de données MySQL/Postgres
- [ ] Créer le fichier de connexion à la BDD

#### ⏱️ 20-50 min : Schéma BDD
Créer les tables suivantes :

```sql
-- Table utilisateurs
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    num_etu VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table admin
CREATE TABLE admins (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(255)
);

-- Table categories
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    description TEXT
);

-- Table objets
CREATE TABLE objets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(200),
    description TEXT,
    prix_estimatif DECIMAL(10,2),
    id_categorie INT,
    id_proprietaire INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_categorie) REFERENCES categories(id),
    FOREIGN KEY (id_proprietaire) REFERENCES users(id)
);

-- Table photos
CREATE TABLE photos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_objet INT,
    url_photo VARCHAR(255),
    FOREIGN KEY (id_objet) REFERENCES objets(id)
);

-- Table propositions
CREATE TABLE propositions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_objet_propose INT,
    id_objet_demande INT,
    id_utilisateur_proposant INT,
    statut ENUM('en_attente', 'accepte', 'refuse') DEFAULT 'en_attente',
    date_proposition TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_reponse TIMESTAMP NULL,
    FOREIGN KEY (id_objet_propose) REFERENCES objets(id),
    FOREIGN KEY (id_objet_demande) REFERENCES objets(id),
    FOREIGN KEY (id_utilisateur_proposant) REFERENCES users(id)
);


-- Table historique
CREATE TABLE historique_objets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_objet INT,
    id_ancien_proprietaire INT,
    id_nouveau_proprietaire INT,
    date_echange TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_objet) REFERENCES objets(id),
    FOREIGN KEY (id_ancien_proprietaire) REFERENCES users(id),
    FOREIGN KEY (id_nouveau_proprietaire) REFERENCES users(id)
);
```

#### ⏱️ 50-90 min : Données de test
- [ ] Insérer 1 admin (login: admin, mdp: admin123)
- [ ] Insérer 5 catégories (Vêtements, Livres, DVD, Électronique, Autre)
- [ ] Insérer 3-5 utilisateurs test
- [ ] Insérer 10-15 objets avec catégories
- [ ] Insérer quelques propositions d'échange

---

### **PERSONNE 2 - FRONTOFFICE** (1h30)

#### ⏱️ 0-15 min : Setup template
- [ ] Télécharger le template choisi
- [ ] Intégrer FlightPHP dans le template
- [ ] Ajouter footer avec noms et numéros ETU

#### ⏱️ 15-40 min : Pages utilisateur (PARTIE 1 - PRIORITÉ)
- [ ] **Page inscription** (formulaire simple)
- [ ] **Page login** (formulaire simple)
- [ ] **Page liste mes objets** (affichage tableau/cards)
- [ ] **Page ajouter objet** (formulaire avec titre, description, prix, catégorie)

#### ⏱️ 40-70 min : Échanges (PARTIE 1 - PRIORITÉ)
- [ ] **Page liste objets des autres** (cards avec bouton "Proposer échange")
- [ ] **Page mes propositions** (liste avec boutons Accepter/Refuser)

#### ⏱️ 70-90 min : PARTIE 2 (si temps)
- [ ] Barre de recherche (titre + catégorie)
- [ ] Page historique objet (liste des propriétaires)

---

### **PERSONNE 3 - BACKOFFICE & INTÉGRATION** (1h30)

#### ⏱️ 0-20 min : Setup admin
- [ ] Créer dossier /admin
- [ ] Intégrer template pour admin
- [ ] **Page login admin** (formulaire pré-rempli: admin/admin123)

#### ⏱️ 20-50 min : Gestion catégories (PARTIE 1 - PRIORITÉ)
- [ ] **Page liste catégories** (tableau avec actions)
- [ ] **Ajouter catégorie** (formulaire)
- [ ] **Modifier catégorie** (formulaire)
- [ ] **Supprimer catégorie** (bouton avec confirmation)

#### ⏱️ 50-80 min : Statistiques (PARTIE 2)
- [ ] **Dashboard admin** avec:
  - Nombre total d'utilisateurs inscrits
  - Nombre d'échanges effectués
  - Graphique simple (optionnel)

#### ⏱️ 80-90 min : Finalisation
- [ ] Vérifier tous les liens
- [ ] Tester la navigation
- [ ] Push final sur GIT

---

## 📋 CHECKLIST FINALE (5 dernières minutes)

### Vérifications communes
- [ ] Footer avec noms et numéros ETU présent partout
- [ ] Login admin fonctionne (admin/admin123)
- [ ] Au moins 1 utilisateur peut se connecter
- [ ] Au moins 5 objets visibles
- [ ] Au moins 1 proposition d'échange fonctionne

### Livrables
- [ ] **Lien GIT public** avec:
  - Code source complet
  - README avec instructions d'installation
  - Export SQL de la base de données
- [ ] **Lien liste des tâches** (Trello/Notion/GitHub Projects)

---

## 🚨 PRIORITÉS ABSOLUES (à faire en premier)

1. ✅ **Setup BDD** (Personne 1)
2. ✅ **Login utilisateur** (Personne 2)
3. ✅ **Login admin** (Personne 3)
4. ✅ **Liste objets** (Personne 2)
5. ✅ **Gestion catégories** (Personne 3)
6. ✅ **Propositions échange** (Personne 2)

**PARTIE 2 = BONUS si temps restant !**

---

## 🔗 LIENS UTILES

- **FlightPHP Doc**: https://flightphp.com/learn
- **Bootstrap 5 Doc**: https://getbootstrap.com/docs/5.0/
- **Templates gratuits**: Voir section en haut

---

## 💡 CONSEILS

1. **Commencez simple** : Faites fonctionner le minimum d'abord
2. **Utilisez le template tel quel** : Pas de personnalisation graphique excessive
3. **SQL simple** : Pas de requêtes complexes, juste CRUD basique
4. **Testez au fur et à mesure** : Ne pas tout coder puis tester à la fin
5. **Communication** : Synchronisez-vous toutes les 30 min

**BONNE CHANCE ! 🚀**
