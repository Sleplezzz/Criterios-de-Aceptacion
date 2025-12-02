Feature: US12 - Recuperación de progreso tras inicio de sesión
  Como usuario que cambió de dispositivo
  Quiero recuperar mi progreso
  Para continuar sin perder información

  Scenario: E1 - Sincronización completa
    Given que el usuario inicia sesión en un nuevo dispositivo
    When el sistema valida correctamente la cuenta
    Then sincroniza todo el progreso

    Examples:
      | Boton          | Seccion             |
      | Iniciar sesión | Sincronización      |

  Scenario: E2 - Error de red al sincronizar
    Given que el usuario inicia sesión sin conexión estable
    When el sistema intenta sincronizar
    Then muestra error de red

    Examples:
      | Boton          | Seccion          |
      | Error Conexion | Sincronización   |
      | Reintentar     | Sincronización   |

  Scenario: E3 - Conflicto de versiones
    Given que existen cambios locales y remotos
    When el sistema detecta conflicto
    Then el usuario elige la versión a mantener

    Examples:
      | Boton       | Seccion            |
      | Seleccionar | Conflicto versiones |

  Scenario: E4 - Sincronización en segundo plano
    Given que hay una sincronización pendiente
    When mejora la conexión
    Then el sistema sincroniza en segundo plano

    Examples:
      | Boton           | Seccion            |
      | Sincronizar     | Segundo plano      |
