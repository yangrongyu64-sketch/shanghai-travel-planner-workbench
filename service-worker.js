const CACHE_NAME = 'shanghai-travel-planner-workbench-v1';
const APP_SHELL_ASSETS = [
  './index.html',
  './workbench.html',
  './workbench-demo.zip',
  './miniprogram-handoff.zip',
  './manifest.webmanifest',
  './app-icon.svg',
  './README.md',
  './DEPLOYMENT.md',
  './deployment-manifest.json',
  './LIVE_DEPLOYMENT.md',
  './live-deployment.json'
];

self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => cache.addAll(APP_SHELL_ASSETS))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys()
      .then(keys => Promise.all(keys.filter(key => key !== CACHE_NAME).map(key => caches.delete(key))))
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', event => {
  if (event.request.method !== 'GET') return;
  event.respondWith(
    caches.match(event.request).then(cached => {
      if (cached) return cached;
      return fetch(event.request).catch(() => {
        if (event.request.mode === 'navigate') return caches.match('./index.html');
        return Response.error();
      });
    })
  );
});
