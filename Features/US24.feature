Feature: US24 - Revisión de respuestas anteriores

  Como usuario en proceso de mejora continua
  Quiero revisar mis respuestas pasadas
  Para identificar errores frecuentes y notar avances

  Scenario: E1 - Revisión de historial
     Given que el usuario completó simulaciones previas
     When accede a "Mis entrevistas"
     Then puede reproducir respuestas guardadas con notas

  Scenario: E2 - Agregar observaciones
     Given que el usuario detecta un error
     When pausa la reproducción
     Then puede agregar comentarios personales

  Scenario: E3 - Respuesta no disponible
     Given que una grabación fue eliminada
     When intenta reproducirla
     Then el sistema muestra "Archivo no disponible"

  Scenario: E4 - Descarga de transcripción
     Given que el usuario desea estudiar sin conexión
     When presiona "Descargar"
     Then el sistema genera la transcripción en PDF