# ✅ INSTALACIÓN COMPLETADA

## 🎉 Tu aplicación Dead Man's Switch está lista!

![Death Note Interface](file:///C:/Users/52753/.gemini/antigravity/brain/be43fbef-cfa6-495f-9a65-401be36fc65d/death_note_interface_1764132829096.png)

---

## 🚀 INICIO RÁPIDO (3 pasos)

### ✅ Paso 1: Iniciar Backend (Ya está corriendo!)

El backend ya está ejecutándose en: **http://localhost:3000**

Si necesitas reiniciarlo:
```bash
.\start-backend.bat
```

O manualmente:
```bash
cd backend
node server.js
```

### ✅ Paso 2: Iniciar Frontend

Ejecutar uno de estos comandos:

**Opción A - Script automático:**
```bash
.\start-frontend.bat
```

**Opción B - Manual:**
```bash
cd frontend
npx http-server -p 8080 -o
```

**Opción C - VS Code Live Server:**
1. Abrir `frontend/index.html`
2. Click derecho → "Open with Live Server"

### ✅ Paso 3: Abrir en Navegador

Una vez que el frontend esté corriendo, abrir:

**http://localhost:8080**

---

## 📱 PRIMEROS PASOS EN LA APP

### 1. Crear Cuenta
- Email: `tu@email.com`
- Contraseña: mínimo 6 caracteres

### 2. Configurar Mensaje
- Ir a pestaña "Mensaje"
- Escribir mensaje que se enviará
- Guardar

### 3. Agregar Contactos
- Ir a pestaña "Contactos"
- Formato número: `+521234567890` (con código país)
- Activar checkbox para recibir mensajes

### 4. Probar Sistema
- Ir a "Modo Test"
- Seleccionar contacto de prueba
- Iniciar test de 10 segundos
- Verificar que funciona

### 5. Activar Switch
- Volver al Dashboard
- Seleccionar duración (1h, 3h, 6h, etc.)
- Click "🟢 Activar Switch"
- IMPORTANTE: Debes reiniciar antes de que expire

---

## ⚙️ CONFIGURACIÓN DE WHATSAPP (Opcional)

Por defecto, la app funciona en **MODO DEMO** (no envía mensajes reales).

Para enviar mensajes reales vía WhatsApp:

### Opción 1: Twilio (Más fácil)

1. Crear cuenta: https://www.twilio.com/try-twilio
2. Ir a Console: https://www.twilio.com/console
3. Copiar:
   - Account SID
   - Auth Token
4. Activar WhatsApp Sandbox: https://www.twilio.com/console/sms/whatsapp/sandbox
5. Enviar mensaje de activación desde tu WhatsApp

6. Editar `backend/.env`:
```env
TWILIO_ACCOUNT_SID=tu_account_sid_aqui
TWILIO_AUTH_TOKEN=tu_auth_token_aqui
TWILIO_WHATSAPP_NUMBER=whatsapp:+14155238886
```

7. Reiniciar backend

### Opción 2: Meta WhatsApp Cloud API

1. Ir a: https://developers.facebook.com/
2. Crear app → Agregar WhatsApp Business
3. Configurar número y obtener token

4. Editar `backend/.env`:
```env
META_WHATSAPP_TOKEN=tu_token_aqui
META_PHONE_NUMBER_ID=tu_phone_id_aqui
```

---

## 🎨 CARACTERÍSTICAS

✅ **Dashboard Interactivo**
- Cronómetro en tiempo real
- Estados visuales (Activo/Desactivado/Crítico)
- Duraciones configurables (1h - 72h)

✅ **Sistema de Mensajes**
- Encriptación AES-256
- Vista previa
- Editor simple

✅ **Gestión de Contactos**
- Agregar/editar/eliminar
- Activación individual
- Validación de formato WhatsApp

✅ **Modo de Prueba**
- Test de 10 segundos
- Verifica que todo funciona
- Sin riesgo

✅ **Seguridad**
- Autenticación JWT
- Contraseñas hasheadas (bcrypt)
- Mensajes encriptados
- Logs de auditoría

---

## 🎯 ESTILO VISUAL

La interfaz está inspirada en **Death Note**:
- ⚫ Paleta noir (blanco y negro)
- 📝 Tipografía serif elegante (Cormorant Garamond)
- 🕰 Cronómetro estilo investigación
- 📜 Textura de papel vintage
- ✨ Animaciones sutiles

---

## 📂 ESTRUCTURA DEL PROYECTO

```
deadmans-switch/
├── frontend/
│   ├── index.html      # Página principal
│   ├── styles.css      # Estilos Death Note
│   └── app.js          # Lógica completa
│
├── backend/
│   ├── server.js       # API Express
│   ├── database.js     # SQLite
│   ├── whatsapp.js     # Servicio WhatsApp
│   ├── .env            # Configuración
│   └── package.json    # Dependencias
│
├── start-backend.bat   # Iniciar backend
├── start-frontend.bat  # Iniciar frontend
├── setup.bat           # Instalación
└── README.md          # Documentación completa
```

---

## 🔧 TROUBLESHOOTING

### Error: "Cannot connect to backend"
✅ Verificar que `backend/server.js` esté corriendo
✅ Puerto 3000 debe estar libre
✅ Revisar firewall

### Frontend no carga
✅ Usar http-server (no abrir archivo directo)
✅ Verificar puerto 8080 libre
✅ Borrar caché del navegador

### WhatsApp no envía mensajes
⚠️ En modo demo, solo muestra en consola del servidor
✅ Configurar credenciales de Twilio/Meta
✅ Verificar formato de número (+código país)
✅ Activar WhatsApp Sandbox

---

## 📚 DOCUMENTACIÓN COMPLETA

Ver `README.md` para:
- Explicación detallada de cada funcionalidad
- Guías de configuración paso a paso
- Mejores prácticas de seguridad
- API endpoints
- Ejemplos de uso

---

## 🆘 SOPORTE

¿Problemas? Revisa:
1. Este documento INSTALL.md
2. README.md completo
3. Logs del servidor backend
4. Consola del navegador (F12)

---

## ⚠️ IMPORTANTE

- **Modo Demo**: Por defecto NO envía mensajes reales
- **Configurar WhatsApp**: Necesario para funcionalidad completa
- **Seguridad**: Cambiar JWT_SECRET en producción
- **Privacidad**: Obtener consentimiento de contactos

---

## 🎓 STACK TECNOLÓGICO

- **Frontend**: Vanilla JavaScript + Tailwind CSS
- **Backend**: Node.js + Express
- **Base de Datos**: SQLite
- **Autenticación**: JWT
- **Encriptación**: AES-256 (CryptoJS)
- **Seguridad**: bcrypt
- **WhatsApp**: Twilio / Meta Cloud API

---

**¡Disfruta tu aplicación Dead Man's Switch!** 🖤

Creado con estética Death Note | © 2025
