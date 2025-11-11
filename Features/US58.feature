Feature: US58 - Contacto con equipo
  Como visitante de la página web
  Quiero acceder a la información de contacto del equipo de HireReady
  Para poder comunicarme en caso de dudas o soporte técnico

  Scenario: E1 - Visualización de datos de contacto
    Given que el visitante llega al final del Landing Page
    When visualiza la sección "Contacto"
    Then se muestran los siguientes datos de contacto:
      | Correo electrónico institucional |
      | Teléfono de soporte              |
      | Dirección física de la empresa   |