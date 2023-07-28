-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Tem 2023, 16:17:47
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `stdmgdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `hours_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `course`
--

INSERT INTO `course` (`id`, `label`, `hours_number`) VALUES
(13, 'CHE 105- GENERAL CHEMISTRY', 68),
(14, 'CMPE 109 - Fundamentals of Calculation', 83),
(15, 'CMPE113-Computer Programming I', 85),
(16, 'ENG101-Academic English I', 57),
(18, 'HIST111-History of Revolution I', 34),
(19, 'MATH151-Calculus I', 79),
(20, 'CMPE114-Computer Programming II', 118),
(21, 'CMPE225-Object-based programming', 132),
(22, 'CMPE251-Discrete Computational Structures', 111),
(23, 'EE203-Digital Circuits', 84),
(24, 'CMPE226-Data Structures', 92),
(25, 'CMPE341-Database Design and Management', 79);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `score`
--

CREATE TABLE `score` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_score` float DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `score`
--

INSERT INTO `score` (`student_id`, `course_id`, `student_score`, `description`) VALUES
(5, 19, 72, 'BB'),
(6, 16, 100, 'AA'),
(13, 16, 30, 'DD'),
(14, 16, 60, 'CB'),
(15, 21, 24, 'FF'),
(17, 24, 10, 'FF'),
(18, 13, 95, 'AA'),
(19, 14, 48, 'DC'),
(20, 15, 80, 'BA'),
(21, 18, 99, 'AA'),
(22, 19, 75, 'BB'),
(23, 20, 82, 'BA'),
(24, 21, 37, 'DD'),
(25, 23, 77, 'BB'),
(26, 25, 83, 'BA'),
(6, 15, 100, 'AA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `sex`, `birthdate`, `phone`, `address`) VALUES
(5, 'Aslan', 'Koçer', 'Male', '1992-07-19', '05389774325', 'İstanbul'),
(6, 'Özge', 'Erkeskin', 'Female', '1999-01-18', '05389772189', 'Çayyolu'),
(13, 'Aslı', 'Keser', 'Female', '2010-07-17', '453532667658', 'Afyon'),
(14, 'Sevim', 'Sancak', 'Female', '2007-07-20', '2323545243', 'Çankaya'),
(15, 'Aslı', 'Kekik', 'Female', '1999-12-21', '2342434242', 'Elazığ'),
(17, 'Tunahan', 'Akhisar', 'Male', '1999-08-24', '05348779822', 'Dikmen'),
(18, 'ÖZEN', 'ÖZLEM', 'Female', '1990-02-14', '605-475-6961  ', 'Kızılay'),
(19, 'AHMET', 'KARA', 'Male', '1990-11-29', '605-475-6961  ', 'Esat'),
(20, 'AYŞE', 'KELEBEK', 'Female', '2000-01-11', '05389703456  ', 'Kavaklıdere'),
(21, 'BETÜL', 'ÖZTÜRK', 'Female', '2000-04-04', '0538971212 ', 'Bahçelievler'),
(22, 'BURCU NAZLI', 'GÜMÜŞBAŞ', 'Female', '1999-04-06', '0538924567', 'Etimesgut'),
(23, 'Tuğerk', 'Özşen', 'Male', '1998-11-04', '053456678898', 'Oran'),
(24, 'Fulya', 'Türkmen', 'Female', '1990-09-26', '05346786543', 'İncek'),
(25, 'Ahmet', 'Kara', 'Male', '1990-09-11', '05346781214', 'Bağlıca'),
(26, 'Koray', 'Tanyıldızı', 'Male', '1991-03-04', '05398775643', 'Bahçelievler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'robot', '112233'),
(4, 'root', 'root'),
(5, 'admin', 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `score`
--
ALTER TABLE `score`
  ADD KEY `fk_score_student` (`student_id`),
  ADD KEY `fk_score_course` (`course_id`);

--
-- Tablo için indeksler `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_score_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_score_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
