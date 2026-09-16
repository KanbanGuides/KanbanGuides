(() => {
  'use strict';
  const menuToggle = document.querySelector('.kg-menu-toggle');
  const navigation = document.getElementById('kg-navigation');
  const mobile = window.matchMedia('(max-width: 650px)');
  function closeMenu(restoreFocus = false) {
    if (restoreFocus) menuToggle.focus();
    menuToggle.setAttribute('aria-expanded', 'false');
    navigation.hidden = mobile.matches;
    navigation.querySelector('.kg-languages').open = false;
  }
  function syncMenu() {
    const focusInMenu = navigation.contains(document.activeElement);
    const focusOnToggle = document.activeElement === menuToggle;
    menuToggle.hidden = !mobile.matches;
    closeMenu(mobile.matches && focusInMenu);
    if (!mobile.matches && focusOnToggle) navigation.querySelector('a').focus();
  }
  menuToggle.addEventListener('click', () => {
    const expanded = menuToggle.getAttribute('aria-expanded') === 'true';
    if (expanded) closeMenu();
    else {
      navigation.hidden = false;
      menuToggle.setAttribute('aria-expanded', 'true');
    }
  });
  navigation.addEventListener('click', event => {
    if (mobile.matches && event.target.closest('a')) closeMenu(true);
  });
  document.querySelector('.kg-header').addEventListener('keydown', event => {
    if (event.key === 'Escape' && mobile.matches && !navigation.hidden) {
      event.preventDefault();
      closeMenu(true);
    }
  });
  mobile.addEventListener('change', syncMenu);
  syncMenu();
  for (const button of document.querySelectorAll('[data-dialog]')) {
    button.addEventListener('click', () => {
      const dialog = document.getElementById(button.dataset.dialog);
      if (mobile.matches && navigation.contains(button)) closeMenu(true);
      dialog.showModal();
      if (navigation.contains(button)) {
        // Resizing can hide the control that opened this dialog.
        dialog.addEventListener('close', () => {
          if (mobile.matches) menuToggle.focus();
          else button.focus();
        }, { once: true });
      }
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
