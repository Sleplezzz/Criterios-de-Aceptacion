Feature: US28 - Acceso a respuestas modelo

  Como estudiante
  Quiero acceder a ejemplos de buenas respuestas
  Para aprender a expresarme correctamente en entrevistas

  Scenario: E1 - Visualización de ejemplos
     Given que el usuario accede al módulo de aprendizaje
     When selecciona una categoría
     Then se muestran respuestas modelo de alta calidad

  Scenario: E2 - Escuchar ejemplos
     Given que el usuario prefiere el modo auditivo
     When presiona "Escuchar ejemplo"
     Then el sistema reproduce la respuesta por voz

  Scenario: E3 - Contenido no cargado
     Given que no se pudo acceder a la base de ejemplos
     When intenta visualizar
     Then el sistema muestra "Contenido temporalmente no disponible"

  Scenario: E4 - Guardar ejemplo favorito
     Given que el usuario desea revisarlo después
     When presiona el ícono de favorito
     Then el ejemplo se guarda en su biblioteca