const CACHE_NAME = 'shanghai-travel-planner-workbench-v1';
const APP_SHELL_ASSETS = [
  './index.html',
  './workbench.html',
  './place_catalog.html',
  './workbench-demo.zip',
  './product-delivery.zip',
  './product-delivery/delivery-manifest.json',
  './acceptance-report.zip',
  './acceptance-report/acceptance-manifest.json',
  './miniprogram-handoff.zip',
  './platform-refresh.zip',
  './platform-refresh/intake-template.json',
  './platform-refresh/platform-refresh-manifest.json',
  './maintenance-report.zip',
  './maintenance/health-report.json',
  './maintenance/maintenance-manifest.json',
  './manifest.webmanifest',
  './app-icon.svg',
  './README.md',
  './DEPLOYMENT.md',
  './deployment-manifest.json',
  './routes/relaxed_2d1n_citywalk.html',
  './routes/first_time_3d2n_balanced.html',
  './routes/highwalk_3d2n_landmark_citywalk.html',
  './routes/deep_5d4n_culture_citywalk.html',
  './routes/local_life_7d6n_balanced.html',
  './routes/longstay_15d14n_balanced.html',
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
