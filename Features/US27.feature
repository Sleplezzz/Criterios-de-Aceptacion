Feature: US27 - Detección de muletillas

  Como usuario
  Quiero que la IA detecte mis muletillas frecuentes
  Para corregirlas y sonar más fluido en entrevistas

  Scenario: E1 - Detección exitosa
     Given que el usuario completó una entrevista
     When la IA analiza el audio
     Then resalta las muletillas detectadas tales como "eh", "este", "mmm"

  Scenario: E2 - Sugerencias de reemplazo
     Given que el sistema detecta muletillas recurrentes
     When muestra el resultado
     Then sugiere alternativas lingüísticas

  Scenario: E3 - Audio defectuoso
     Given que el micrófono no registró con claridad
     When se analiza la grabación
     Then se muestra el mensaje "Audio insuficiente"

  Scenario: E4 - Estadísticas de frecuencia
     Given que el usuario repite entrevistas
     When revisa su historial
     Then el sistema muestra un conteo de frecuencia de muletillas