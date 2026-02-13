-- Créer la base de données
CREATE DATABASE IF NOT EXISTS takalo_db;
USE takalo_db;

-- Insérer des catégories par défaut
INSERT INTO categories (nom, description) VALUES
('Électronique', 'Appareils électroniques et gadgets'),
('Vêtements', 'Vêtements et accessoires de mode'),
('Livres', 'Livres, magazines et publications'),
('Meubles', 'Mobilier et équipements de maison'),
('Sports', 'Équipements et accessoires sportifs'),
('Jeux', 'Jeux vidéo et jeux de société');

-- Insérer un utilisateur admin de test
INSERT INTO admins (username, password) VALUES
('admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- Insérer des utilisateurs de test
INSERT INTO users (nom, prenom, email, password, num_etu) VALUES
('Rabe', 'Jean', 'jean.rabe@etu.univ.fr', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ETU001'),
('Rakoto', 'Marie', 'marie.rakoto@etu.univ.fr', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ETU002'),
('Randria', 'Pierre', 'pierre.randria@etu.univ.fr', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ETU003');

-- Insérer quelques objets de test
INSERT INTO objets (titre, description, prix_estimatif, id_categorie, id_proprietaire) VALUES
('iPhone 12', 'iPhone 12 en bon état, 128GB', 350.00, 1, 1),
('Veste en cuir', 'Veste en cuir noir taille M', 75.00, 2, 2),
('Livre PHP Avancé', 'Livre PHP avancé en français', 25.00, 3, 1),
('Table basse', 'Table basse en bois, état moyen', 40.00, 4, 3);

-- Insérer des photos pour les objets
INSERT INTO photos (id_objet, url_photo) VALUES
(1, 'uploads/iphone12.jpg'),
(2, 'uploads/veste.jpg'),
(3, 'uploads/php-avance.jpg'),
(4, 'uploads/table.jpg');
