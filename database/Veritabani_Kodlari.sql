CREATE DATABASE IF NOT EXISTS yemek_uygulamasi;
USE yemek_uygulamasi;

CREATE TABLE kullanicilar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    telefon_numarasi VARCHAR(15) UNIQUE NOT NULL,
    kayit_tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tarifler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(100) NOT NULL,
    aciklama TEXT,
    yapilis TEXT,
    gorsel_url TEXT,
    hazirlik_suresi INT,
    pisirme_suresi INT,
    porsiyon INT,
    olusturulma_tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE kategoriler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL
);

CREATE TABLE tarif_kategorileri (
    tarif_id INT,
    kategori_id INT,
    PRIMARY KEY (tarif_id, kategori_id),
    FOREIGN KEY (tarif_id) REFERENCES tarifler(id) ON DELETE CASCADE,
    FOREIGN KEY (kategori_id) REFERENCES kategoriler(id) ON DELETE CASCADE
);

CREATE TABLE malzemeler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(100) NOT NULL
);

CREATE TABLE tarif_malzemeleri (
    tarif_id INT,
    malzeme_id INT,
    miktar VARCHAR(50),
    PRIMARY KEY (tarif_id, malzeme_id),
    FOREIGN KEY (tarif_id) REFERENCES tarifler(id) ON DELETE CASCADE,
    FOREIGN KEY (malzeme_id) REFERENCES malzemeler(id) ON DELETE CASCADE
);

CREATE TABLE favoriler (
    kullanici_id INT,
    tarif_id INT,
    PRIMARY KEY (kullanici_id, tarif_id),
    FOREIGN KEY (kullanici_id) REFERENCES kullanicilar(id) ON DELETE CASCADE,
    FOREIGN KEY (tarif_id) REFERENCES tarifler(id) ON DELETE CASCADE
);

CREATE TABLE geri_bildirim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kullanici_id INT,
    mesaj TEXT,
    olumlu_mu BOOLEAN NOT NULL,
    bildirim_tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (kullanici_id) REFERENCES kullanicilar(id) ON DELETE CASCADE
);
