document.addEventListener('DOMContentLoaded', function() {
    const burgerBtn = document.getElementById('burgerBtn');
    const menu = document.getElementById('menu');
    const overlay = document.getElementById('overlay');
    const menuLinks = document.querySelectorAll('#menu a');
    
    // Открытие/закрытие меню
    burgerBtn.addEventListener('click', function() {
        menu.classList.toggle('active');
        burgerBtn.classList.toggle('active');
        overlay.classList.toggle('active');
    });
    
    // Закрытие меню при клике на оверлей
    overlay.addEventListener('click', function() {
        menu.classList.remove('active');
        burgerBtn.classList.remove('active');
        overlay.classList.remove('active');
    });
    
    // Закрытие меню при клике на пункт меню
    menuLinks.forEach(function(link) {
        link.addEventListener('click', function() {
            menu.classList.remove('active');
            burgerBtn.classList.remove('active');
            overlay.classList.remove('active');
        });
    });
    
    // Закрытие меню при нажатии Esc
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape') {
            menu.classList.remove('active');
            burgerBtn.classList.remove('active');
            overlay.classList.remove('active');
        }
    });
  });