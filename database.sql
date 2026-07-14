-- ============================================================
-- Mente Clara · Base de datos para XAMPP
-- Importar este archivo en phpMyAdmin (http://localhost/phpmyadmin)
-- ============================================================

CREATE DATABASE IF NOT EXISTS psicologia_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE psicologia_db;

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(120) NOT NULL UNIQUE,
  clave VARCHAR(255) NOT NULL,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS citas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  telefono VARCHAR(30) NOT NULL,
  servicio VARCHAR(60) NOT NULL,
  fecha DATE NOT NULL,
  horario VARCHAR(40) NOT NULL,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
