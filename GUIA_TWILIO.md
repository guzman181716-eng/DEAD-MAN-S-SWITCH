# 📱 GUÍA COMPLETA: CONFIGURAR TWILIO PARA WHATSAPP Y SMS

## 🎯 PROBLEMA ACTUAL
Los mensajes no llegan a los contactos porque Twilio no está configurado correctamente.

---

## ✅ SOLUCIÓN PASO A PASO

### PASO 1: Crear Cuenta en Twilio

1. **Ir a**: https://www.twilio.com/try-twilio
2. **Registrarse** con tu email
3. **Verificar** tu número de teléfono
4. **Obtener $15 USD** de crédito gratis para pruebas

---

### PASO 2: Obtener las Credenciales

1. **Ir al Dashboard**: https://console.twilio.com/
2. **Copiar estos datos**:
   - **Account SID** (empieza con "AC...")
   - **Auth Token** (click en "Show" para verlo)

📸 Se ven así:
```
Account SID: AC1234567890abcdef1234567890abcd
Auth Token: 1234567890abcdef1234567890abcdef
```

---

### PASO 3: Configurar WhatsApp Sandbox (GRATIS)

#### A. Activar Sandbox

1. **Ir a**: https://console.twilio.com/us1/develop/sms/try-it-out/whatsapp-learn
2. O navegar a: **Messaging** → **Try it out** → **Send a WhatsApp message**

#### B. Conectar tu WhatsApp

1. **Escanear el código QR** O enviar mensaje a Twilio
2. **Enviar desde tu WhatsApp** al número que te indican (ejemplo: +1 415 523 8886)
3. **Mensaje exacto**: `join [código-único]`
   - Ejemplo: `join happy-tiger`
4. **Recibirás confirmación** de Twilio

#### C. Copiar el número de Sandbox

- El número será algo como: `+14155238886`
- Lo usarás como: `whatsapp:+14155238886`

---

### PASO 4: Configurar SMS (Opcional - REQUIERE NÚMERO)

#### A. Para SMS Necesitas un Número de Twilio

**Opción 1: Usar Crédito Gratis**
1. Ir a: **Phone Numbers** → **Buy a number**
2. Seleccionar país (ej: USA)
3. Comprar número (~$1 USD/mes del crédito gratis)

**Opción 2: Usar Solo WhatsApp**
- Puedes usar solo WhatsApp sin comprar número
- Es GRATIS con el sandbox

#### B. Si Compras Número para SMS

1. **Copiar el número** (ejemplo: +12345678900)
2. Configurar en `.env` como: `TWILIO_PHONE_NUMBER=+12345678900`

---

### PASO 5: Editar el Archivo .env

1. **Abrir**: `backend/.env`
2. **Si no existe**, copiar de `.env.example`:
   ```bash
   copy backend\.env.example backend\.env
   ```

3. **Editar con tus credenciales REALES**:

```env
# ============================================
# CONFIGURACIÓN TWILIO - COMPLETAR CON TUS DATOS
# ============================================

# ✅ PASO 2: Credenciales del Dashboard
TWILIO_ACCOUNT_SID=AC1234567890...    # TU Account SID REAL
TWILIO_AUTH_TOKEN=abcdef123456...     # TU Auth Token REAL

# ✅ PASO 3: Número de WhatsApp Sandbox
TWILIO_WHATSAPP_NUMBER=whatsapp:+14155238886   # Número del Sandbox

# ✅ PASO 4 (Opcional): Número para SMS
# Solo si compraste un número de Twilio
TWILIO_PHONE_NUMBER=+12345678900    # Tu número de Twilio
# O usar el mismo para SMS:
TWILIO_SMS_NUMBER=+12345678900

# Otros
JWT_SECRET=deadmans_switch_secret_key_change_in_production_2025
ENCRYPTION_KEY=my32characterencryptionkeyhere
PORT=3000
```

---

### PASO 6: Reiniciar el Servidor

```bash
# Detener servidor actual (Ctrl + C)
# Luego reiniciar:
cd backend
node server.js
```

**Deberías ver**:
```
✓ Twilio client initialized (WhatsApp & SMS)
✓ Server running on port 3000
```

**NO deberías ver**:
```
✗ Error initializing Twilio: accountSid must start with AC
```

---

## 🧪 PASO 7: PROBAR QUE FUNCIONA

### A. Probar WhatsApp Sandbox

1. **En la app web**, ir a la pestaña **"Contactos"**
2. **Agregar un contacto de prueba**:
   - Nombre: "Test WhatsApp"
   - Número: `+521234567890` (TU número con código de país)
   - Tipo: WhatsApp
   - ✅ Activar checkbox

3. **IMPORTANTE**: Este número DEBE estar conectado al Sandbox
   - Enviar `join [código]` desde este WhatsApp primero

4. **Ir a "Modo Test"**
5. **Seleccionar** el contacto de prueba
6. **Iniciar prueba**
7. **Deberías recibir** el mensaje en WhatsApp

### B. Probar SMS (Si configuraste número)

1. **Agregar contacto tipo SMS**:
   - Nombre: "Test SMS"
   - Número: `+521234567890` (número que recibe SMS)
   - Tipo: SMS
   - ✅ Activar

2. **Probar en modo test**

---

## ❌ SOLUCIÓN DE PROBLEMAS

### Error: "accountSid must start with AC"

**Problema**: Account SID incorrecto
**Solución**:
- Copiar el Account SID EXACTO desde: https://console.twilio.com/
- Debe empezar con `AC`
- Ejemplo: `AC1234567890abcdef1234567890abcd`

### Error: "Authentication Error"

**Problema**: Auth Token incorrecto
**Solución**:
- Ir a: https://console.twilio.com/
- Click en "Show" en Auth Token
- Copiar el valor COMPLETO

### Error: "WhatsApp sandbox not joined"

**Problema**: El receptor no está conectado al Sandbox
**Solución**:
1. Desde el WhatsApp receptor
2. Enviar mensaje al número de Twilio
3. Texto exacto: `join [tu-código]`
4. Esperar confirmación
5. Reintentar

### Los mensajes no llegan

**Checklist**:
- [ ] Account SID empieza con "AC"
- [ ] Auth Token es correcto
- [ ] Número WhatsApp tiene formato: `whatsapp:+14155238886`
- [ ] El receptor envió "join" al Sandbox
- [ ] El número del receptor tiene código de país (+52, +1, etc.)
- [ ] El servidor se reinició después de editar .env
- [ ] Revisaste los logs del servidor

---

## 📊 LÍMITES DE LA VERSIÓN GRATUITA

### WhatsApp Sandbox (GRATIS):
- ✅ Envíos ilimitados
- ✅ Sin costo
- ❌ Los receptores deben hacer "join" primero
- ❌ Mensaje expira después de 24h sin uso
- ❌ Solo para pruebas

### SMS con $15 Crédito:
- ✅ ~200 mensajes (depende del país)
- ✅ Funciona inmediatamente
- ❌ Cuesta ~$0.0075 por SMS
- ❌ Número cuesta ~$1/mes

---

## 🚀 PASAR A PRODUCCIÓN (WhatsApp Business API)

Para enviar WhatsApp sin el Sandbox:

1. **Ir a**: https://www.twilio.com/console/sms/whatsapp/senders
2. **Solicitar** WhatsApp Business API
3. **Completar** información de la empresa
4. **Verificación** de Meta/Facebook (1-2 semanas)
5. **Configurar** número propio
6. **Actualizar** `.env` con el nuevo número

**Costo**:
- ~$0.005 por mensaje
- Sin necesidad de "join"
- Mensajes oficiales de negocio

---

## 📞 AYUDA ADICIONAL

**Si aún no funciona**:

1. **Ver logs del servidor** (consola donde corre `node server.js`)
2. **Verificar formato de números**:
   - WhatsApp: `whatsapp:+14155238886`
   - SMS: `+12345678900`
   - Contacto: `+521234567890` (con código de país)

3. **Probar en Demo Mode primero**:
   - No configurar Twilio en `.env`
   - Ver que los logs muestran "DEMO MODE"
   - Confirmar que la lógica funciona

4. **Revisar crédito de Twilio**:
   - Ir a: https://console.twilio.com/
   - Ver saldo disponible
   
---

## ✅ CONFIGURACIÓN MÍNIMA FUNCIONAL

```env
# Archivo: backend/.env
TWILIO_ACCOUNT_SID=ACxxxxxxxxxxxxxxxxxx
TWILIO_AUTH_TOKEN=xxxxxxxxxxxxxxxx  
TWILIO_WHATSAPP_NUMBER=whatsapp:+14155238886
JWT_SECRET=cualquier_secreto_aqui
ENCRYPTION_KEY=exactamente_32_caracteres_aqui
```

**Reiniciar backend** y deberías ver:
```
✓ Twilio client initialized (WhatsApp & SMS)
✓ Server running on port 3000
✓ WhatsApp: Twilio
```

---

**¿Sigues teniendo problemas?** 
Comparte el error exacto que ves en la consola del servidor y te ayudo específicamente.

---

Creado para Dead Man's Switch | © 2025
