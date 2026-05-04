# 📘 **Ejercicio: Planificación de Mudanza con Recursos Limitados**

**Tipo de ejercicio:**
Clásico de **Constraint Programming (CP)** para asignación de recursos con restricción **Cumulative**.

**Objetivo:**
Planificar el movimiento de varios muebles en un tiempo máximo de **60 minutos**, utilizando un número limitado de personas.

**Datos del problema:**
| Mueble   | Personas requeridas | Duración (minutos) |
|----------|---------------------|--------------------|
| Piano    | 3                   | 30                 |
| Cama     | 3                   | 15                 |
| Silla    | 1                   | 10                 |
| Mesa     | 2                   | 15                 |

**Restricción:**
- Solo hay **4 personas disponibles** en total para mover los muebles.
- Cada mueble debe ser movido por el número de personas requeridas durante toda su duración.
- Los muebles no pueden ser movidos en paralelo si la suma de personas requeridas excede el límite de 4.

**Meta:**
Encontrar un horario factible que permita terminar de mover **todos los muebles en 60 minutos o menos**, respetando la limitación de recursos (personas).

---

### **Explicación del código:**

1. **Modelo de CP:**
   Se crea un modelo de **Constraint Programming** usando OR-Tools.

2. **Variables:**
   - `inicio[i]`: Momento en que comienza a moverse el mueble `i`.
   - `fin[i]`: Momento en que termina de moverse el mueble `i`.
   - `makespan`: Tiempo total de finalización (máximo de todos los `fin[i]`).

3. **Restricciones:**
   - `fin[i] = inicio[i] + duraciones[i]`: El fin de cada mueble es su inicio más su duración.
   - `AddCumulative`: Asegura que en ningún momento se excedan las 4 personas disponibles.

4. **Objetivo:**
   Minimizar el `makespan` (tiempo total de finalización).

5. **Salida:**
   Imprime el horario de inicio y fin para cada mueble, y el tiempo total de finalización.

---

### **Ejemplo de salida esperada:**

```
Horario factible encontrado:
Mueble  Inicio  Fin     Personas        Duración
Piano   0       30      3               30
Cama    30      45      3               15
Silla   0       10      1               10
Mesa    45      60      2               15

Tiempo total de finalización (makespan): 60 minutos
```
