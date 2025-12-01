Feature: US26 - Comparación con otros usuarios

  Como joven profesional
  Quiero comparar mi desempeño con otros usuarios de mi misma carrera
  Para conocer mi nivel competitivo

  Scenario: E1 - Comparación general
     Given que el usuario completó varias simulaciones
     When accede al panel comparativo
     Then el sistema muestra su promedio frente al grupo

  Scenario: E2 - Filtros personalizados
     Given que desea comparar por criterios
     When aplica filtros tales como "carrera, nivel, edad"
     Then el sistema actualiza los resultados

  Scenario: E3 - Sin datos suficientes
     Given que no hay usuarios similares
     When intenta comparar
     Then el sistema informa la insuficiencia de datos en un mensaje

  Scenario: E4 - Gráfico de ranking
     Given que existen suficientes registros
     When accede a su panel
     Then se muestra un gráfico de posición dentro del ranking global