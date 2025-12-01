Feature: US22 - Puntuación automática por simulación
  Como joven profesional
  Quiero recibir una puntuación automática al finalizar cada entrevista simulada
  Para conocer mi nivel de preparación y enfocar mis mejoras

  Scenario: E1 - Generación de puntaje
     Given que la simulación finalizó
     When la IA analiza las respuestas
     Then el sistema muestra un puntaje general y subpuntajes

  Scenario: E2 - Sugerencias según puntaje
     Given que el usuario obtuvo un puntaje bajo
     When se genera el informe
     Then se incluyen recomendaciones automáticas

  Scenario: E3 - Evaluación parcial
     Given que la grabación se interrumpió
     When el sistema calcula el puntaje
     Then se muestra "Evaluación parcial"

  Scenario: E4 - Error de procesamiento IA
     Given que ocurre una falla al generar resultados
     When finaliza la simulación
     Then el sistema muestra "No se pudo calcular puntaje" y guarda el intento
