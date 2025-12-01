Feature: US31 - Reanudación de entrevistas

  Como usuario que realiza simulaciones
  Quiero retomar entrevistas incompletas
  Para continuar sin perder mi progreso

  Scenario: E1 - Reanudación exitosa
     Given que el usuario tiene una sesión guardada
     When selecciona "Reanudar entrevista"
     Then la simulación continúa desde el punto de pausa

  Scenario: E2 - Guardado automático
     Given que la entrevista se interrumpe inesperadamente
     When se detecta inactividad o cierre
     Then el sistema guarda el progreso

  Scenario: E3 - Sesión expirada
     Given que la entrevista fue pausada hace más de 24 h
     When intenta reanudar
     Then el sistema muestra "Sesión expirada"

  Scenario: E4 - Resumen previo
     Given que el usuario reanuda después de un tiempo
     When inicia nuevamente
     Then el sistema muestra un resumen del progreso anterior
