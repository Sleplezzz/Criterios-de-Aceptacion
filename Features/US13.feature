Feature: US13 - Preferencias de idioma del usuario
  Como usuario
  Quiero seleccionar mi idioma
  Para usar la plataforma en el idioma de mi preferencia

  Scenario: E1 - Cambio exitoso de idioma
    Given que el usuario abre "Configuración de idioma"
    When selecciona un idioma disponible
    Then la interfaz cambia y se guarda la preferencia

    Examples:
      | Boton      | Seccion                 |
      | Idioma     | Configuración de idioma |
      | Guardar    | Configuración de idioma |

  Scenario: E2 - Idioma no disponible
    Given que el usuario abre "Configuración de idioma"
    When selecciona un idioma no disponible
    Then el sistema informa que no existe

    Examples:
      | Boton       | Seccion                 |
      | Seleccionar | Configuración de idioma |

  Scenario: E3 - Persistencia entre sesiones
    Given que el usuario cambió de idioma
    When vuelve a iniciar sesión
    Then la preferencia se mantiene

    Examples:
      | Boton          | Seccion          |
      | Iniciar sesión | Configuración    |

  Scenario: E4 - Coherencia con simulaciones
    Given que la interfaz está en un idioma
    When accede a una simulación en otro
    Then el sistema informa del idioma de la simulación

    Examples:
      | Boton      | Seccion          |
      | Iniciar    | Simulación       |


