Feature: US15 - Selección de modo de entrevista
  Como usuario
  Quiero elegir entre modo voz o texto
  Para practicar como prefiera

  Scenario: E1 - Modo voz
    Given configuración visible
    When selecciona "Voz"
    Then se habilita micrófono y cámara

    Examples:
      | Boton  | Seccion                     |
      | Voz    | Configuración de simulación |
      | Camará | Configuración de simulación |

  Scenario: E2 - Modo texto
    Given configuración visible
    When selecciona "Texto"
    Then aparece cuadro de escritura

    Examples: 
      | Boton  | Seccion                     |
      | Texto  | Configuración de simulación |

  Scenario: E3 - Voz no disponible
    Given el dispositivo no tiene micrófono
    When selecciona "Voz"
    Then el sistema sugiere usar texto

    Examples:
      | Boton | Seccion                     |
      | Voz   | Configuración de simulación |
      | Texto | Configuración de simulación |

  Scenario: E4 - Cambio antes de iniciar
    Given modo "Texto" elegido
    When cambia a "Voz"
    Then se actualiza la configuración

    Examples:
      | Boton   | Seccion                     |
      | Cambiar | Configuración de simulación |
      | Voz     | Configuración de simulación |

