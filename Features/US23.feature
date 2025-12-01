Feature: US23 - Consejos personalizados de mejora

  Como joven profesional
  Quiero recibir recomendaciones automáticas después de cada simulación
  Para reforzar mis debilidades y continuar mejorando

  Scenario: E1 - Generación de consejos
     Given que la IA terminó el análisis
     When el usuario visualiza los resultados
     Then el sistema muestra consejos personalizados por categoría

  Scenario: E2 - Guardar consejos favoritos
     Given que el usuario desea retener sugerencias
     When presiona la opción "Guardar"
     Then los consejos seleccionados se almacenan en su biblioteca

  Scenario: E3 - Sin suficientes datos
     Given que el usuario no completó la simulación
     When intenta obtener consejos
     Then el sistema informa que no hay datos suficientes

  Scenario: E4 - Compartir recomendaciones
     Given que el usuario tiene mentor vinculado
     When finaliza la simulación
     Then puede compartir el informe de consejos por correo o enlace