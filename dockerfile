version: '3'
services:
  web:
    build: .
    ports:
    - "5000:5000"
    volumes:
    - .:/code
    - logvolume01:/var/logs
    links:
    - redis
  redis:
    image: redis
volumes:
  logvolume01: {}
  
