Feature: US32 - Guardado automático del progreso

  Como usuario que practica entrevistas
  Quiero que el sistema guarde automáticamente mi avance
  Para evitar perder información por errores o cierres inesperados

  Scenario: E1 - Guardado activo
     Given que el usuario está en simulación
     When responde preguntas
     Then el sistema guarda automáticamente cada progreso en segundo plano

  Scenario: E2 - Error de guardado
     Given que el servidor no responde
     When intenta registrar el progreso
     Then el sistema muestra un aviso y reintenta

  Scenario: E3 - Confirmación visual
     Given que el sistema guarda correctamente
     When el usuario responde
     Then aparece un ícono de guardado exitoso

  Scenario: E4 - Recuperación tras cierre
     Given que la aplicación se cerró abruptamente
     When el usuario vuelve a iniciar
     Then el sistema restaura el último estado guardado