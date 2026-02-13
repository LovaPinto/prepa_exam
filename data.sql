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
    username VARCHAR(50) ,
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

