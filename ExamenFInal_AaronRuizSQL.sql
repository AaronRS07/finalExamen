CREATE DATABASE Musica;
GO

USE Musica;
GO

CREATE TABLE TablaInterprete (
    Clav_int INT IDENTITY PRIMARY KEY,
    Interprete VARCHAR(50) NOT NULL,
    Biografia VARCHAR(1000),
    Foto VARCHAR(255)
);
GO

CREATE TABLE TablaCancion (
    Clav_int INT NOT NULL,
    Cancion VARCHAR(100) NOT NULL,
    GeneroMusical VARCHAR(50),
    AnioLanzamiento INT,
    FOREIGN KEY (Clav_int) REFERENCES TablaInterprete(Clav_int)
);
GO

CREATE PROCEDURE ConsultarInterprete
    @Clav_int INT
AS
BEGIN
    SELECT * FROM TablaInterprete WHERE Clav_int = @Clav_int;
END;
GO

CREATE PROCEDURE InsertarInterprete
    @Interprete VARCHAR(50),
    @Biografia VARCHAR(1000),
    @Foto VARCHAR(255)
AS
BEGIN
    INSERT INTO TablaInterprete (Interprete, Biografia, Foto)
    VALUES (@Interprete, @Biografia, @Foto);
END;
GO

CREATE PROCEDURE BorrarInterprete
    @Clav_int INT
AS
BEGIN
    DELETE FROM TablaInterprete WHERE Clav_int = @Clav_int;
END;
GO

CREATE PROCEDURE ModificarInterprete
    @Clav_int INT,
    @Interprete VARCHAR(50),
    @Biografia VARCHAR(1000),
    @Foto VARCHAR(255)
AS
BEGIN
    UPDATE TablaInterprete
    SET Interprete = @Interprete,
        Biografia = @Biografia,
        Foto = @Foto
    WHERE Clav_int = @Clav_int;
END;
GO

CREATE PROCEDURE InsertarCancion
    @Clav_int INT,
    @Cancion VARCHAR(100),
    @GeneroMusical VARCHAR(50),
    @AnioLanzamiento INT
AS
BEGIN
    INSERT INTO TablaCancion (Clav_int, Cancion, GeneroMusical, AnioLanzamiento)
    VALUES (@Clav_int, @Cancion, @GeneroMusical, @AnioLanzamiento);
END;
GO

CREATE PROCEDURE BorrarCancion
    @Clav_int INT,
    @Cancion VARCHAR(100)
AS
BEGIN
    DELETE FROM TablaCancion
    WHERE Clav_int = @Clav_int AND Cancion = @Cancion;
END;
GO

CREATE PROCEDURE ModificarCancion
    @Clav_int INT,
    @Cancion VARCHAR(100),
    @NuevoGeneroMusical VARCHAR(50),
    @NuevoAnioLanzamiento INT
AS
BEGIN
    UPDATE TablaCancion
    SET GeneroMusical = @NuevoGeneroMusical,
        AnioLanzamiento = @NuevoAnioLanzamiento
    WHERE Clav_int = @Clav_int AND Cancion = @Cancion;
END;
GO

EXEC InsertarInterprete @Interprete = 'Luis Miguel', @Biografia = 'Cantante Mexicano', @Foto = 'luis.jpg';
EXEC InsertarCancion @Clav_int = 1, @Cancion = 'La Incondicional', @GeneroMusical = 'Balada', @AnioLanzamiento = 1988;

EXEC ConsultarInterprete @Clav_int = 1;
EXEC ModificarInterprete @Clav_int = 1, @Interprete = 'Luis Miguel', @Biografia = 'Icono de la música latina', @Foto = 'luis_actualizado.jpg';
EXEC BorrarCancion @Clav_int = 1, @Cancion = 'La Incondicional';
EXEC BorrarInterprete @Clav_int = 1;
GO
