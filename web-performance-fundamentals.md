# Import Web Performance with Todd Gardner

[Frontend Masters](https://frontendmasters.com/courses/web-perf) - [Todd Gardner](https://twitter.com/ToddHgardner)

## Introduction

More search ranking & more people visiting your site.

## Why is Performance Important

- Google will rank you on your performance
- Angry and furstrated users don't stick around long

## Psychology of waiting

- People want to start early
- People will wait for value

## Measuring Web Performance

- The new way: **Web Vitals**
  - FCP - First Contentful Paint ( < 2.5s ) - The time until the user sees an indication that the page is loading -> **Response Quick**
  - LCP - Lagrest Contentful Paint - The time util the user sees most of the page and believes it is (almost) ready -> **Get to the point**
  - CLS - Cumulative Layout Shift ( < 0.1 ) - The movement distance and impact of page elements during **entire lifetime** of the document the user sees -> **Don't move stuff around**
  - FID - First Input Delay ( < 100ms ) - The browser time delay between the user's first click and execution of application code -> **Don't load too much**

Use [Lighthouse](https://developers.google.com/web/tools/lighthouse) from running performance report

## Where Do We Measure From?

[Chrome UX Report Compare Tool](https://crux-compare.netlify.app/)

Field data is different from Lab data. What you see on your machine will be different from other people on the internet.

## Improving Web Performance

Performance is where is the money comes from. For short time durations, the difference must be **at least 20%** for most people to care.

Programmatically retrieves performance data with [Performance API](https://developer.mozilla.org/en-US/docs/Web/API/Performance)

```bash
// Performance API

performance.getEntries()
```

## [Capture Performance Data](https://frontendmasters.com/courses/web-perf/performance-api-practice/)

```javascript
// Wait for page ready and start observe metric
//
// first-contentful-paint (paint)
// largest-contentful-paint
// layout-shift
// first-input

data = {
  fcp: 0,
};

var fcpObserver = new PerformanceObserver(function handleFCP(entryList) {
  var entries = entryList.getEntries() || [];
  entries.forEach(function (entry) {
    if (entry.name === 'first-contentful-paint') {
      data.fcp = entry.startTime;
      console.log('Recorded FCP Performance: ' + data.fcp);
    }
  });
}).observe({ type: 'paint', buffered: true });
```

## How to Improve Performance

Do fewer things
