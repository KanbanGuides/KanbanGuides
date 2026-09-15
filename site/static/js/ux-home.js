(() => {
  'use strict';
  for (const button of document.querySelectorAll('[data-dialog]')) {
    button.addEventListener('click', () => {
      const dialog = document.getElementById(button.dataset.dialog);
      dialog.showModal();
      if (dialog.id === 'kg-search') document.getElementById('kg-query').focus();
    });
  }
  const query = document.getElementById('kg-query');
  const results = document.getElementById('kg-results');
  const status = document.getElementById('kg-search-status');
  const index = JSON.parse(document.getElementById('kg-search-index').textContent);
  const messages = JSON.parse(document.getElementById('kg-search-messages').textContent);
  const locale = document.documentElement.lang;
  function search() {
    const terms = query.value.toLocaleLowerCase(locale).trim().split(/\s+/).filter(Boolean);
    const matches = terms.length ? index.filter(item => terms.every(term => (item.title + ' ' + item.text).toLocaleLowerCase(locale).includes(term))) : [];
    results.replaceChildren();
    status.textContent = terms.length ? (matches.length ? messages.results.replace('{count}', new Intl.NumberFormat(locale).format(matches.length)) : messages.empty) : messages.initial;
    for (const item of matches) {
      const row = document.createElement('li');
      const link = document.createElement('a');
      link.href = item.url;
      link.textContent = item.title;
      const guide = document.createElement('small');
      guide.textContent = item.guide;
      row.append(link, guide);
      results.append(row);
    }
  }
  query.addEventListener('input', search);
  search();
})();
