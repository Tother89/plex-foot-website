# Plex Request Manager

The purpose of this repo is to allow users to search for new movies and TV shows that can then be added to a Plex server. The main method of achieving this will rely on [TRaSH-Guides](https://trash-guides.info/) to use Radarr & Sonarr with download clients (NABGet, Deluge, qBitttorrent).

## System Design

### Backend

The design is meant as a learning tool to familiarize myself with Ruby on Rails architecture and GraphQL. Either a MySQL or PostgreSQL DB. Background jobs with Sidekiq and Redis.

### Frontend 
On a high level the app will likely be built using either React or Angular depending on time since. I might try React-Native for a basic app. 

Eventually this project could move over to using Rails views as the front-end.

### 3rd Party Integrations
- TDMB API
- Plex API
- Radarr and Sonarr

### Auth
There will be admin and user roles. JWT tokens to ping the server. 

There will be some basic features including:
1. Media searches
    - TMDB API search
    - Show metadata
2. Plex library check
3. Media requests
    - Authentication required
    - Request status (accepted, rejected, not found, progress, failed)
4. Approvals - either auto or admin
5. Acquistion 
    - Approved requests go to Radarr or Sonarr
    - Media management
    - Failed requests queued (manual admin work)
6. Status Sync
    - Poll Radarr/Sonarr
    - Happy path: Requested -> Approved -> Downloading -> Available
     

### Roadmap

Phase 1 
- Basic File retrieval 
- Authentication
- Status updates
- Integration with all external APIs

Phase 2 
- Edge case handling
- Rate limiting
- Basic React frontend

Phase 3
- Mobile application
- React views
- Failure recovery
- Audit logs


##License
[MIT](https://choosealicense.com/licenses/mit/)