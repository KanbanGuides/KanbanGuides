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
  function search() {
    const terms = query.value.toLocaleLowerCase().trim().split(/\s+/).filter(Boolean);
    const matches = terms.length ? index.filter(item => terms.every(term => (item.title + ' ' + item.text).toLocaleLowerCase().includes(term))) : [];
    results.replaceChildren();
    status.textContent = terms.length ? (matches.length ? `${matches.length} result${matches.length === 1 ? '' : 's'}.` : 'No results. Try another term, such as flow or workflow.') : 'Search the current English editions of both guides.';
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
