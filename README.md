## Práctica 1: Introducción a Haskell

**Entrega: Lunes 27 de marzo de 2023**

*La práctica podrá realizasrse en equipos de máximo 3 integrantes*

### Instrucciones

1. (10pts.) Completar las funciones faltantes del módulo [Codificación](src/Codificacion.hs) y cargarlo correctamente en el 
   intérprete. 

   ```bash
   > ghci Codificacion.hs 
   GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
   [1 of 1] Compiling Codificacion     ( Codificacion.hs, interpreted )
   Ok, one module loaded.
   *Codificacion>
   ```

   **Es requisito indispensable para revisar el resto de ejercicios que esta parte funcione correctamente. En caso contrario la calificación de la práctica será CERO.**

1. (80pts.) Ejecutar el archivo de pruebas unitarias [PruebasPractica01](src/PruebasPractica01.hs) y asegurarse de pasar 
   todos los casos contenidos en el mismo.

   ```bash
   > ghci PruebasPractica01.hs 
   GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
   [1 of 2] Compiling Codificacion     ( Codificacion.hs, interpreted )
   [2 of 2] Compiling PruebasPractica01 ( PruebasPractica01.hs, interpreted )
   Ok, two modules loaded.
   *PruebasPractica01> run
   Prueba 1: +++ OK, passed 1 test.
   Prueba 2: +++ OK, passed 1 test.
   Prueba 3: +++ OK, passed 1 test.
   ...
   ```

1. (10pts.) Ejecutar el módulo [Practica01](src/Practica01.hs), y asegurarse de obtener la siguiente salida:
   
   ```bash
   > ghci Practica01.hs 
   GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
   [1 of 2] Compiling Codificacion     ( Codificacion.hs, interpreted )
   [2 of 2] Compiling Practica01       ( Practica01.hs, interpreted )
   Ok, two modules loaded.
   *Practica01> run
   Introduce un mensaje: Eres lo que piensas
   serEuqo lei pe sasn
   ```

   Te surgerimos probar otras entradas.

### Restricciones

- La hora máxima de entrega será a las **23:59:59** de la fecha indicada al inicio de este documento.

- Para poder pedir una prórroga sobre la entrega es requisito **indispensable** que todos los equipos de estudiantes
  hagan cambios (*commit*) constantes a su repositorio a lo largo del periodo de realización de la práctica.

- **Todas las copias serán calificadas automáticamente con cero**.

### Material de consulta

- Capítulo 1 del manual de prácticas disponible en la página del curso.

- Hoogle (API de Haskell): [https://hoogle.haskell.org/](https://hoogle.haskell.org/)

- Funciones útiles: `takeWhile`, `dropWhile`, `take`, `drop`, `concat`, `map`, `reverse`
