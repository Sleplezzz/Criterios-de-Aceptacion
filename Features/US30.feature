Feature: US30 - Escenarios presenciales o remotos

  Como usuario
  Quiero elegir entre entrevistas simuladas presenciales o virtuales
  Para practicar según el contexto laboral que necesite

  Scenario: E1 - Selección de formato
     Given que el usuario configura su simulación
     When elige entre las opciones "Presencial" o "Virtual"
     Then el sistema adapta la interfaz al contexto

  Scenario: E2 - Cambio durante práctica
     Given que el usuario desea alternar el modo
     When interrumpe la simulación
     Then puede cambiar de formato antes de continuar

  Scenario: E3 - Modo no compatible
     Given que el dispositivo no cumple requisitos de video
     When selecciona "Virtual"
     Then el sistema informa la incompatibilidad
 
  Scenario: E4 - Guardar preferencia
     Given que el usuario repite simulaciones
     When selecciona un modo
     Then el sistema guarda esa elección por defecto