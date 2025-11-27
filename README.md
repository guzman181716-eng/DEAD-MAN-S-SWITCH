# 🔒 Dead Man's Switch - Sistema de Seguridad Automático

[![Death Note Aesthetic](https://img.shields.io/badge/Aesthetic-Death%20Note-black)](https://github.com)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green)](https://nodejs.org)
[![React](https://img.shields.io/badge/React-Vanilla%20JS-blue)](https://reactjs.org)

Una aplicación web completa de **Dead Man's Switch** con estética inspirada en Death Note (noir/minimalista). El sistema permite configurar mensajes que se envían automáticamente vía WhatsApp si no se reinicia un temporizador a tiempo.

## 📋 Características

### ✨ Funcionalidades Principales

- **📊 Dashboard Interactivo**
  - Cronómetro visual en tiempo real
  - Múltiples duraciones configurables (1h - 72h)
  - Estados visuales: 🟢 Activo | 🔴 Desactivado | ⚠ Crítico

- **📝 Sistema de Mensajes**
  - Editor de mensajes con vista previa
  - Encriptación AES-256 en base de datos
  - Mensajes persistentes y editables

- **👥 Gestión de Contactos**
  - Agregar/editar/eliminar contactos
  - Verificación de formato WhatsApp
  - Activación/desactivación individual

- **🧪 Modo de Prueba**
  - Test de 10 segundos
  - Envío a contacto único
  - Validación del sistema

- **🔐 Seguridad**
  - Autenticación JWT
  - Contraseñas hasheadas con bcrypt
  - Mensajes encriptados AES
  - Logs de auditoría

### 🎨 Estilo Visual

Inspirado en **L de Death Note**:
- Paleta blanco y negro elegante
- Tipografía serif (Cormorant Garamond)
- Animaciones sutiles
- Efectos de papel vintage digital
- Interfaz minimalista tipo investigación

## 🚀 Instalación

### Requisitos Previos

- **Node.js** 16 o superior
- **npm** o **yarn**
- Cuenta de **Twilio** (para WhatsApp) o **Meta WhatsApp Cloud API**

### Paso 1: Clonar/Descargar el Proyecto

El proyecto ya está en:
```
c:\Users\52753\OneDrive\Documents\gravity\deadmans-switch\
```

### Paso 2: Instalar Backend

```bash
cd backend
npm install
```

Esto instalará:
- express
- cors
- better-sqlite3
- bcryptjs
- jsonwebtoken
- crypto-js
- dotenv
- twilio

### Paso 3: Configurar Variables de Entorno

Editar el archivo `backend/.env`:

```env
# Server
PORT=3000

# JWT Secret (CAMBIAR EN PRODUCCIÓN)
JWT_SECRET=tu_secreto_jwt_aqui_cambiar_en_produccion

# Encryption Key (32 caracteres)
ENCRYPTION_KEY=clave_de_encriptacion_32_chars

# Twilio WhatsApp API
TWILIO_ACCOUNT_SID=tu_twilio_account_sid
TWILIO_AUTH_TOKEN=tu_twilio_auth_token
TWILIO_WHATSAPP_NUMBER=whatsapp:+14155238886
```

#### 🔑 Obtener Credenciales de Twilio

1. Crear cuenta en [Twilio](https://www.twilio.com/try-twilio)
2. Ir a [Console](https://www.twilio.com/console)
3. Copiar `Account SID` y `Auth Token`
4. Activar [WhatsApp Sandbox](https://www.twilio.com/console/sms/whatsapp/sandbox)
5. Seguir instrucciones para conectar tu WhatsApp

**Alternativa: Meta WhatsApp Cloud API**

1. Crear app en [Meta for Developers](https://developers.facebook.com/)
2. Agregar el producto WhatsApp
3. Obtener `Access Token` y `Phone Number ID`
4. Configurar en `.env`:
```env
META_WHATSAPP_TOKEN=tu_token_aqui
META_PHONE_NUMBER_ID=tu_phone_id_aqui
```

### Paso 4: Iniciar Backend

```bash
cd backend
npm start
```

Deberías ver:
```
╔════════════════════════════════════════╗
║   DEAD MAN'S SWITCH - Backend API     ║
╚════════════════════════════════════════╝
✓ Server running on port 3000
✓ Environment: development
✓ Database: Connected
✓ WhatsApp: Twilio
```

### Paso 5: Abrir Frontend

Opción 1 - **Live Server** (recomendado):
1. Instalar extensión "Live Server" en VS Code
2. Abrir `frontend/index.html`
3. Click derecho → "Open with Live Server"

Opción 2 - **Direct File**:
1. Navegar a `frontend/index.html`
2. Abrir directamente en el navegador
3. Nota: CORS puede causar problemas con fetch

Opción 3 - **Node.js HTTP Server**:
```bash
cd frontend
npx http-server -p 8080
```
Luego abrir `http://localhost:8080`

## 📖 Uso de la Aplicación

### 1️⃣ Registro/Login

1. Abrir la aplicación
2. Crear cuenta con email y contraseña (mín. 6 caracteres)
3. Iniciar sesión

### 2️⃣ Configurar Mensaje

1. Ir a la pestaña **"Mensaje"**
2. Escribir el mensaje que se enviará cuando expire el timer
3. Click en **"💾 Guardar Mensaje"**
4. Verificar vista previa

### 3️⃣ Agregar Contactos

1. Ir a la pestaña **"Contactos"**
2. Llenar formulario:
   - Nombre completo
   - Número WhatsApp (formato: `+521234567890`)
   - Checkbox: ¿Recibe mensajes?
3. Click en **"➕ Agregar Contacto"**

**Formato de Número WhatsApp:**
- Incluir código de país con `+`
- Ejemplo México: `+521234567890`
- Ejemplo USA: `+11234567890`
- Ejemplo España: `+341234567890`

### 4️⃣ Probar el Sistema (Recomendado)

1. Ir a la pestaña **"Modo Test"**
2. Seleccionar un contacto de prueba
3. Click en **"🧪 Iniciar Prueba"**
4. El sistema enviará un mensaje de prueba en 10 segundos
5. Verificar que llegó correctamente

### 5️⃣ Activar Switch

1. Volver al **Dashboard**
2. Seleccionar duración (1h, 3h, 6h, 12h, 24h, 48h, 72h)
3. Click en **"🟢 Activar Switch"**
4. El cronómetro comenzará la cuenta regresiva

### 6️⃣ Reiniciar Timer

**IMPORTANTE:** Debes reiniciar el timer antes de que expire.

- Click en **"🔄 Reiniciar"** para extender el tiempo
- Esto reinicia el contador con la duración seleccionada

### 7️⃣ ¿Qué Pasa si Expira?

Si el timer llega a **00:00:00**:
1. El sistema envía automáticamente el mensaje
2. Se envía a TODOS los contactos activos vía WhatsApp
3. El switch se desactiva automáticamente
4. Se registra en los logs

## 🛠 Estructura del Proyecto

```
deadmans-switch/
├── frontend/
│   ├── index.html          # Página principal
│   ├── styles.css          # Estilos Death Note
│   └── app.js              # Lógica de la aplicación
│
├── backend/
│   ├── server.js           # Servidor Express
│   ├── database.js         # SQLite setup
│   ├── whatsapp.js         # Servicio WhatsApp
│   ├── .env                # Variables de entorno
│   ├── package.json        # Dependencias
│   └── database.sqlite     # Base de datos (auto-generada)
│
└── README.md               # Esta documentación
```

## 🗃 Base de Datos

SQLite con las siguientes tablas:

- **users** - Usuarios registrados
- **messages** - Mensajes encriptados
- **contacts** - Contactos WhatsApp
- **switch_status** - Estado del switch
- **logs** - Auditoría de acciones
- **test_results** - Resultados de pruebas

## 🔐 Seguridad

### Implementaciones de Seguridad

✅ **Autenticación:**
- JWT tokens con expiración de 7 días
- Contraseñas hasheadas con bcrypt (10 rounds)

✅ **Encriptación:**
- Mensajes encriptados con AES-256
- Clave de encriptación en variables de entorno

✅ **Logging:**
- Auditoría completa de acciones
- Timestamps y direcciones IP
- Historial de pruebas

✅ **Validaciones:**
- Formato de email
- Formato de número WhatsApp
- Longitud de contraseña
- Campos requeridos

### Recomendaciones para Producción

🔒 **Antes de pasar a producción:**

1. Cambiar `JWT_SECRET` en `.env`
2. Cambiar `ENCRYPTION_KEY` (32 caracteres random)
3. Usar HTTPS (certificado SSL)
4. Configurar CORS apropiadamente
5. Usar base de datos PostgreSQL
6. Implementar rate limiting
7. Agregar 2FA (autenticación de dos factores)
8. Backup automático de base de datos

## 📱 API de WhatsApp

### Opción 1: Twilio (Más Fácil)

**Ventajas:**
- Sandbox gratuito para pruebas
- Fácil de configurar
- Documentación excelente

**Limitaciones:**
- Sandbox requiere opt-in de usuarios
- Plan de pago para producción

**Setup:**
1. [Twilio Console](https://www.twilio.com/console)
2. Activar WhatsApp Sandbox
3. Enviar mensaje de activación desde tu WhatsApp
4. Usar número sandbox para pruebas

### Opción 2: Meta WhatsApp Cloud API

**Ventajas:**
- Gratis hasta 1000 conversaciones/mes
- Sin sandbox, números propios
- Más profesional

**Limitaciones:**
- Configuración más compleja
- Requiere verificación de negocio

**Setup:**
1. [Meta for Developers](https://developers.facebook.com/)
2. Crear app → Agregar WhatsApp
3. Configurar número de teléfono
4. Obtener token permanente

### Modo Demo (Sin API)

Si NO configuras Twilio ni Meta, la app usará **modo demo**:
- No envía mensajes reales
- Solo muestra en consola del servidor
- Útil para desarrollo y pruebas locales

## 🧪 Testing

### Test Manual

1. Usar **Modo Test** en la aplicación
2. Verificar logs del servidor
3. Confirmar recepción en WhatsApp

### Test de Timer

1. Activar switch con duración corta (1h)
2. No reiniciar
3. Verificar que envíe después de 1 hora

### Logs del Backend

El servidor muestra logs en tiempo real:
```bash
2025-11-25T22:35:00.000Z - POST /api/auth/login
✓ Switch activated for user 1
📤 Sending WhatsApp to +521234567890 via twilio
✓ Messages sent for user 1
```

## 🐛 Solución de Problemas

### Error: "Cannot connect to backend"

**Solución:**
1. Verificar que el backend esté corriendo (`npm start` en `/backend`)
2. Verificar puerto 3000 disponible
3. Revisar firewall/antivirus

### Error: "Twilio credentials not configured"

**Solución:**
1. Verificar archivo `.env` en `/backend`
2. Asegurar que `TWILIO_ACCOUNT_SID` y `TWILIO_AUTH_TOKEN` estén configurados
3. Reiniciar servidor backend

### WhatsApp no recibe mensajes

**Checklist:**
✅ Número en formato correcto (+código país + número)
✅ Sandbox activado en Twilio
✅ Mensaje de opt-in enviado desde WhatsApp
✅ Contacto marcado como "activo"
✅ Mensaje configurado y guardado

### Base de datos corrupta

**Solución:**
```bash
cd backend
rm database.sqlite
npm start  # Se regenerará automáticamente
```

## 🎨 Personalización

### Cambiar Colores

Editar `frontend/styles.css`:

```css
:root {
    --noir-black: #0a0a0a;      /* Fondo principal */
    --paper-white: #f5f5dc;      /* Texto principal */
    --danger-red: #8b0000;       /* Botones de peligro */
    --active-green: #2d5016;     /* Estado activo */
}
```

### Cambiar Fuentes

En `frontend/index.html`:

```html
<link href="https://fonts.googleapis.com/css2?family=TU-FUENTE&display=swap" rel="stylesheet">
```

### Agregar Logo

En `frontend/index.html`, agregar antes del título:

```html
<img src="logo.png" alt="Logo" class="w-16 h-16 mx-auto mb-4">
```

## 📊 Roadmap Futuro

- [ ] App móvil (React Native)
- [ ] Notificaciones push
- [ ] Ubicación GPS opcional
- [ ] Múltiples mensajes por contacto
- [ ] Programación de mensajes
- [ ] Dashboard de estadísticas
- [ ] Exportar/importar contactos
- [ ] Tema claro/oscuro toggle

## 📄 Licencia

MIT License - Uso libre para proyectos personales y comerciales.

## 🆘 Soporte

Para reportar bugs o solicitar features:
1. Revisar esta documentación
2. Verificar logs del servidor
3. Consultar sección de troubleshooting

## 🙏 Créditos

- Diseño inspirado en **Death Note**
- Tipografía: **Cormorant Garamond** & **IBM Plex Mono**
- Framework: **Express.js** + **Vanilla JavaScript**
- WhatsApp: **Twilio API** / **Meta Cloud API**

---

**⚠️ IMPORTANTE:** Este sistema es para uso responsable. Asegúrate de tener el consentimiento de los contactos antes de agregar sus números.

---

Creado con 🖤 | Dead Man's Switch © 2025
