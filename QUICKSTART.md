# 🔒 Dead Man's Switch

Sistema de seguridad automático con estética Death Note.

## Inicio Rápido

### Backend
```bash
cd backend
npm install
npm start
```

### Frontend
Abrir `frontend/index.html` con Live Server o navegador.

## Documentación
Ver [README.md](README.md) para documentación completa.

## Configuración Mínima

1. Copiar `backend/.env` y configurar:
   - `JWT_SECRET`
   - `ENCRYPTION_KEY`
   - Credenciales de Twilio

2. Instalar dependencias del backend

3. Iniciar servidor

4. Abrir frontend

## Stack Tecnológico

- **Frontend:** Vanilla JS + Tailwind CSS
- **Backend:** Node.js + Express
- **Database:** SQLite
- **WhatsApp:** Twilio API / Meta Cloud API
- **Security:** JWT + bcrypt + AES-256

---

Para más información, consulta la [documentación completa](README.md).
