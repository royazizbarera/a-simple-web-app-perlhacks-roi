-- Membuat database books jika belum ada
create database if not exists books;

-- Menggunakan database books
use books;

-- Membuat tabel author dan book
create table if not exists author (
  id integer primary key auto_increment,
  name varchar(100)
) engine innodb;

create table if not exists book (
  id integer primary key auto_increment,
  isbn char(10),
  author integer,
  title varchar(250),
  started datetime,
  ended datetime,
  image_url varchar(250),
  foreign key (author) references author (id)
) engine innodb;

-- Mengisi data ke tabel author
INSERT INTO author (name) VALUES
  ('Penulis 1'),
  ('Penulis 2'),
  ('Penulis 3'),
  ('Penulis 4'),
  ('Penulis 5'),
  ('Penulis 6'),
  ('Penulis 7'),
  ('Penulis 8'),
  ('Penulis 9'),
  ('Penulis 10');

-- Mengisi data ke tabel book
INSERT INTO book (isbn, author, title, started, ended, image_url) VALUES
  ('1234567890', 1, 'Buku Agenda Dokumen A4', null, '2023-09-23 12:00:00', 'https://marketplace.canva.com/EAFYHx4rn2w/1/0/1131w/canva-coklat-krem-kreatif-modern-cover-buku-agenda-dokumen-a4-0zKNiSfvTXM.jpg'),
  ('9876543210', 2, 'Buku Penuh Warna Pintar Membaca Ceria', null, '2023-09-23 15:00:00', 'https://marketplace.canva.com/EAFT42ozuLI/1/0/1003w/canva-sampul-buku-anak-penuh-warna-pintar-membaca-ceria-Gv3dp7UGOK8.jpg'),
  ('5678901234', 3, 'Kuning Pastel Abstrak Tipografis Menyambut Bulan Suci Ramadan Sampul Buku', null, '2023-09-23 18:00:00', 'https://marketplace.canva.com/EAFaPvq8-FM/1/0/1003w/canva-kuning-pastel-abstrak-tipografis-menyambut-bulan-suci-ramadan-sampul-buku-DdkDi7OhmF0.jpg'),
  ('1112233445', 4, 'Coklat Ungu Pastel Berilustrasi Kiat Mendidik Anak Sampul Buku', '2023-09-24 10:00:00', '2023-09-24 12:00:00', 'https://marketplace.canva.com/EAFWhpFyf0w/1/0/1003w/canva-coklat-ungu-pastel-berilustrasi-kiat-mendidik-anak-sampul-buku-Qzm5BYgJcAo.jpg'),
  ('5556667778', 5, 'Warna-warni Ilustratif Watercolor Sampul Buku Harian', '2023-09-24 13:00:00', null, 'https://marketplace.canva.com/EAFtE6xoiQQ/1/0/501w/canva-warna-warni-ilustratif-watercolor-sampul-buku-harian-ahmV79kpdWQ.jpg'),
  ('9990001112', 6, 'Cover Buku Anak Kecil Ilustrasi Burung Kuning Cokelat', '2023-09-24 16:00:00', null, 'https://marketplace.canva.com/EAEhB4GOTgM/1/0/1003w/canva-cover-buku-anak-kecil-ilustrasi-burung-kuning-cokelat-ZshXOMNb5o0.jpg'),
  ('1234567891', 7, 'Perahu Kertas', '2023-09-25 10:00:00', '2023-09-25 12:00:00', 'https://marketplace.canva.com/EAFHJRzYEVc/1/0/1003w/canva-biru-putih-sederhana-perahu-kertas-sampul-buku-novel-o-AFZ0HeZJM.jpg'),
  ('9876543211', 8, 'Kuning Illustrasi Cinta Itu Fana Book Cover', '2023-09-25 13:00:00', '2023-09-25 15:00:00', 'https://marketplace.canva.com/EAFYuq3ziuY/1/0/1003w/canva-kuning-illustrasi-cinta-itu-fana-book-cover-8CVyTOGfQ2c.jpg'),
  ('5678901235', 9, 'Hijau Dan Abu-abu Bergaya Ilustrasi Kreatif Cerita Tentang Kita Ebook Cover', '2023-09-25 16:00:00', '2023-09-25 18:00:00', 'https://marketplace.canva.com/EAFItC8VGOI/1/0/1024w/canva-hijau-dan-abu-abu-bergaya-ilustrasi-kreatif-cerita-tentang-kita-ebook-cover-mhTciGM5itQ.jpg'),
  ('1112233446', 10, 'Krem Dan Hijau Bergaya Kreatif Ilustrasi Tentang Kisah Romantis Sampul Ebook', '2023-09-26 10:00:00', null, 'https://marketplace.canva.com/EAFOzrmfOJY/1/0/1024w/canva-krem-dan-hijau-bergaya-kreatif-ilustrasi-tentang-kisah-romantis-sampul-ebook-EAEDmOgYFmc.jpg');
