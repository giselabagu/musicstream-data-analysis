# 🎧 MusicStream – Plataforma de Análisis Musical

**MusicStream** es una herramienta analítica de vanguardia diseñada para superar un desafío clave de la industria musical: la fragmentación de los datos. La información sobre engagement de artistas y canciones suele estar dispersa en múltiples plataformas (servicios de streaming, redes sociales, tiendas de música y catálogos de metadata), lo que dificulta obtener una visión holística y accionable.

MusicStream consolida estos datos en una **base de datos centralizada**, permitiendo generar insights estratégicos sobre tendencias musicales, popularidad y comportamiento de oyentes en tiempo real.


---

## 🏆 Por qué es útil

- Integra datos de **Spotify** y **Last.fm** en una única fuente confiable.  
- Usa **SQL** para limpiar, normalizar y almacenar los datos.  
- Permite generar **Insights Cruzados** que revelan correlaciones y tendencias ocultas.  
- Ejemplos de análisis posibles:
  - Identificar los artistas más escuchados y valorados en diferentes periodos.
  - Detectar cómo un género destaca sobre otro en fechas concretas.
  - Generar playlists inteligentes basadas en métricas reales.

> **Valor agregado:** Transforma datos crudos en inteligencia de negocio estratégica, impulsando decisiones más informadas en promoción, contratación y distribución musical.

---

## 📊 Fuentes de datos

| Fuente | Tipo de dato | Información clave |
|--------|-------------|-----------------|
| Spotify API | Catálogo y métricas oficiales | Canciones, artistas, álbumes, popularidad |
| Last.fm API | Scrobbles y tendencias | Canciones más escuchadas, etiquetas de género, oyentes, artistas similares |

> **Nota:** Las credenciales de API **no se incluyen en el repo**. Se usan variables de entorno para seguridad.

---

## 🛠 Tecnologías usadas

- **Python**: Pandas, Spotipy, Requests, Jupyter Notebook  
- **SQL/MySQL**: Base de datos relacional para almacenamiento y consultas  
- **Herramientas adicionales**: dotenv para manejar variables de entorno, CSV para datos intermedios  

---

## 📂 Estructura del proyecto

```text
musicstream-data-analysis/
│
├── data/   # CSV generados a partir de la extracción de APIs
│   └── Artistas_LastFM.csv
│   └── Canciones_Spotify.csv
│
├── notebooks/         # Notebooks de análisis y extracción
│   ├── MusicStream_LastFM_Extraccion.ipynb
│   ├── MusicStream_Spotify_Extraccion.ipynb
│   ├── Insert_to_SQL.ipynb     # Inserción automática de los datos en la bbdd SQL
│   └── Dificultades_Soluciones.ipynb   # Análisis final
│
├── sql/                          # Scripts SQL
│   ├── CREATE_bbdd_musicstream.sql
│   └── SQL_Queries.sql
│
├── docs/                         # Presentación final
│   └── MusicStream - Pitch Deck Presentation.pdf
│
│
└── README.md                     # Este archivo
```
---
## 🚀 Pipeline del proyecto
1. **Extracción de datos**
    - Spotify: canciones, artistas, álbumes, métricas de popularidad
    - Last.fm: scrobbles, géneros, biografía de artistas
2. **Limpieza y transformación**
    -  Eliminación de duplicados y manejo de valores nulos
    - Normalización de fechas y datos
3. **Almacenamiento**
    - Base de datos MySQL con tablas para artistas, canciones y métricas
4. **Análisis y consultas**
    - Top artistas y canciones por género
    - Tendencias musicales 2015–2019
    - Recomendaciones basadas en popularidad y géneros emergentes
---
## 📈 Resultados principales
- **Género más reproducido (2015–2019)**: Electronic
- **Top artistas por género**:
    - Electronic: Drake, The Weeknd
    - Afro: Beyoncé, Wizkid
    - Soundtrack: Hans Zimmer, Toby Fox
    - K-pop: Suzy, Jung Chang Yong
- **Top canciones por género**:
    - Electronic: “Waiting for Love” – Avicii
    - Afro: “Love Nwantiti” – CKay
    - Soundtrack: “Rewrite the Stars”
    - K-pop: “Be My Spring”
---
## 🔐 Seguridad de credenciales
1. Crear un archivo .env (no subirlo a GitHub):
```text
SPOTIFY_CLIENT_ID=<tu_client_id>
SPOTIFY_CLIENT_SECRET=<tu_client_secret>
LASTFM_API_KEY=<tu_api_key>
LASTFM_SHARED_SECRET=<tu_shared_secret>
```
2. Leerlo desde Python usando dotenv:
```text
from dotenv import load_dotenv
import os

load_dotenv()
client_id = os.getenv("SPOTIFY_CLIENT_ID")
client_secret = os.getenv("SPOTIFY_CLIENT_SECRET")
my_API_KEY = os.getenv("LASTFM_API_KEY")
SHARED_SECRET = os.getenv("LASTFM_SHARED_SECRET")
```
---
## 💻 Cómo ejecutar el proyecto
1. Clonar el repositorio:
```text
git clone https://github.com/TU_USUARIO/musicstream-data-analysis.git
cd musicstream-data-analysis
```
2. Instalar dependencias:
```text
pip install -r requirements.txt
```
3. Configurar credenciales en .env o variables de entorno.
4. Ejecutar notebooks en orden:
    - MusicStream_Spotify_Extraccion.ipynb
    - MusicStream_LastFM_Extraccion.ipynb
    - CREATE_bbdd_musicstream.sql
    - Insert_to_SQL.ipynb
    - Dificultades_Soluciones.ipynb (lectura opcional, explicación de problemas y soluciones)
---

## 👥 Actualmente mantenido por:

- [giselabagu / Gisela Barroso]
---
## 👥 Creado por:
- [giselabagu / Gisela Barroso]
- [ariana-caldeira / Ariana Caldeira]
- [cloud9international / Claudia Cervantes]
- [Maykaduran / Mayka Durán]
- [mirianika191-stack / Miriam Marcos]